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
 
            //===============transfer chw====================================
            function changestatus(statusi,systemid){
   
                  
                var xmlhttp;  
                
                var status=statusi.value;
                if (systemid=="")
                {
                    //filter the districts    



                    alert("choose anc");
                    return;
                }
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        
                        var n = noty({text: '<img src=\"images/present.png\">   update succesfull! ',
                            layout: 'center',
                            type: 'Success',
                            timeout: 1800});
                        
                        document.getElementById("loading").innerHTML="";
                        //document.getElementById("am_curchw"+ancno).innerHTML=xmlhttp.responseText;
                        //doOnLoad();

                    }
                }
                xmlhttp.open("POST","updatestatus?status="+status+"&systemid="+systemid,true);
                xmlhttp.send();

                document.getElementById("loading").innerHTML="<img src=\"images/sending.gif\" alt=\"\"/>    updating..";                       
                        
            }//end of ajax class
             


  
        </script>


    </head>

    <body style="margin-top: 0px;" onload="">
        <div id="container" style="height:760px;  border-top-width: thick ; overflow-y:auto ;">

            <div id="header" style="width:1200px; margin-left: 40px;">
                <br/>



            </div>



            <!--            <div id="content" style="height:590px;margin-left:150px">-->



            <%

                String hostname = "http://fhi360-pc3:8088/";
                
                dbConn conn= new dbConn();
                
                String qr= "select * from systems ";
                
                conn.rs= conn.st.executeQuery(qr);
                
                        
                        
                
            %>                


            <form action="editurls" method="post" style="margin-left: 30px; margin-right: 10px;background-color: #ffffff;">

                 <section class="about" style="width:1077px;" > 
                    <h3 align="center"> <img src="images/aphia_logo.png" alt="logo" height="85px" width="270px"/></h3>
                </section> 
                <br/>
       <h3 style="background-color: orange;text-align: center;"> ACTIVATE / DISABLE SYSTEM </h3> 
       <p id="loading"></p>
<table class="viewpdt" style="margin-left: 300px;margin-top: 40px;width: 600px;">
    <tr>
        <th>No.</th><th> SYSTEM </th> <th> STATUS</th> </tr>
    
    <%
int count=0;
while(conn.rs.next()){                
count++;
                                          
                       
%>
<tr>
    <td><%=count%></td><td><input type="hidden" name="id<%=count%>" value="<%=conn.rs.getString("systemid")%>"/><p style="text-align: centre;"><b><%=conn.rs.getString("systemname")%></b></p> </td>
    <td><select name="status" onchange="changestatus(this,<%=conn.rs.getString("systemid")%>);" required > <% if(conn.rs.getString("status").equalsIgnoreCase("1")){ %><option value="1" selected> active</option><option value="0" > disabled</option><%}  else if(conn.rs.getString("status").equalsIgnoreCase("0")){%><option value="0" selected> disabled </option><option value="1" > active</option> <%}%> </select>  </td></tr>
       

                <% } %>
        
    <tr></tr>
    <tr><th colspan="3"></th></tr>
</table>

            </form>     
            <!--                              </div>-->



           
        </div>

    </body>


</html>
