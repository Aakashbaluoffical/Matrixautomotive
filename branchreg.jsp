<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DataBase.ConnectionClass" id="con"></jsp:useBean>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%
            if (request.getParameter("submit") != null) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("number");
                String address= request.getParameter("address");
                String state = request.getParameter("state");
                String city = request.getParameter("city");
                String pin = request.getParameter("pin");
                
                String username = request.getParameter("username");
                String password = request.getParameter("password");
               
                String ins="insert into tbl_login(login_username,login_password,login_role,login_status)values('"+username+"','"+password+"','branch','active')";
                boolean b=con.insert(ins);
                if(b)
                {
                    String sel="select max(login_id) as loginid from tbl_login";
                            ResultSet rs=con.select(sel);
                                if(rs.next()){
                                    String lid=rs.getString("loginid");
                                    String ins2="insert into tbl_branches(branch_name,branch_email,branch_phone,branch_address,branch_state,branch_city,branch_pin,login_id,branch_status)values('"+name+"','"+email+"','"+phone+"','"+address+"','"+state+"','"+city+"','"+pin+"','"+lid+"','pending')";
                                    boolean b2=con.insert(ins2);
                                    System.out.println(ins2);
                                    if (b2)
                                    {
                                    %>
                                    <script>alert("insert sucessfully");</script>
                                    <% response.sendRedirect("login.jsp");
                                       } else{
                                    %><script>alert("not inserted");</script>
                                        <%
                                            
                                           }
                                }
                }

            }
        %>
        <div class="main">

            <section class="signup">
                <!-- <img src="images/27981.jpg" alt=""> -->
                <div class="container">
                    <div class="signup-content">
                        <form method="POST" id="signup-form" class="signup-form">
                            <h2 class="form-title">Create account<br><label for="agree-term" class="label-agree-term text-"><span><span></span></span> start a new branch</label> </h2>
                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="name" placeholder="Branch Name"required=""/>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input" name="email" id="email" placeholder="Branch Email"required=""/>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-input" name="number" id="number" placeholder="Branch number"required=""/>
                            </div>
                             <div class="form-group">
                                <input type="text" class="form-input" name="address" id="address" placeholder="Address"required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="state" id="address" placeholder="state"required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="city" id="address" placeholder="city"required=""/>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-input" name="pin" id="number" placeholder="Pincode" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="username" id="username" placeholder="Username" required=""/>

                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="password" id="password" placeholder="Password"  required=""/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required="" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>
                            </div>
                        </form>
                        <p class="loginhere">
                            Have already an account ? <a href="login.jsp" class="loginhere-link">Login here</a>
                        </p>
                    </div>
                </div>
            </section>

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>