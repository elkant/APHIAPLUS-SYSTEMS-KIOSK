<%-- 
    Document   : index
    Created on : Aug 5, 2013, 9:03:18 PM
    Author     : SIXTYFOURBIT
--%>



<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addmin Module</title>
        <link rel="stylesheet" type="text/css" href="menu/clerkmenu_files/css3menu1/style.css"/>



        <link rel="stylesheet" type="text/css" href="css/Main.css"/>
        <!--          <link rel="stylesheet" href="scss/style.css"/>-->
        <!--          <link rel="stylesheet" href="css/style_1.css"/>-->
        <link rel="shortcut icon" href="images/nyb.png"/>
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>

        <script type="text/javascript" src="js/noty/jquery.noty.js"></script>

        <script type="text/javascript" src="js/noty/layouts/top.js"></script>
        <script type="text/javascript" src="js/noty/layouts/center.js"></script>
        <!-- You can add more layouts if you want -->

        <script type="text/javascript" src="js/noty/themes/default.js"></script>


        <!--tooltip-->
        <link href="js/css/start/jquery-ui-1.10.3.custom.css" rel="stylesheet"/>

        <script src="js/js/jquery-ui-1.10.3.custom.js"></script>
        <link rel="stylesheet" href="js/demos.css" />

        <script type="text/javascript">
            $(function() {

                $( document ).tooltip();
                $( "#accordion" ).accordion();

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




            <form action="login" method="post" style="margin-left: 90px; margin-right: 10px;width:1080px;height:610px;background-color: #ffffff;">


                <section class="about" style="width:1077px;" > 
                    <h3 align="center"> <img src="images/aphia_logo.png" alt="logo" height="85px" width="270px"/></h3>
                </section>             




                <table cellpadding="0px" >


                    <tr><td style="text-align: center;">
<!--                            <section class="about"  style="background-color:#202020 ;color:white ; height:40px; width:200px;margin-left:450px;">
                            </section>-->
                        </td></tr>
                    <tr><td>itle:</td><td><input type="text" name="title" id="title" title="Enter the Title of the System which will be diplayed upon moving the mouse over the System Button"></td></tr>
                
                <tr><td>System Url :</td><td><input type="text" value="localhost:8088/" name="url" id="url" /></td></tr>
                <tr><td>Icon Url :</td><td><input type="text" value="localhost:8088/" name="iconurl" id="iconurl" /></td></tr>
                <tr><td>Section :</td><td>
                        <select name="sect" id="sect" required>
                       <option value="">choose section</option>
                       <option value="Clinical">Clinical</option>
                       <option value="Health Communication">Health Communication</option>
                       <option value="Management">Management</option>
                       <option value="SDH">SDH</option>
                            
                        </select>
                        
                    </td></tr>
                
                <tr><td></td><td></td></tr>
                
                </table>


            </form>



            <!--                              </div>-->



            <div id="footer">


                <%
                    Calendar cal = Calendar.getInstance();
                    int year = cal.get(Calendar.YEAR);
 //dbConn conn=new dbConn();
 //conn.rs=conn.st.executeQuery("select version_name from version");          
 //conn.rs.next();
                %>
                <section class="about" style="width:1250px;" > 
                    <p align="center"> &copy <a href="#" ></a> Aphia Plus Nuru Ya Bonde Systems | USAID <%=year%></p>
                </section>
            </div>
        </div>

    </body>


</html>
