<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DataBase.ConnectionClass" id="con"></jsp:useBean>
<%
    session.setAttribute("login_id", null);

    if (request.getParameter("submit") != null) {
        String un = request.getParameter("name");
        String ps = request.getParameter("password");
        String sel = "select * from tbl_login where login_username='" + un + "' and login_password='" + ps + "'";
        ResultSet rs = con.select(sel);
        if (rs.next()) {
            String role = rs.getString("login_role");
            String login_id = rs.getString("login_id");
            System.out.println("role=" + role);
            session.setAttribute("role", role);
            session.setAttribute("login_id", login_id);
            if (role.equals("admin")) {
                String selU = "select * from tbl_admin where login_id='" + login_id + "'";
                ResultSet rsU = con.select(selU);
                if (rsU.next()) {
                    session.setAttribute("admin_id", rsU.getString("login_id"));
                    response.sendRedirect("dash/admin/addcars.jsp");
                } else {
%>
<script>alert('invalid1');</script>
<%
    }
} else if (role.equals("user")) {
    String selU = "select * from tbl_user where login_id='" + rs.getString("login_id") + "'";
    System.out.println(selU);
    ResultSet rsU = con.select(selU);
    if (rsU.next()) {
        session.setAttribute("user_id", rsU.getString("user_id"));
        response.sendRedirect("dash/user/index.jsp");
    } else {
%>
<script>alert('Incorrect Password');</script>
<%
    }
} else if (role.equals("branch")) {
    String selb = "select * from tbl_branches where login_id='" + rs.getString("login_id") + "' and branch_status='active'";
    System.out.println(selb);
    ResultSet rsU = con.select(selb);
    if (rsU.next()) {
        session.setAttribute("branch_id", rsU.getString("branch_id"));
        response.sendRedirect("dash/showroom/cars.jsp");
    } else {
%>
<script>alert('Admin not accepted');</script>
<%
    }
} else {
%>
<script>alert('invalid4');</script>
<%
    }
} else {
%>
<script>alert('Incorrect Password');</script>
<%
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>


        <div class="main">

            <section class="signup">
                <!-- <img src="images/27981.jpg" alt=""> -->
                <div class="container">
                    <div class="signup-content">
                        <form method="POST" id="signup-form" class="signup-form">
                            <h2 class="form-title">Login </h2>
                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="username" placeholder="username "required=""/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="password" id="password" placeholder="Password"required=""/>

                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" id="submit" class="form-submit"  value="Sign in"/>
                            </div>
                        </form>
                        <p class="loginhere">
                            create an account,   (only for branch)? <a href="branchreg.jsp" class="loginhere-link">signup</a>
                        </p>
                    </div>
                </div>
            </section>

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body><!--  -->
</html>