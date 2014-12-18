<%-- 
    Document   : index
    Created on : Aug 5, 2013, 9:03:18 PM
    Author     : SIXTYFOURBIT
--%>



<%@page import="db.dbConn"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AphiaPlus Web Systems</title>
        <link rel="stylesheet" type="text/css" href="menu/clerkmenu_files/css3menu1/style.css"/>



        <link rel="stylesheet" type="text/css" href="css/Main.css"/>
       
        <link rel="shortcut icon" href="images/nyb.png"/>
        <script type="text/javascript" src="js/jquery-1.10.2.js"></script>

        <script type="text/javascript" src="js/noty/jquery.noty.js"></script>

        <script type="text/javascript" src="js/noty/layouts/top.js"></script>
        <script type="text/javascript" src="js/noty/layouts/center.js"></script>
        <!-- You can add more layouts if you want -->

        <script type="text/javascript" src="js/noty/themes/default.js"></script>


        <!--tooltip-->
        <link href="js/css/blitzer/jquery-ui-1.10.4.custom.css" rel="stylesheet"/>
        <script src="js/js/jquery-ui-1.10.4.custom.js"></script>
        <link rel="stylesheet" href="js/demos.css" />

        <!--  In content -->
        
        <!-- Main CSS -->
	<link rel="stylesheet" href="css/sass-compiled.css" />

	<!-- Modrnizr Lib -->
	<script src="libs/modernizr.js" type="text/javascript"></script>
        
        <script type="text/javascript">
            $(function() {

                $( document ).tooltip();
                $( "#accordion" ).accordion();
                $( "#tabs" ).tabs();
            }); 



            //a function to dynamically add rows



  
        </script>







    </head>

    <body style="margin-top: 0px;" onload="">
        <div id="container" style="height:690px;  border-top-width: thick ; overflow-y:auto ;">

            <div id="header" style="width:1200px; margin-left: 40px;">
                <br/>



            </div>



            <!--            <div id="content" style="height:590px;margin-left:150px">-->



            <%

                String hostname = "http://fhi360-pc3:8088/";
                
                dbConn conn= new dbConn();
                
                String qr= "select * from url where tableid='1'";
                
                conn.rs= conn.st.executeQuery(qr);
                
                
                String jspurl="",phpurl="",pythonurl="";
                while(conn.rs.next()){
                jspurl=conn.rs.getString("jsp_url");
                phpurl=conn.rs.getString("php_url");
                pythonurl=conn.rs.getString("python_url");
                    
                
                }
                        
                        
                
            %>                


            <form action="editurls" method="post" style="margin-left: 90px; margin-right: 10px;width:1080px;height:610px;background-color: #ffffff;">

                 <section class="about" style="width:1077px;" > 
                    <h3 align="center"> <img src="images/aphia_logo.png" alt="logo" height="85px" width="270px"/></h3>
                </section> 
                <br/>
       <h3 style="background-color: orange;text-align: center;">EDIT URLS</h3>         
<table class="viewpdt" style="margin-left: 300px;margin-top: 40px;width: 600px;">
    <tr>
        <th> URL </th> <th> VALUE</th> </tr>
        <tr><td>JSP URL</td><td><input style="width:200px;"  value="<%=jspurl%>" type="text" name="jspurl" id="jspurl" required/></td></tr>
        <tr><td>PHP URL</td><td><input style="width:200px;"  value="<%=phpurl%>" type="text" name="phpurl" id="phpurl" required/></td></tr>
        <tr><td>PYTHON URL</td><td><input style="width:200px;" value="<%=pythonurl%>" type="text" name="pythonurl" id="pythonurl" required/></td>
    </tr>
    <tr></tr>
    <tr><td colspan="2"><input type="submit" name="submit" value="Submit"></td></tr>
</table>

            </form>     
            <!--                              </div>-->



            <div id="footer">
                <!--  <h2 align="left"> <img src="images/Coat of arms.JPG" alt="logo" height="76px" /></h2>-->

                <%
                    Calendar cal = Calendar.getInstance();
                    int year = cal.get(Calendar.YEAR);

                %>
                <section class="about" style="width:1250px;" > 
                    <p align="center"> &copy <a href="#" ></a> Aphia Plus Nuru Ya Bonde Systems | USAID <%=year%></p>
                </section>
            </div>
        </div>

    </body>


</html>
