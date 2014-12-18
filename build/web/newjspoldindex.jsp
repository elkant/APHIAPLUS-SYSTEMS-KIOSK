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
        <title>AphiaPlus Web Systems</title>
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

               // $( document ).tooltip();
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



            <%

                String hostname = "http://fhi360-pc3:8088/";
            %>                


            <form action="login" method="post" style="margin-left: 90px; margin-right: 10px;width:1080px;height:610px;background-color: #ffffff;">


                <section class="about" style="width:1077px;" > 
                    <h3 align="center"> <img src="images/aphia_logo.png" alt="logo" height="85px" width="270px"/></h3>
                </section>             


                <div style="position: absolute">    

                    <table cellpadding="0px" >
                        <tr>
                            <td><h3 style="text-align: center; background-color: #ff33ff">Management</h3></td>
                        </tr>
                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>ProgramProgress/" title="PPMT" target="_blank" class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><strong>PROGRAM PROGRESS MONITORING TABLE (PPMT)</strong></font></b></a> </section>
                            </td></tr>
                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="http://fhi360-pc3:4500/cgi-bin/login.py" target="_blank"  class="button blue" title="PPMP" id="" style="font-size: 14px; " ><font color="#ff9900"><strong> PROJECT PERFORMANCE MONITORING PLAN (PPMP)</Strong></font></b></a> </section>
                            </td>

                        </tr>
                    </table>
                </div>

                <div style="margin-left: 250px;position: absolute;">
                    <table>
                        <tr><td><h3 style="text-align: center; background-color: #ff33ff">Health Communication</h3></td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">           
                                    <a href="<%=hostname%>HC1_APHIA_PLUS/" target="_blank" title="Health Communication System"  class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><strong>HEALTH COMMUNICATION 1 (HC1)</strong></font></b></a> </section>
                            </td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">                
                                    <a href="<%=hostname%>LSE_APHIA_PLUS/" target="_blank" title="Life Skills Education"  class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><Strong>LIFE SKILLS EDUCATION (LSE)</Strong></font></b></a> </section>
                            </td></tr>
                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">                
                                    <a href="<%=hostname%>DIC/" target="_blank" title="DIC"  class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><Strong>DROP IN CENTER  (DIC)</strong></font></b></a> </section>
                            </td></tr>
                    </table>
                </div>
                <div style="margin-left:510px;position: absolute; ">
                    <table >

                        <tr><td><h3 style="text-align: center;  background-color: #ff33ff;">SDH</h3></td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>PerformanceSys/" target="_blank" title="Performance standards System"  class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><strong>OVC PERFORMANCE STANDARDS </strong></font></b></a> </section>
                            </td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px;width:220px; ">
                                    <a href="<%=hostname%>PWP_Session_Tool" target="_blank" title="PWP" class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><Strong>POSITIVE WITH PREVENTIVE (PWP)</Strong></font></b></a> </section>
                            </td></tr>

                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>Biometric_sys/" target="_blank"  class="button blue" title="CHWS Biometric System" id="" style="font-size: 14px; " ><font color="#ff9900"><Strong> CHWS BIOMETRIC SYSTEM (CBS)</font></Strong></a> </section>
                            </td>

                        </tr>
                    </table>


                </div>      
                <div style="margin-left:750px;position: absolute; ">
                    <table >

                        <tr><td><h3 style="text-align: center; background-color: #ff33ff;">Clinical</h3></td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>TQA/" target="_blank" title="TQA"  class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><strong>TOTAL QUALITY ASSESSMENT (TQA)</strong></font></b></a> </section>
                            </td></tr>

                        <tr><td style="text-align: center;">
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>HEI/" target="_blank" title="HEI" class="button blue" id="capturefp" style="font-size: 14px; " ><font color="#ff9900"><Strong>HEI COHORT ANALYSIS  (HEI)</strong></font></b></a> </section>
                            </td></tr>

                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href=" http://fhi360-pc3:82/CohortSystem/" target="_blank"  class="button blue" title="Cohort" id="" style="font-size: 14px; " ><font color="#ff9900"><strong> ART COHORT (ART)</strong></font></b></p></a> </section>
                            </td>

                        </tr>
                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>APHIA_Checklist/" target="_blank"  class="button blue" title="APHIA_Checklist" id="" style="font-size: 14px; " ><font color="#ff9900"><strong>M&E CHECKLIST </Strong> </font></a> </section>
                            </td>

                        </tr>
                        <tr><td >
                                <section class="about"  style="background-color:#202020 ;color:white ; height:60px; width:220px;">
                                    <a href="<%=hostname%>MHC/index.jsp" target="_blank"  class="button blue" title="MNCH" style="font-size: 14px; " ><font color="#ff9900" style=""><strong>KOIBATEK INTERVENTION (MNCH)</strong> </font></a> </section>
                            </td>

                        </tr>
                    </table>


                </div>      


            </form>     
            <!--                              </div>-->



            <div id="footer">
                <!--  <h2 align="left"> <img src="images/Coat of arms.JPG" alt="logo" height="76px" /></h2>-->

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
