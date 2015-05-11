<%-- 
    Document   : index
    Created on : Aug 5, 2013, 9:03:18 PM
    Author     : SIXTYFOURBIT
--%>



<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.dbConn"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AphiaPlus Systems Kiosk</title>
        

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
                $( "#tabs" ).tabs({
                    show: function(event, ui) {
                        var $target = $(ui.panel);
                        $('.content:visible').effect(
                        'explode', 
                        {}, 
                        500, 
                        function(){
                            $target.fadeIn();
                        });
                    }
                });
            }); 



            //a function to dynamically add rows
String.prototype.endsWith = function (s) {
  return this.length >= s.length && this.substr(this.length - s.length) == s;
}

function openreport(cururl){

var url=cururl.value;
//alert(url);
if(url.endsWith("jsp")||url.endsWith("htm")||url.endsWith("MOBILEREGISTER")||url.endsWith("RAWDATA1")||url.endsWith("monthlymobilelinks")||url.endsWith("allRawData")){
var win = window.open(url, '_blank');
  win.focus();
}
else{
    
    alert
}

}
  
        </script>







    </head>

    <body style="margin-top: 0px;" onload="">
        <div id="container" style="height:750px;  border-top-width: thick ; overflow-y:auto ;">

            <div id="header" style="width:1200px; margin-left: 40px;">
                <br/>



            </div>



            <!--            <div id="content" style="height:590px;margin-left:150px">-->



            <%
//         //***********************  get the systems urls**********************

               // dbConn conn = new dbConn();

                String get_urls = "select * from url where tableid='1'";

               // conn.rs = conn.st.executeQuery(get_urls);

                String hostname = "http://fhi360-pc3:8088/";
                String mainservername = "http://nkufs02:8088/";
                String phphostname = "http://fhi360-pc3:82/";
                String pythonhostname = "http://fhi360-pc3:4500/";

               // if (conn.rs.next()) {
                    //hostname = conn.rs.getString("jsp_url");
                    //phphostname = conn.rs.getString("php_url");
                    //pythonhostname = conn.rs.getString("python_url");
                    //System.out.println("hostname " + conn.rs.getString("jsp_url"));

                //}


                //==========================NOW LOAD THE USERNAME AND SESSION VALUES===================================

                String username = "user";
                String pword = "user";

                if (session.getAttribute("uname") != null) {

                    username = session.getAttribute("uname").toString();

                }
                if (session.getAttribute("pword") != null) {

                    pword = session.getAttribute("pword").toString();
                }


                //*********************************GET THE LIST OF ALL THE SYSTEMS FROM A session and **************************** 

                String allsystems = "";


                String[] systemslist = {"1", "2","3","4","5","6","7","8","9","10","11","12","13"};
  
                 if (session.getAttribute("systems") != null) {


                    systemslist = session.getAttribute("systems").toString().split(",");

                }
                //add the content from the aaray to the arraylist
                   ArrayList validsys= new ArrayList();
                   
                   if(validsys.size()>0){
                   validsys.clear();
                   }
                   
                   
                for(int a=0;a<systemslist.length;a++){
                
                validsys.add(systemslist[a]);
                
                
                }
                
                
      String checkvalid="Select systemid from systems where status='0'";
              
     // conn.rs=conn.st.executeQuery(checkvalid);
                            
    //   while(conn.rs.next()){
           //for (int b=0;b< validsys.size(); b++){
        //if system id equals the list of system in the array list , then remove it       
          // if (conn.rs.getString(1).equals(validsys.get(b))){
               
          // validsys.remove(b);
               
                   // }
       
                // }
       //}         
                


