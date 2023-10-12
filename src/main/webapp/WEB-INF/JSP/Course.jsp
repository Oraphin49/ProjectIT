
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" style="min-height: 100px;margin-bottom: 0px">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }

        /* ปรับแต่งสไตล์ของส่วน "อาชีพที่สามารถประกอบได้" */
        .info-value ul {
            list-style: none;
            padding-left: 0;
        }

        .info-value ul li {
            margin-bottom: 5px;
            padding-left: 20px;
            position: relative;
        }

        .info-value ul li:before {
            content: "\2022";
            position: absolute;
            left: 0;
            color: #aa1818;
        }
        @media (min-width: 992px) {
            .info-section .container-fluid {
                display: flex;
            }

            .info-section .col-lg-6 {
                flex: 0 0 50%; /* แบ่งให้แต่ละคอลัมน์เป็น 50% ของความกว้าง */
            }
        }
        .info-section {
            background-color: #f9f9f9;
            padding: 20px;
        }

        .info-label {
            font-weight: bold;
            color: #aa1818;
            font-size: 15px;
        }

        .info-value {
            font-family: 'Kanit', sans-serif;
            margin-bottom: 10px;
        }
        .info-item{
            margin-top: 20px;
        }

        /* Style the wrapper */
        .wrapper {
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* Style the tab content */
        .tab-content {
            padding: 20px;
            border: 1px solid #ddd;
            border-top: none;
            background-color: #fff;
        }

        /* Style the tables */
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .table th, .table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            font-family: Kanit;
        }

        .table th.active {
            background-color: #f5f5f5;
        }

        /* Center the content in the col-xs-12 and col-sm-8 div */
        .col-xs-12, .col-sm-8 {
            margin: 0 auto;
            float: none;
        }


        /* Style the header of each tab content */
        .tab-pane h3 {
            margin-top: 0;
            padding-top: 10px;
            border-top: 1px solid #ddd;
        }

        /* Add some spacing between rows */
        .tab-content .table tbody tr:not(:last-child) {
            margin-bottom: 10px;
        }
        h2{
            font-weight: bold;
            font-family: Kanit;
        }
    </style>
</head>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row"  style="display: block">
            <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
        </div>
    </div>
