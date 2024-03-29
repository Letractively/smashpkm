<%-- 
    Document   : pengaturanPasswordMember
    Created on : Dec 11, 2011, 8:07:37 AM
    Author     : yosua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel='icon' href="images/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Pengaturan Akun-SMASH</title>
        <meta name="keywords" content="Chrome Web Design, CSS, HTML, free template, piecemaker" />
        <meta name="description" content="Chrome Web Design is a free website template integrated with PieceMaker 3D Flash Slider." />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>
        <script type="text/javascript">
            var flashvars = {};
            flashvars.cssSource = "css/piecemaker.css";
            flashvars.xmlSource = "piecemaker.xml";

            var params = {};
            params.play = "true";
            params.menu = "false";
            params.scale = "showall";
            params.wmode = "transparent";
            params.allowfullscreen = "true";
            params.allowscriptaccess = "always";
            params.allownetworking = "all";

            swfobject.embedSWF('piecemaker.swf', 'piecemaker', '960', '500', '10', null, flashvars,
            params, null);

        </script>

        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

        <script type="text/javascript" src="scripts/jquery.min.js"></script>
        <script type="text/javascript" src="scripts/ddsmoothmenu.js">

            /***********************************************
             * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
             * This notice MUST stay intact for legal use
             * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
             ***********************************************/

        </script>

        <script type="text/javascript">

            ddsmoothmenu.init({
                mainmenuid: "templatemo_menu", //menu DIV id
                orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
                classname: 'ddsmoothmenu', //class added to menu's outer DIV
                //customtheme: ["#1c5a80", "#18374a"],
                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
            })
        </script>
        <link rel="stylesheet" media="screen" href="buttonstyle.css"/>
    </head>
    <body>
        <div id="templatemo_wrapper">

            <div id="templatemo_header">

                <img src="images/logo.png"/>

                <div id="templatemo_menu" class="ddsmoothmenu">
                    <ul>
                        <li><a href="index.html" class="selected">Home</a></li>
                        <li><a href="about.html">About</a>
                            <ul>
                                <li><a href="http://www.templatemo.com/page/1">SMASH</a></li>
                                <li><a href="http://www.templatemo.com/page/2">Our Team</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                    <br style="clear: left" />
                </div> <!-- end of templatemo_menu -->

            </div> <!-- end of header -->

            <br/>
            <p align="right"><font color="black">Anda login sebagai ${mahasiswa.nama},</font><a style="color: red" href="DispatcherMahasiswa?page=logout&&nrp=${mahasiswa.nrp}">(logout)</a></p>
            <br/>
            <div class="sb_box">
                <h3>Ganti Password</h3>
            </div>

            <div id="templatemo_main">
                <table border="0">
                    <tr>
                        <td>
                            <a href="DispatcherMahasiswa?page=pengaturanMember" title="" class="btn medium green">Profil</a>
                        </td>
                        <td>
                            <a href="DispatcherMahasiswa?page=pengaturanPasswordMember" title="" class="btn medium green">Ganti Password</a>
                        </td>
                        <td>
                            <a href="DispatcherMahasiswa?page=home&&nrp=${mahasiswa.nrp}" title="" class="btn medium green">Menu Utama</a>
                        </td>
                    </tr>
                </table>


                <div class="col_w460 float_l">
                    <div class="cleaner h20"></div>
                    <br/>
                    <h2>SMASH</h2>
                    <h5>Smart Application Scholarhip</h5>
                    <div class="cleaner h20"></div>

                    <div class="cleaner h20"></div>
                </div>


                <div class="col_w460 float_r">
                    <div class="cleaner h20"></div>

                    <form method='post'  action='DispatcherMahasiswa?page=goAturPasswordMember&&nrp_member=${member.nrp}'>
                        <br/>
                        <fieldset>
                            <table border=0>
                                <dd/><font color="green"><%= request.getAttribute("pesan")%></font>
                                <br/>
                                <tr>
                                    <td>
                                        Password Lama
                                    </td>
                                    <td>
                                        : ${member.password}
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        Password Baru
                                    </td>
                                    <td>
                                        : <input type=text name='password_baru' />
                                    </td>

                                </tr>

                            </table>
                            <br/>
                            <input type='submit' value='update'/>

                        </fieldset>
                    </form>
                </div>
                <div class="cleaner"></div>
            </div>
        </div>
    </body>
</html>