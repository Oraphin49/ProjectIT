<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>หน้าแผนการเรียน</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }
        table {
            width: 80%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            font-family: Kanit;
        }

        th {
            background-color: #f2f2f2;
            font-family: Kanit;
        }
        #choices{
            width: 50%;
            height: 25px;
            margin-left: 25%;
            margin-top: 60px;
        }


         li {
            display:inline;
            margin:0;
            padding:0;
             font-family: Kanit;
        }

         .nn {
            float:left;
            margin:0;
            padding:0 0 0 4px;
            text-decoration:none;
             font-family: Kanit;
        }

    </style>
</head>
<body>
<nav>
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
    <br>
    <br>
    <br>
</nav>
<select id="choices" name="choices" >
    <option value="option1">แผนการเรียนหลักสูตรปรับปรุงปี 2560</option>
    <option value="option2">แผนการเรียนหลักสูตรปรับปรุงปี 2565</option>
</select>
<div class="wrapper col3" align="center">
    <div id="homecontent" align="center">
        <div class="studyPlan" id="2560" style="margin-top: 40px; width: 90%" >
            <ul id="myTabs" class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="#2560Level_0" role="tab" data-toggle="tab" class="nn">วิชารวม</a></li>
                <li role="presentation" class="active"><a href="#2560Level_1" role="tab" data-toggle="tab" class="nn">ชั้นปีที่ 1</a></li>
                <li role="presentation"><a href="#2560Level_2" role="tab" data-toggle="tab" class="nn">ชั้นปีที่ 2</a></li>
                <li role="presentation"><a href="#2560Level_3" role="tab" data-toggle="tab" class="nn">ชั้นปีที่ 3</a></li>
                <li role="presentation"><a href="#2560Level_4" role="tab" data-toggle="tab" class="nn">ชั้นปีที่ 4</a></li>
            </ul><br>
            <div id="myTabContent" class="tab-content">
                <!-- --Start Level-- -->
                <div role="tabpanel" id="2560Level_0" class="tab-pane fade ">
                    <!-- --Start StudyPlan-- -->
                    <div style="margin-top: 5px">
                        <b>วิชารวม</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ศศ 101</td>
                            <td style="width: 80%">เศรษฐศาสตร์เพื่อชีวิตประจำวันและการประกอบการ (Economics in Daily Life and Operations)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 021</td>
                            <td style="width: 80%">สังคมศาสตร์ในชีวิตประจำวัน (Social Sciences IN Everyday Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 022</td>
                            <td style="width: 80%">อารยธรรมโลก (World Civilization)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 104 </td>
                            <td style="width: 80%">มนุษย์และสิ่งแวดล้อม (Man AND Environment)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 302</td>
                            <td style="width: 80%">สังคมและวัฒนธรรมไทย (Thai Society AND Culture)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">กช 321</td>
                            <td style="width: 80%">เศรษฐกิจพอเพียงและการพัฒนาที่ยั่งยืน
                                (Sufficiency Economy AND Sustainable Development)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 011</td>
                            <td style="width: 80%">มนุษย์กับความงามทางศิลปะ (Man AND Arts Appreciation)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 012</td>
                            <td style="width: 80%">จิตวิทยาและพฤติกรรมมนุษย์ (Psychology AND Human Behavior)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 013</td>
                            <td style="width: 80%">สุขภาพเพื่อการดำรงชีวิต (Health FOR Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 180</td>
                            <td style="width: 80%">ศิลปะกับความคิดสร้างสรรค์ (Art AND Creative Thinking)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 304</td>
                            <td style="width: 80%">ศาสตร์และศิลป์แห่งปัญญาชน (Liberal Art of Intellectuals)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 305</td>
                            <td style="width: 80%">ประวัติศาสตร์และการพัฒนาของล้านนา (History AND Development of Lanna)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วท 101></td>
                            <td style="width: 80%">วิทยาศาสตร์เพื่อชีวิต (Science FOR Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วท 102</td>
                            <td style="width: 80%">การพัฒนาวิทยาศาสตร์และเทคโนโลยี (Development of Science AND Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 014</td>
                            <td style="width: 80%">การสืบค้นสารนิเทศเพื่อการศึกษา (Information Searching FOR Academic Study)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วอ 101</td>
                            <td style="width: 80%">วิศวกรรมเบื้องต้นในชีวิตประจำวัน (Basic Engineering IN Daily Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วอ 102</td>
                            <td style="width: 80%">นานาสาระเกี่ยวกับอาหารและยา (General Aspects of Food AND Drug)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">พง 100</td>
                            <td style="width: 80%">พลังงานสําหรับชีวิตประจําวัน (Energy for Daily Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 333</td>
                            <td style="width: 80%">เทคโนโลยีสารสนเทศส าหรับการเงินและการบัญชี (Information Technology FOR Finance AND Accounting)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 334</td>
                            <td style="width: 80%">พื้นฐานทางธุรกิจสำหรับเทคโนโลยีสารสนเทศ (Business fundamentals for Information Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 411</td>
                            <td style="width: 80%">การโปรแกรมบนอุปกรณ์เคลื่อนที่ (Mobile Programming)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 432</td>
                            <td style="width: 80%">การจัดการและควบคุมการเปลี่ยนแปลงของซอฟต์แวร์ (Software Configuration and Change Management)</td>
                            <td style="width: 10%">3</td>
                        </tr>

                        <tr>
                            <td style="width: 10%">ทส 434</td>
                            <td style="width: 80%">วิทยาการข้อมูลสำหรับธุรกิจ (Data Science for Business)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 435</td>
                            <td style="width: 80%">การพาณิชย์อิเล็กทรอนิกส์ (Electronics Commerce)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 492</td>
                            <td style="width: 80%">ผู้ประกอบการทางด้านเทคโนโลยีสารสนเทศ (Information Technology Entrepreneurship)</td>
                            <td style="width: 10%">3</td>
                        </tr>

                        <tr>
                            <td style="width: 10%">ทส 493</td>
                            <td style="width: 80%">การศึกษาหัวข้อสนใจด้านเทคโนโลยีสารสนเทศ (Special Topic in Information Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>78</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <!-- --End StudyPlan-- -->
                </div>
                <div role="tabpanel" id="2560Level_1"
                     class="tab-pane fade active in">
                    <!-- --Start StudyPlan-- -->
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 1</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ศท 031</td>
                            <td style="width: 80%">การใช้ภาษาไทย (Thai LANGUAGE USAGE)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 141</td>
                            <td style="width: 80%"> ภาษาอังกฤษพื้นฐาน 1 (Fundamental English 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ผษ 101</td>
                            <td style="width: 80%">เกษตรเพื่อชีวิต (Agriculture FOR Life)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">คศ 100</td>
                            <td style="width: 80%">คณิตศาสตร์ขั้นพื้นฐาน (Foundation of Mathematics)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 101</td>
                            <td style="width: 80%">เทคโนโลยีสารสนเทศคอมพิวเตอร์ (Computer Information Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 102</td>
                            <td style="width: 80%">ตรรกะและเทคนิคการเขียนโปรแกรม (Programming Logic and techniques)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 2</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ศท 001</td>
                            <td style="width: 80%">กลุ่มวิชาสังคมศาสตร์ วิชาที่ 1 (Social Sciences Subject 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 002</td>
                            <td style="width: 80%">กลุ่มวิชามนุษยศาสตร์ วิชาที่ 1 (Human Sciences Subject 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 005</td>
                            <td style="width: 80%">กลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์วิชาที่ 2 (Sciences and Mathematic Subject 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 142</td>
                            <td style="width: 80%">ภาษาอังกฤษพื้นฐาน 2 (Fundamental English 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 103</td>
                            <td style="width: 80%">กระบวนการพัฒนาซอฟต์แวร์ (Software Development PROCESS)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 105</td>
                            <td style="width: 80%">การออกแบบส่วนติดต่อกับผู้ใช้และประสบการณ์ผู้ใช้ (User Interface and User Experience Design)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>

                </div>
                <div role="tabpanel" id="2560Level_2"
                     class="tab-pane fade ">
                    <!-- --Start StudyPlan-- -->
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 1</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>

                        <!-- --Start Subject-- -->

                        <tr>
                            <td style="width: 10%">ศท 003</td>
                            <td style="width: 80%">กลุ่มวิชาสังคมศาสตร์ วิชาที่ 2 (Social Sciences Subject 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 004</td>
                            <td style="width: 80%">กลุ่มวิชามนุษยศาสตร์ วิชาที่ 2 (Human Sciences Subject 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 241</td>
                            <td style="width: 80%">ภาษาอังกฤษเชิงวิทยาศาสตร์และเทคโนโลยี  1 (English FOR Science AND Technology 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">คศ 205</td>
                            <td style="width: 80%">ตรรกศาสตร์และคณิตศาสตร์เบื้องต้น (Introduction TO Mathematical Logic)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 241</td>
                            <td style="width: 80%">ระบบบริหารจัดการเว็บไซต์ (Web Content Management System)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 213</td>
                            <td style="width: 80%">แนวคิดเชิงวัตถุ (Object Oriented Concepts)</td>
                            <td style="width: 10%">3</td>
                        </tr>

                        <!-- --End Subject-- -->

                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 2</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ลส 001</td>
                            <td style="width: 80%">วิชาเลือกเสรี วิชาที่ 1 (Free elective Subject 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">สต 301</td>
                            <td style="width: 80%">หลักสถิติ (Principles of Statistics)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 232</td>
                            <td style="width: 80%">ระบบฐานข้อมูล (DATABASE System)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 214</td>
                            <td style="width: 80%">การโปรแกรมเชิงวัตถุ (Object Oriented Programming)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 215</td>
                            <td style="width: 80%">การโปรแกรมฝั่งไคลเอนต์ (CLIENT Side Programming)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 242</td>
                            <td style="width: 80%">พื้นฐานระบบเครือข่ายคอมพิวเตอร์ (Fundamental of Networking System)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <!-- --End StudyPlan-- -->
                </div>
                <div role="tabpanel" id="2560Level_3"
                     class="tab-pane fade ">
                    <!-- --Start StudyPlan-- -->
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 1</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ลส 002</td>
                            <td style="width: 80%">วิชาเลือกเสรี วิชาที่ 2 (Free elective Subject 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 343</td>
                            <td style="width: 80%">สนทนาภาษาอังกฤษ (English Conversation for the Workplace)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 322 </td>
                            <td style="width: 80%">การทดสอบซอฟต์แวร์ (Software Testing)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 332</td>
                            <td style="width: 80%">การโปรแกรมฐานข้อมูล (DATABASE Programming)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 311</td>
                            <td style="width: 80%">การโปรแกรมฝั่งเซิร์ฟเวอร์ (SERVER Side Programming)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 321</td>
                            <td style="width: 80%">การวิเคราะห์และออกแบบระบบ (System Analysis AND Design)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 2</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>

                        <!-- --Start Subject-- -->

                        <tr>
                            <td style="width: 10%">ทส 001</td>
                            <td style="width: 80%">กลุ่มวิชาเอกเลือก วิชาที่ 1 (Major Elective Subject 1)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 002</td>
                            <td style="width: 80%">กลุ่มวิชาเอกเลือก วิชาที่ 2
                                (Major Elective Subject 2)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ศท 348</td>
                            <td style="width: 80%">ภาษาอังกฤษเพื่อการศึกษาต่อและการประกอบอาชีพ (English for Further Studies and Careers)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 324</td>
                            <td style="width: 80%">การทดสอบซอฟต์แวร์อัตโนมัติ (Automated Software Testing)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 396</td>
                            <td style="width: 80%">โครงงานขนาดเล็กทางเทคโนโลยีสารสนเทศ (Mini-Project IN Information Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>

                        <tr>
                            <td style="width: 10%">> ทส 323</td>
                            <td style="width: 80%">การวิเคราะห์และออกแบบระบบเชิงวัตถุด้วยยูเอ็มแอล (Object Oriented Development WITH UML)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>18</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <!-- --End StudyPlan-- -->
                </div>
                <div role="tabpanel" id="2560Level_4"
                     class="tab-pane fade ">

                    <!-- --Start StudyPlan-- -->
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 1</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">ทส 003</td>
                            <td style="width: 80%">กลุ่มวิชาเอกเลือก วิชาที่ 3 (Major Elective Subject 3)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 433</td>
                            <td style="width: 80%">การสื่อสารทางวิชาชีพเทคโนโลยีสารสนเทศ (Information Technology Professional Communication)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">ทส 496</td>
                            <td style="width: 80%">โครงงานเทคโนโลยีสารสนเทศ (Project IN Information Technology)</td>
                            <td style="width: 10%">3</td>
                        </tr>

                        <tr>
                            <td style="width: 10%">ทส 495</td>
                            <td style="width: 80%">เทคโนโลยีสารสนเทศเพื่อบริการสังคม (Information Technology for Social Service)</td>
                            <td style="width: 10%">3</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>12</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="margin-top: 5px">
                        <b>ภาคเรียนที่ 2</b>
                    </div>
                    <table  class="table table-bordered" align="center">
                        <tbody>
                        <tr class="active">
                            <th>รหัสวิชา</th>
                            <th>ชื่อรายวิชา</th>
                            <th>หน่วยกิต</th>
                        </tr>
                        <!-- --Start Subject-- -->
                        <tr>
                            <td style="width: 10%">วท 497</td>
                            <td style="width: 80%">สหกิจศึกษา (Co-operative Education)</td>
                            <td style="width: 10%">9</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วท 498</td>
                            <td style="width: 80%">การเรียนรู้อิสระ (Independent Study)</td>
                            <td style="width: 10%">9</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">วท 499 </td>
                            <td style="width: 80%">การศึกษา หรือ การฝึกงาน หรือ  ฝึกอบรมต่างประเทศ (Overseas Study Training OR Internship)</td>
                            <td style="width: 10%">9</td>
                        </tr>
                        <!-- --End Subject-- -->
                        <tr>
                            <td></td>
                            <td><b>รวม</b></td>
                            <td><b>27</b></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>