</nav>
<br><br><br><br><br><br><br><br>
<h2 style="color: #aa1818;" align="center">ข้อมูลหลักสูตรปี65</h2>
<div class="wrapper col3">
    <div id="homecontent">
        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]"
                 style="margin-left: 0; width: 100%; margin-top: 20px">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">ข้อมูลทั่วไป</a></li>
                    <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">โครงสร้างหลักสูตร</a></li>
                    <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">แผนการเรียน</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content" >
                    <div role="tabpanel" class="tab-pane active" id="tab1" >

                        <!-- ส่วนของข้อมูลทั่วไป -->
                        <div class="info-section" style="margin-left: 40px">
                            <div class="container-fluid">
                                <div class="row">
                                    <!-- คอลัมน์ฝั่งซ้าย -->
                                    <div class="col-lg-6">
                                        <!-- ข้อมูลชื่อหลักสูตร (ภาษาไทย) -->
                                        <div class="info-item">
                                            <div class="info-label">ชื่อหลักสูตร (ภาษาไทย) :</div>
                                            <div class="info-value">หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ</div>
                                        </div>
                                        <!-- ข้อมูลชื่อปริญญาและสาขาวิชาเต็ม (ภาษาไทย) -->
                                        <div class="info-item">
                                            <div class="info-label">ชื่อปริญญาและสาขาวิชาเต็ม (ภาษาไทย) :</div>
                                            <div class="info-value">วิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ)</div>
                                        </div>
                                        <!-- ข้อมูลรูปแบบของหลักสูตร -->
                                        <div class="info-item">
                                            <div class="info-label">รูปแบบ :</div>
                                            <div class="info-value">หลักสูตรระดับปริญญาตรี หลักสูตร 4 ปี</div>
                                        </div>
                                        <!-- ข้อมูลความร่วมมือกับสถาบันอื่น -->
                                        <div class="info-item">
                                            <div class="info-label">ความร่วมมือกับสถาบันอื่น :</div>
                                            <div class="info-value">เป็นหลักสูตรของมหาวิทยาลัยโดยเฉพาะ</div>
                                        </div>
                                    </div>

                                    <!-- คอลัมน์ฝั่งขวา -->
                                    <div class="col-lg-6">
                                        <!-- ข้อมูลชื่อหลักสูตร (ภาษาอังกฤษ) -->
                                        <div class="info-item">
                                            <div class="info-label">ชื่อหลักสูตร (ภาษาอังกฤษ) :</div>
                                            <div class="info-value">Bachelor Of Science In Information Technology</div>
                                        </div>
                                        <!-- ข้อมูลชื่อปริญญาและสาขาวิชาย่อ -->
                                        <div class="info-item">
                                            <div class="info-label">ชื่อปริญญาและสาขาวิชาย่อ (ภาษาไทย) :</div>
                                            <div class="info-value">วท.บ.(เทคโนโลยีสารสนเทศ)</div>
                                        </div>
                                        <!-- ข้อมูลภาษาที่ใช้ -->
                                        <div class="info-item">
                                            <div class="info-label">ภาษาที่ใช้ :</div>
                                            <div class="info-value">หลักสูตรจัดการศึกษาเป็นภาษาไทย </div>
                                        </div>
                                        <!-- ข้อมูลการให้ปริญญาแก่ผู้สำเร็จการศึกษา -->
                                        <div class="info-item">
                                            <div class="info-label">การให้ปริญญาแก่ผู้สำเร็จการศึกษา :</div>
                                            <div class="info-value">ให้ปริญญาเพียงสาขาวิชาเดียว</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- ข้อมูลจำนวนหน่วยกิตที่เรียนตลอดหลักสูตร -->
                                <div class="info-item">
                                    <div class="info-label">จำนวนหน่วยกิตที่เรียนตลอดหลักสูตร :</div>
                                    <div class="info-value">จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 135 หน่วยกิต</div>
                                    <br>
                                    <div class="info-label">อาชีพที่สามารถประกอบได้หลังสำเร็จการศึกษา :</div>
                                    <div class="info-value" style="color: #111111; font-family: Kanit">
                                        <p style="color: #111111; font-family: Kanit; ">นักเทคโนโลยีสารสนเทศ หรือนักเทคโนโลยีและสารสนเทศ</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักวิชาการเทคโนโลยีสารสนเทศ</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักวิเคราะห์และออกแบบระบบงาน</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักเขียนโปรแกรม หรือผู้พัฒนาซอฟต์แวร์</p>
                                        <p style="color: #111111; font-family: Kanit; ">ผู้ดูแลระบบเครือข่ายและเครื่องแม่ข่าย</p>
                                        <p style="color: #111111; font-family: Kanit; ">ผู้จัดการโครงการสารสนเทศ</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักพัฒนาเว็บไซต์</p>
                                        <p style="color: #111111; font-family: Kanit; ">ผู้จัดการซอฟต์แวร์</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักทดสอบซอฟต์แวร์</p>
                                        <p style="color: #111111; font-family: Kanit; ">นักวิชาชีพในสถานประกอบการที่มีการใช้เทคโนโลยีสารสนเทศ</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <br />

                        <table id="tableStudy" class="table table-bordered"
                               style="width: 100%">
                            <tr class="active">
                                <th>โครงสร้างหลักสูตร</th>
                                <th>หน่วยกิต</th>
                            </tr>
                            <tbody>
                            <tr>
                                <td><b>หมวดวิชาศึกษาทั่วไป</b></td>
                                <td>30</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาสังคมศาสตร์</td>
                                <td>6</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชามนุษยศาสตร์</td>
                                <td>6</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาภาษา</td>
                                <td>12</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์</td>
                                <td>6</td>
                            </tr>
                            <tr>
                                <td><b>หมวดวิชาเฉพาะด้าน</b></td>
                                <td>96</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาแกน</td>
                                <td>21</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาเอกบังคับ</td>
                                <td>66</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาประเด็นด้านองค์การและระบบสารสนเทศ</td>
                                <td>9</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาเทคโนโลยีเพื่องานประยุกต์</td>
                                <td>18</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาเทคโนโลยีและวิธีการทางซอฟต์แวร์</td>
                                <td>12</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาโครงสร้างพื้นฐานของระบบ</td>
                                <td>12</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">- กลุ่มวิชาอื่นๆ</td>
                                <td>15</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาเอกเลือก</td>
                                <td>9</td>
                            </tr>
                            <tr>
                                <td><b>หมวดวิชาเลือกเสรี</b></td>
                                <td>6</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <div class="wrapper col3" align="center">
                            <div id="content" align="center">
                                <div class="studyPlan" id="2560" style=" width: 90%">
                                    <ul id="myTabs" class="nav nav-tabs" role="tablist">
                                        <!-- เพิ่มแท็บสำหรับแต่ละชั้นปี -->
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('.nav-tabs a').click(function() {
            $(this).tab('show');
        });
    });

</script>
</div>
</body>
<footer >
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
