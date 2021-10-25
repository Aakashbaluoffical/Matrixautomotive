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
                String number = request.getParameter("number");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if(email.equals(request.getParameter("email"))){
                
                String ins="insert into tbl_login(login_username,login_password,login_role,login_status)values('"+username+"','"+password+"','user','active')";
                boolean b=con.insert(ins);
                if(b)
                {
                    String sel="select max(login_id) as loginid from tbl_login";
                            ResultSet rs=con.select(sel);
                                if(rs.next()){
                                    String lid=rs.getString("loginid");
                                    String ins2="insert into tbl_user(user_name,user_email,login_id,number)values('"+name+"','"+email+"','"+lid+"','"+number+"')";
                                    boolean b2=con.insert(ins2);
                                    if (b2)
                                    {
                                    %>
                                    <script>alert("insert sucessfully");</script>
                                    <%
                                       }} else{
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
                            <h2 class="form-title">Create account</h2>
                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="name" placeholder="Your Name" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input" name="email" id="email" placeholder="Your Email" required=""/>
                            </div>
                             <div class="form-group">
                                <input type="text" class="form-input" name="number" id="number"   placeholder="Your mobile number" required pattern="[789][0-9]{9}" maxlength="10" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="username" id="username" placeholder="Username" required=""/>

                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="password" id="password" placeholder="Password" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required=""/>
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