String finallist="";


           for(int p=0;p<validsys.size();p++){

    finallist+=","+validsys.get(p)+",";

                                             }      

            %>                


            <form action="login" method="post" style="margin-left: 90px; margin-right: 10px;width:1080px;height:610px;background-color: #ffffff;">


                <section class="about" style="width:1077px;" > 
                    <h3 align="center"> <img src="images/aphia_logo.png" alt="logo" height="85px" width="270px"/></h3>
                </section>             
                <br/>

                <h2 class="demoHeaders"></h2>
                <div id="tabs">
                    
                    <!-----------------------------------MENU------------------------------------------------------------->
                   <!---------------------------------------------------------------------------------------------->
                
                
                
    
    <%if(session.getAttribute("AccessLevel")!=null){
    
if(session.getAttribute("AccessLevel").toString().equals("0")){
%>
    
        <div id="radioset" class="ui-buttonset" style="margin-left: 275px;">
		<input type="radio" name="radio" id="radio1" class="ui-helper-hidden-accessible" height="20px;"><label for="radio1"  height="20px;"class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left" role="button" aria-disabled="false" aria-pressed="false"><a href="editurls.jsp"><span class="ui-button-text" height="10px;">Edit URL</span></a></label>
		<input type="radio" checked="checked" name="radio" id="radio2" height="20px;" class="ui-helper-hidden-accessible"><label height="20px;" for="radio2" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><a href="Register.jsp"><span class="ui-button-text" height="10px;">Register User</span></a></label>
		<input type="radio" checked="checked" name="radio" id="radio3" height="20px;" class="ui-helper-hidden-accessible"><label height="20px;" for="radio3" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><a href="editUserDetails.jsp"><span class="ui-button-text" height="10px;">Edit User Details</span></a></label>
		<input type="radio" checked="checked" name="radio" id="radio4" height="20px;" class="ui-helper-hidden-accessible"><label height="20px;" for="radio4" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><a href="editUser.jsp"><span class="ui-button-text" height="10px;">Edit User Systems</span></a></label>
		<input type="radio" checked="checked" name="radio" id="radio5" height="20px;" class="ui-helper-hidden-accessible"><label height="20px;" for="radio5" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><a href="activatesystem.jsp"><span class="ui-button-text" height="10px;">Systems Status</span></a></label>
                
		<input type="radio" name="radio" id="radio3" height="20px;" class="ui-helper-hidden-accessible"><label for="radio3" height="20px;" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right ui-state-active" role="button" aria-disabled="false" aria-pressed="true"><a href="logout.jsp"><span class="ui-button-text" height="10px;">Logout</span></a></label>
	</div>

	<%}else{%>
         
        <div id="radioset" class="ui-buttonset" style="margin-left: 275px;">
<input type="radio" name="radio" id="radio3" height="20px;" class="ui-helper-hidden-accessible"><label for="radio3" height="20px;" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right ui-state-active" role="button" aria-disabled="false" aria-pressed="true"><a href="logout.jsp"><span class="ui-button-text" height="10px;">Logout</span></a></label>
	</div>

      <%  }}%>
                
                
                
                <!---------------------------------------------------------------------------------------------->
                 
                    
                    
                    <!-----------------------------------END OF MENU------------------------------------------------------------->
                    
                    
       
                    <ul style="height:60px;">
                        <li><a href="#tabs-1" title="PPMT , PPMP , PROMIS" style="width:200px;text-align: center;">MANAGEMENT</a></li>
                        <li><a href="#tabs-2" title="DIC , HC1 , LSE"  style="width:250px;text-align: center;">HEALTH COMMUNICATION</a></li>
                        <li><a href="#tabs-3"  title="CBS , OVC , PWP " style="width:190px;text-align: center;">SDH</a></li>
                        <li><a href="#tabs-4" title="ART , HCA , MNCH , CHECKLIST, TQA"  style="width:194px;text-align: center;">CLINICAL</a></li>
                        <li><a href="#tabs-5" title="REPORTS FOR ALL SYSTEMS" style="width:200px;text-align: center;">REPORTS</a></li>

                    </ul>
                    <div id="tabs-1">

                        <section class="wrapper cl">

                            <br/><br/>

                            <!--Effect: Bottom to Top -->
                            <table cellpadding="5px" cellpadding="8px" style="margin-left:70px; width:950px;" >
                                <tr>

                                    <%if(finallist.contains(",1,")){ %>
                                    
                                    <!-----------------------------------------------------------------------------------------------> 
                              <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                               
                                                <br/>
                                                <br/>
                                                <a  href="<%=hostname%>ProgramProgress/LoginServlet?Username=<%=username%>&Password=<%=pword%>" title="PPMT" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia;" ><font color="#ff9900"><strong>PROGRAM PROGRESS MONITORING TABLE </font><font color="white">(PPMT)</strong></font></b></a>

                                            </section>

                                            <span class="pic-caption rotate-out">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>ProgramProgress/LoginServlet?Username=<%=username%>&Password=<%=pword%>" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">Open ppmt system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/PPMT_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">ppmt user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
                                                  <%}%> 
                                    
                                    <%if(finallist.contains(",2,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>PPMP" title="PPMP" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><b><strong>PROJECT PERFORMANCE MONITORING PLAN </font><font color="white"> (PPMP)</strong></b></font></b></a> 

                                            </section>

                                            <span class="pic-caption right-to-left">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>PPMP" target="_blank" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open ppmp system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/PPMP_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">ppmp user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
 <%}%>  <%if(finallist.contains(",2,")){ %>   

                                            <!-----------------------------------------------------------------------------------------------> 
                                            <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                               
                                                <br/>
                                                <br/>
                                                <a  href="<%=hostname%>PRF/login?uname=<%=username%>&pass=<%=pword%>" title="PROMIS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia;" ><font color="ff9900"><strong>PROMIS </font><br/><font color="white"></strong></font></b></a>

                                            </section>

                                            <span class="pic-caption rotate-out">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>PRF/login?uname=<%=username%>&pass=<%=pword%>" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">Open promis </a>
                                                <br/>
                                                <br/>
                                                <a href="#" title="user guide not available now! Please check again later." class="linkstyle" target="" style="text-align: center;margin-left: 40px;">promis user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
                                    

 <%}%>
                                </tr></table>
                            <br/>
                            <br/>
                            <br/>
                        </section>
                    </div>
                    <div id="tabs-2">
                        <section class="wrapper cl">

                            <br/>
                            <br/>
                            <br/>

                            <!--Effect: Bottom to Top -->
                            <table cellpadding="5px" cellpadding="8px" style="margin-left:70px; width:950px;" >
                                <tr>
 <%if(finallist.contains(",4,")){ %>
                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>HC1_APHIA_PLUS/login?uname=<%=username%>&pass=<%=pword%>" title="HC1" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong>HEALTH COMMUNICATION 1</font><font color="white"> (HC1)</strong></font></b></a>
                                                <!--                                                <br/><img src="logos/hc_logo.png" height="100px" />-->
                                            </section>


                                            <span class="pic-caption open-left">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>HC1_APHIA_PLUS/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open hc1 system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/HC1_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">hc1 user guide  </a>


                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
 <%}%> <%if(finallist.contains(",5,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>LSE_APHIA_PLUS/login?uname=<%=username%>&pass=<%=pword%>" title="LSE" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900;"><strong>LIFE SKILLS EDUCATION </font><font color="white">(LSE)</strong></font></b></a> </section>

                                            <span class="pic-caption rotate-out">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>LSE_APHIA_PLUS/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open lse system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/LSE_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">lse user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
 <%}%> <%if(finallist.contains(",3,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>DIC/LoginServlet?Username=<%=username%>&Password=<%=pword%>" title="DIC" target="_blank" class="button blue" id="capturefp" style="font-size: 17px; font-family: Georgia;" ><font color="#ff9900;"><strong> DROP IN CENTER</font> <font color="white"><br/>(DIC)</strong></font></b></a> </section>

                                            <span class="pic-caption left-to-right">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>DIC/LoginServlet?Username=<%=username%>&Password=<%=pword%>" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">Open dic system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/DIC_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">dic user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 

<%}%>

                                </tr></table>
                            <br/>
                            <br/>
                            <br/>
                            <br/>


                        </section>
                    </div>
                    <div id="tabs-3">



                        <section class="wrapper cl">
                            <!--Effect: Bottom to Top -->

                            <br/><br/><br/>

                            <table cellpadding="5px" cellpadding="8px" style="margin-left:70px; width:950px;" >
                                <tr>
                                    
                                    <%if(finallist.contains(",6,")){ %>
                                    
                                    <!----------------------------------------------------------------------------------------->
                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>Biometric_sys/login?uname=<%=username%>&pass=<%=pword%>" title="CBS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong> CHWS BIOMETRIC SYSTEM</font><font color="white"><br/> (CBS)</strong></font></b></a> 
                                                <!--                                             <br/><img src="logos/cbs_logo.png" height="100px" />-->
                                            </section>

                                            <span class="pic-caption open-left">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>Biometric_sys/login?uname=<%=username%>&pass=<%=pword%>" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">Open cbs system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/CBS_GUIDE.pdf"  class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">cbs user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
                           <%}%> <%if(finallist.contains(",7,")){ %>
                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>OVCLIP/login?uname=<%=username%>&pass=<%=pword%>" title="LIP Supervision Checklist" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong>OVC LIP SUPERVISION CHECKLIST </font><font color="white"><br/>(OVC LSC)</strong></font></b></a> </section>

                                            <span class="pic-caption top-to-bottom">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>OVCLIP/index.htm" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open the system</a>
                                                <br/>
                                                <br/>
                                                <a href="#" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">system user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
<%}%> <%if(finallist.contains(",8,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>PWP_Session_Tool/login?uname=<%=username%>&pass=<%=pword%>" title="PWP" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family:Georgia; " ><font color="#ff9900"><strong>PREVENTION WITH POSITIVES </font><font color="white"><br/>(PWP)</strong></font></b></a> </section>

                                            <span class="pic-caption bottom-to-top">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>PWP_Session_Tool/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open pwp system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/PWP_GUIDE.pdf" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">pwp user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
                                <%}%>

                                    <!-----------------------------------------------------------------------------------------------> 




                                </tr></table>
                            <br/>
                            <br/>
                            <br/>
                        </section>





                    </div>
                    <div id="tabs-4">   <section class="wrapper cl">
                            <!--Effect: Bottom to Top -->
                            <table cellspacing="9px" cellpadding="9px" style="margin-left: 70px; width:950px;" >
                                <tr>
                                    
                                    <!----------------------------------------------------------------------------------------->
                     <%if(finallist.contains(",9,")){ %>
                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=phphostname%>CohortSystem/database/login.php?username=<%=username%>&password=<%=pword%>" title="ART" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900;"><strong> ART COHORT </font><font color="white"><br/> (ART)</strong></font></b></a> </section>

                                            <span class="pic-caption open-left">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=phphostname%>CohortSystem/database/login.php?username=<%=username%>&password=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open art system</a>
                                                <br/>
                                                <br/>
                                                <a href="#" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">art user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
<%}%> <%if(finallist.contains(",10,")){ %>
                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>HEI/login?uname=<%=username%>&pass=<%=pword%>" title="HEI COHORT" target="_blank" class="button blue" id="capturefp" style="font-size: 17px; font-family: Georgia;" ><font color="#ff9900"><strong>HEI COHORT <br/>ANALYSIS </font><font color="white"><br/> (HEI)</strong></font></b></a> 
                                                <!--                                            <br/><br/><img src="logos/hei_logo.png"  height="100px">-->
                                            </section>

                                            <span class="pic-caption come-left">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>HEI/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open hca system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/HEI_GUIDE.pdf" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">hca user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
<%}%> <%if(finallist.contains(",11,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>MHC/login?uname=<%=username%>&pass=<%=pword%>" title="MNCH" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong>KOIBATEK INTERVENTION </font><font color="white"><br/>(MNCH)</strong></font></b></a></section>
                                                <!--                                                <br/><br/><img src="logos/mnch_logo.png" height="100px" ></section>-->

                                                <span class="pic-caption left-to-right">
                                                    <h5 class="pic-title"></h5>
                                                    <a href="<%=hostname%>MHC/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open mnch system</a>
                                                    <br/>
                                                    <br/>
                                                    <a href="pdf/MNCH_GUIDE.pdf" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">mnch user guide  </a>
                                                </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
                          <%}%>

                                    <!-----------------------------------------------------------------------------------------------> 




                                </tr></table>
                            <br/>  
                            <br/>  
                            <!--Table 2--->
                            <table cellspacing="200px"  style="margin-left:70px; width:950px;" >
                                <tr>
<%if(finallist.contains(",12,")){ %>
                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td style="">
                                        <div class="pic" style="margin-right: 307px;">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>APHIA_Checklist/login?uname=<%=username%>&pass=<%=pword%>" title="Checklist" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong>M&E CHECKLIST</font><font color="white"> <br/>(CHECKLIST)</strong></font> </b></a> </section>

                                            <span class="pic-caption bottom-to-top">
                                                <h5 class="pic-title"></h5>
                                                <a style="width:190px;" href="<%=hostname%>APHIA_Checklist/login?uname=<%=username%>&pass=<%=pword%>" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">Open checklist system</a>
                                                <br/>
                                                <br/>
                                                <a style="width:190px;" href="pdf/CHECKLIST_GUIDE.pdf" class="linkstyle" target="_blank" style="text-align: center;margin-left: 40px;">checklist user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
<%}%> <% if(finallist.contains(",13,")){ %>

                                    <!-----------------------------------------------------------------------------------------------> 

                                    <td>
                                        <div class="pic">
                                            <section class="about"  style="background-color:#202020 ;color:white ; height:150px; width:220px;">
                                                <br/>
                                                <br/>
                                                <a href="<%=hostname%>TQA/login?uname=<%=username%>&pass=<%=pword%>" title="TQA" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="#ff9900"><strong>TECHNICAL QUALITY ASSESSMENT</font><font color="white"><br/> (TQA)</strong></font></b></a> </section>

                                            <span class="pic-caption rotate-in">
                                                <h5 class="pic-title"></h5>
                                                <a href="<%=hostname%>TQA/login?uname=<%=username%>&pass=<%=pword%>" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open tqa system</a>
                                                <br/>
                                                <br/>
                                                <a href="pdf/TQA_GUIDE.pdf" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;"> tqa user guide  </a>
                                            </span>
                                        </div>
                                    </td>
                                    <!-----------------------------------------------------------------------------------------------> 
<%}%>
                                </tr></table>



                        </section>
                    </div>
                    <div id="tabs-5">



                        <% session.setAttribute("Username", "guest");%> 
                        <% session.setAttribute("loggedIn", "yes");%> 
                        <% session.setAttribute("level", "0");%> 
                        <% session.setAttribute("userid", "0");%> 



                        <table  style="margin-left: 10px; width:600px;" >
                            <tr>

                                <!-----------------------------------------------------------------------------------------------> 

                                <% if(finallist.contains(",1,")){ %>
                               <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                                                                                 <br/>
                                                <br/>
                                                <br/>
                                            <a href="#" title="Checklist" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>PROGRAM PROGRESS MONITORING TABLE (PPMT) REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption bottom-to-top">
                                            <h5 class="pic-title"></h5>
                                            <a style="width: 190px;" href="<%=hostname%>ProgramProgress/county_quarter_report.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">County Reports</a>
                                            <br/>
                                            <br/>
                                            <a style="width: 190px;" href="<%=hostname%>ProgramProgress/1stQuarterCountyReport.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Sub-County Reports </a>
										    <br/>
                                            <br/>
                                            <a style="width: 190px;" href="<%=hostname%>ProgramProgress/county_report_broken.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">County Reports (Broken)</a>
                                                                             
									   </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 
<%}%> <% if(finallist.contains(",3,")){ %>

                                <!-----------------------------------------------------------------------------------------------> 

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                             <br/>
                                                <br/>
                                            <a href="#" title="DIC Reports" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>DROP IN CENTER   (DIC) REPORTS </strong></font></b></a> </section>

                                        <span class="pic-caption rotate-in">
                                            <h5 class="pic-title"></h5>

 <select name="hc_reports" style="width:200px;" onchange="openreport(this);"> 
                <option value="">Select The Report to Open</option>
                <option value="<%=hostname%>DIC/Reports/reportUI.jsp">Enrollment Reports </option>
                <option value="<%=hostname%>DIC/Reports/reportUI1.jsp">Risk Assessment Reports </option>
                <option value="<%=hostname%>DIC/Reports/riskreductionReport.jsp">Risk reduction Reports </option>
                <option value="<%=hostname%>DIC/Reports/SummaryReport.jsp">Summary Report </option>
                <option value="<%=hostname%>DIC/Reports/KPMSReport.jsp">Kepms Report </option>
                <option value="<%=hostname%>DIC/Reports/KPMSReportAged.jsp">Kepms Report(Aged) </option>
			    <option value="<%=hostname%>DIC/Reports/repeatVisit.jsp">Visits Report </option>
                <option value="<%=hostname%>DIC/Reports/selectParameter.jsp">Charts </option>
</select>                
     <br/>
            <br/>
             <br/>
                 <label style="color:orangered;"> Select any report in the dropdown above to open it</label>                           

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 
<%}%> <% if(finallist.contains(",4,")){ %>

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           
                                             <br/>
                                             <br/>
                                                <a href="#" title="HC1 reports" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>HEALTH COMMUNICATION (HC1) REPORTS</strong></b></a> </section>

                                        <span class="pic-caption right-to-left">
                                            <h5 class="pic-title"></h5>

            <select name="hc_reports" style="width:200px;" onchange="openreport(this);"> 
                <option value="">Select The Report to Open</option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/kePMS_excel_report.jsp">PEPFAR Report (excel) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/agebasedkepms.jsp">Kepms Report By Age  (excel) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/newagebasedkepms.jsp">(New)Kepms Report By Age  (excel) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/partnerbasedreport.jsp">Kepms Report By Target Population (excel) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/groups_overall.jsp">Groups Completion (excel)</option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/overall_target_bar.jsp">Target Pop. Completion Rate (bar) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/county_bar.jsp">County Completion Rate (bar) </option>           
                <option value="<%=hostname%>HC1_APHIA_PLUS/kePMS_bar.jsp">PEPFAR Report (bar) </option>
                <option value="<%=hostname%>HC1_APHIA_PLUS/target_pie.jsp">Target Pop. Completion Rate (pie) </option>
              
            </select>
                
                     <br/>
            <br/>
             <br/>
                 <label style="color:orangered;"> Select any report in the dropdown above to open it</label>                           

                                        </span>
                                    </div>
                                </td>

                                <!--------------------------------------------------------------------------------------------------------------------->
<%}%> <% if(finallist.contains(",8,")){ %>
                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           <br/>
                                           <br/>
                                            <a href="#" title="PWP reports" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong> PREVENTION WITH POSITIVES  (PWP) REPORTS</strong></b></a> </section>

                                        <span class="pic-caption rotate-out">
                                            <h5 class="pic-title"></h5>
                                           <select name="pwp_reports" style="width:200px;" onchange="openreport(this);"> 
                <option value="">Select The Report to Open</option>
                <option value="<%=hostname%>PWP_Session_Tool/enrollments.jsp"> Enrollments Report (excel) </option>
                <option value="<%=hostname%>PWP_Session_Tool/servicesProvided.jsp">Services Provided (excel) </option>
                <option value="<%=hostname%>PWP_Session_Tool/allRawData">Raw Data (excel) </option>
                <option value="<%=hostname%>PWP_Session_Tool/kePMS.jsp">KePMS Report (excel)</option>
              
            </select>

                                        </span>
                                    </div>
                                </td>

<%}%>
                                <!--------------------------------------------------------------------------------------------------------------------->                   

                            </tr>
                            <tr>

                                <!-----------------------------------------------------------------------------------------------> 
<% if(finallist.contains(",2,")){ %>
                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           
                                            <br/>
                                            <br/>
                                            <a href="#" title="PPMP REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>PROJECT PERFORMANCE MONITORING PLAN (PPMP) REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption right-to-left">
                                            <h5 class="pic-title"></h5>
                                            <a href="<%=hostname%>PPMP/pmpreportyear.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">PMP Reports</a>
                                            <br/>
                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 

<% } %><% if(finallist.contains(",9,")){ %>
                                <!-----------------------------------------------------------------------------------------------> 

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                          <br/>
                                          <br/>
                                            
                                            <a href="#" title="MNCH REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>MNCH REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption left-to-right">
                                            <h5 class="pic-title"></h5>
                                            
                                            
                                            
            <select name="hc_reports" style="width:200px;" onchange="openreport(this);"> 
                <option value="">Select The Report to Open</option>
            <option value="<%=hostname%>MHC/RAWDATA1">Mobile Enrollments ( # per site)</option>
            <option title="" value="<%=hostname%>MHC/MOBILEREGISTER">Mobile and register linking (individual report)</option>
            <option  value="<%=hostname%>MHC/monthlymobilelinks">Mobile and registers linking (summary)</option>
        
            <option value="<%=hostname%>MHC/reports_detailedsummaries.jsp">ALL Registers Summary ( # per Site) </option>
            <option value="<%=hostname%>MHC/reports_selectyear.jsp">ANC Visits Report ( #per village)</option>
            <option value="<%=hostname%>MHC/reports_maternityreg.jsp">Maternity Report (# per village)</option>
            <option value="<%=hostname%>MHC/report_completeregisters.jsp">Completion Report(All registers )</option>
            <option value="<%=hostname%>MHC/facilitiesmatandancsummary.jsp">ANC Visits and Delivery report (registers Summary)</option>
                           
            </select>
            <br/>
            <br/>
             <br/>
                 <label style="color:orangered;"> Select any report in the dropdown  to open it</label>                           

                                            
                                            
<!--                                            <a style="width: 190px;" href="<%=phphostname%>CohortSystem/reports/district_line1.php" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Sub-County Reports</a>
                                         
                                            <a style="width: 190px;" href="<%=phphostname%>CohortSystem/reports/hf_quarterly.php" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Quarterly Reports</a>
                                          
                                            <a style="width: 190px;" href="<%=phphostname%>CohortSystem/reports/Annual_cohort_analysis.php" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Annual Reports</a>-->

                                          

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 

<%}%>
<% if(finallist.contains(",5,")){ %>

                                <!-----------------------------------------------------------------------------------------------> 

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           <br/>
                                            <br/>
                                            
                                            <a href="#" title="LSE REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>LIFE SKILLS EDUCATION (LSE) REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption right-to-left">
                                            <h5 class="pic-title"></h5>
                                            <a style="width:190px;" href="<%=hostname%>LSE_APHIA_PLUS/lse_completion_reports.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Completion Reports</a>

                                            <br/>
                                            <a style="width:190px;" href="<%=hostname%>LSE_APHIA_PLUS/pupils_per_school.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">School Reports</a>

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 

<%}%> <% if(finallist.contains(",7,")){ %>

                                <!-----------------------------------------------------------------------------------------------> 

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           <br/>
                                           <br/>
                                            
                                            <a href="#" title="OLMIS REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>OLMIS REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption left-to-right">
                                            <h5 class="pic-title"></h5>

                                            <a href="<%=mainservername%>OLMISREPORT/index.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open Reports Page</a>
                                            <br/>
<!--                                            <a href="<%=hostname%>PerformanceSys/filterpartnerreports.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Partner Reports</a>-->

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 
<%}%>
<% if(finallist.contains(",7,")){ %>

                                <!-----------------------------------------------------------------------------------------------> 

                               </tr><tr> <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           <br/>
                                           <br/>
                                            
                                            <a href="#" title="OVC LIP SUPERVISION CHECKLIST REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>OVC LIP SUPERVISION CHECKLIST REPORTS</strong></font></b></a> </section>

                                        <span class="pic-caption left-to-right">
                                            <h5 class="pic-title"></h5>

                                            <!--<a href="<%=hostname%>OVCLIP/filterreports.htm" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open Reports Page</a>-->
                                              <select name="hc_reports" style="width:200px;" onchange="openreport(this);"> 
                <option value="">Select The Report to Open</option>
            <option title="only one site at a go" value="<%=hostname%>OVCLIP/filterreports.htm">Report Per Site</option>
            <option title="each site in its worksheet" value="<%=hostname%>OVCLIP/filtermultiplesitesreport.htm">Multiple Sites  Report</option>
            <option title="summary per IP per domain" value="<%=hostname%>OVCLIP/ipreports.htm">IP/CBOs  Report</option>
            <option title="each county in its worksheet" value="<%=hostname%>OVCLIP/filtercountyreport.htm">County Report</option>
            <option title="all cbos in one worksheet" value="<%=hostname%>OVCLIP/webcharts.htm">Cbo Charts</option>
            <option title="each county in its worksheet" value="<%=hostname%>OVCLIP/overallcharts.htm">County Charts</option>
            </select>
                                            <br/>
<!--                                            <a href="<%=hostname%>PerformanceSys/filterpartnerreports.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Partner Reports</a>-->

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 
<%}%>
<% if(finallist.contains(",7,")){ %>

                                <!-----------------------------------------------------------------------------------------------> 

                                <td>
                                    <div class="pic">
                                        <section class="about"  style="background-color:#202020 ;color:white ; height:270px; width:220px;">
                                           <br/>
                                           <br/>
                                            
                                            <a href="#" title="FACILITIES GEOCODES REPORTS" target="_blank" class="button blue" id="capturefp" style="font-size: 17px;font-family: Georgia; " ><font color="greenyellow"><strong>FACILITY GEOCODES REPORT</strong></font></b></a> </section>

                                        <span class="pic-caption left-to-right">
                                            <h5 class="pic-title"></h5>

                                            <a href="http://elkant.0fees.us/showcodes.php" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Open Reports</a>
                                            
                                            <br/>
<!--                                            <a href="<%=hostname%>PerformanceSys/filterpartnerreports.jsp" target="_blank" class="linkstyle" style="text-align: center;margin-left: 40px;">Partner Reports</a>-->

                                        </span>
                                    </div>
                                </td>
                                <!-----------------------------------------------------------------------------------------------> 
<%}%>




                            </tr></table>         







                    </div>
                                        
                </div>


            </form>     
            <!--                              </div>-->



            <div id="footer" style="margin-top: 60px;">
                <!--  <h2 align="left"> <img src="images/Coat of arms.JPG" alt="logo" height="76px" /></h2>-->

                <%
                    Calendar cal = Calendar.getInstance();
                    int year = cal.get(Calendar.YEAR);

                %>
<!--                <section class="about" style="width:1250px;" > 
                    <p align="center"> &copy <a href="#" ></a> Aphia Plus Nuru Ya Bonde Systems | USAID <%=year%></p>
                </section>-->
            </div>
        </div>

    </body>


</html>
