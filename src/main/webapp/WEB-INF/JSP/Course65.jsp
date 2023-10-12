
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
                                            <div class="info-value">หลักสูตรจัดการศึกษาเป็นภาษาไทย และ/หรือภาษาอังกฤษ</div>
                                        </div>
                                        <!-- ข้อมูลการให้ปริญญาแก่ผู้สำเร็จการศึกษา -->
                                        <div class="info-item">
                                            <div class="info-label">การรับเข้าศึกษา :</div>
                                            <div class="info-value">รับนักศึกษาทั้งไทยและนักศึกษาต่างประเทศที่มีพื้นฐานภาษาไทย</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- ข้อมูลจำนวนหน่วยกิตที่เรียนตลอดหลักสูตร -->
                                <div class="info-item">
                                    <div class="info-label">จำนวนหน่วยกิตที่เรียนตลอดหลักสูตร :</div>
                                    <div class="info-value">จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 120 หน่วยกิต</div>
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
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาด้านสังคมและวัฒนธรรม</td>
                                <td>6</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาด้านคุณค่าความเป็นมนุษย์และการใช้ชีวิต</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาด้านภาษาและการสื่อสาร</td>
                                <td>12</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาด้านการคิดคำนวณ การใช้เหตุผลและเทคโนโลยี</td>
                                <td>6</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- ด้านการเป็นผู้ประกอบการ</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td><b>หมวดวิชาเฉพาะ</b></td>
                                <td>84</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาแกน</td>
                                <td>18</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาเฉพาะด้าน</td>
                                <td>51</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาประเด็นด้านองค์การและระบบสารสนเทศ</td>
                                <td>9</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาเทคโนโลยีเพื่องานประยุกต์</td>
                                <td>21</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาเทคโนโลยีและวิธีการทางซอฟต์แวร์</td>
                                <td>12</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">-
                                    กลุ่มวิชาโครงสร้างพื้นฐานของระบบ</td>
                                <td>9</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;- กลุ่มวิชาเอกเลือก</td>
                                <td>9</td>
                            </tr>
                            <tr>
                                <td style="padding: 0 45px;">- กลุ่มวิชาประสบการณ์ภาคสนาม</td>
                                <td>6</td>
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
                                                    <td style="width: 10%">10700101</td>
                                                    <td style="width: 80%">สังคมโลกสมัยใหม่ในชีวิตประจำวัน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700102</td>
                                                    <td style="width: 80%">อารยธรรมโลกและโลกสมัยใหม่</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700105</td>
                                                    <td style="width: 80%">มนุษย์ สังคม เทคโนโลยีและสิ่งแวดล้อม</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700304</td>
                                                    <td style="width: 80%">ภาษาไทยเพื่องานเขียนเชิงวิชาการ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700307</td>
                                                    <td style="width: 80%">ทักษะภาษาอังกฤษสำหรับศตวรรษที่ 21</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700308</td>
                                                    <td style="width: 80%">ภาษาอังกฤษในชีวิตประจำวัน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300402</td>
                                                    <td style="width: 80%">การใช้ชีวิตในสังคมดิจิทัล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300404</td>
                                                    <td style="width: 80%">การตัดสินใจในชีวิตประจำวัน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10200504</td>
                                                    <td style="width: 80%">การเป็นผู้ประกอบการ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10200505</td>
                                                    <td style="width: 80%">การตลาดบนสมาร์ทโฟน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10204428</td>
                                                    <td style="width: 80%">การบริการทางการเงินบนระบบดิจิทัล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306492</td>
                                                    <td style="width: 80%">นวัตกรรมดิจิทัลสตาร์ทอัพ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306335</td>
                                                    <td style="width: 80%">การประยุกต์ใช้การประมวลผลกลุ่มเมฆ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306431</td>
                                                    <td style="width: 80%">การเขียนโปรแกรมขั้นต้นสำหรับงานวิทยากรข้อมูลและแสดงผล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <!-- --End Subject-- -->
                                                <tr>
                                                    <td></td>
                                                    <td><b>รวม</b></td>
                                                    <td><b>42</b></td>
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
                                                    <td style="width: 10%">10700304</td>
                                                    <td style="width: 80%">ภาษาไทยเพื่องานเขียนเชิงวิชาการ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300402</td>
                                                    <td style="width: 80%">การใช้ชีวิตในสังคมดิจิทัล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306102</td>
                                                    <td style="width: 80%">ตรรกะและเทคนิคการเขียนโปรแกรม</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300404</td>
                                                    <td style="width: 80%">การตัดสินใจในชีวิตประจำวัน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10305100</td>
                                                    <td style="width: 80%">คณิตศาตสร์พื้นฐาน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">หมวดวิชาทั่วไป กลุ่มสังคมและวัฒนธรรม วิชาที่ 1</td>
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
                                                    <td style="width: 10%">10306103</td>
                                                    <td style="width: 80%">กระบวนการพัฒนาซอฟต์แวร์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306105</td>
                                                    <td style="width: 80%">การออกแบบส่วนติดต่อกับผู้ใช้และประสบการณ์ผู้ใช้</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700308</td>
                                                    <td style="width: 80%">ภาษาอังกฤษในชีวิตประจำวัน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10100214</td>
                                                    <td style="width: 80%">เกษตรเพื่อชีวิต</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10305205</td>
                                                    <td style="width: 80%"> ตรรกศาสตร์เชิงคณิตศาสตร์เบื้องต้น</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">หมวดวิชาศึกษาทั่วไป กลุ่มสังคมและวัฒนธรรม วิชาที่ 2</td>
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
                                                    <td style="width: 10%">10306213</td>
                                                    <td style="width: 80%">แนวคิดเชิงวัตถุ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306241</td>
                                                    <td style="width: 80%">ระบบบริหารจัดการเว็บไซต์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306242</td>
                                                    <td style="width: 80%">พื้นฐานระบบเครือข่ายคอมพิวเตอร์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700307</td>
                                                    <td style="width: 80%">ทักษะภาษาอังกฤษสำหรับศตวรรษที่ 21</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306232</td>
                                                    <td style="width: 80%">ระบบฐานข้อมูล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">วิชาเสรี วิชาที่ 1</td>
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
                                                    <td style="width: 10%">10306214</td>
                                                    <td style="width: 80%">การโปรแกรมเชิงวัตถุ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306215</td>
                                                    <td style="width: 80%">การโปรแกรมฝั่งไคลเอนต์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306332</td>
                                                    <td style="width: 80%">การโปรแกรมฐานข้อมูล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10304301</td>
                                                    <td style="width: 80%">หลักสถิติ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">.......</td>
                                                    <td style="width: 80%">หมวดวิชาศึกษาทั่วไป กลุ่มการเป็นผู้ประกอบการ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">วิชาเลือกเสรี วิชาที่ 2</td>
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
                                                    <td style="width: 10%">10306311</td>
                                                    <td style="width: 80%">โปรแกรมฝั่งเซิร์ฟเวอร์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306322</td>
                                                    <td style="width: 80%">การออกแบบการทดสอบซอฟต์แวร์</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306492 </td>
                                                    <td style="width: 80%">นวัตกรรมดิจิทัลสตาร์ทอัพ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10700309</td>
                                                    <td style="width: 80%">สนทนาภาษาอังกฤษ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">วิชาเอกเลือกเสรี วิชาที่ 1</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">วิชาเอกเลือกเสรี วิชาที่ 2</td>
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
                                                    <td style="width: 10%">10306321</td>
                                                    <td style="width: 80%">การวิเคราะห์และออกแบบระบบสมัยใหม่</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306396</td>
                                                    <td style="width: 80%">โครงงานขนาดเล็กทางเทคโนโลยีสานสนเทศ</td>
                                                    <td style="width: 10%">2</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306324</td>
                                                    <td style="width: 80%">การทดสอบซอฟต์แวร์อัตโนมัติ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10204428</td>
                                                    <td style="width: 80%">การบริหารทางการเงินระบบดิจิทัล</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>

                                                <tr>
                                                    <td style="width: 10%">........</td>
                                                    <td style="width: 80%">กลุ่มวิชาเอกเลือก วิชาที่ 3</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <!-- --End Subject-- -->
                                                <tr>
                                                    <td></td>
                                                    <td><b>รวม</b></td>
                                                    <td><b>14</b></td>
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
                                                    <td style="width: 10%">10306433</td>
                                                    <td style="width: 80%">การสื่อสารทางวิชาชีพเทคโนโลยีสารสนเทศ</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306495</td>
                                                    <td style="width: 80%">เทคโนโลยีสารสนเทศเพื่อบริการสังคม</td>
                                                    <td style="width: 10%">1</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10306496</td>
                                                    <td style="width: 80%">โครงงานเทคโนโลยีสารสนเทศ </td>
                                                    <td style="width: 10%">3</td>
                                                </tr>

                                                <tr>
                                                    <td style="width: 10%">10700311</td>
                                                    <td style="width: 80%">ภาษาอังกฤษเพื่อการสมัครงาน</td>
                                                    <td style="width: 10%">3</td>
                                                </tr>
                                                <!-- --End Subject-- -->
                                                <tr>
                                                    <td></td>
                                                    <td><b>รวม</b></td>
                                                    <td><b>10</b></td>
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
                                                    <td style="width: 10%">10300497</td>
                                                    <td style="width: 80%">สหกิจศึกษา  หรือ </td>
                                                    <td style="width: 10%">6</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300498</td>
                                                    <td style="width: 80%">การเรียนรู้อิสระ หรือ</td>
                                                    <td style="width: 10%">6</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 10%">10300499</td>
                                                    <td style="width: 80%">การศึกษา หรือ การฝึกงาน หรือ  ฝึกอบรมต่างประเทศ </td>
                                                    <td style="width: 10%">6</td>
                                                </tr>
                                                <!-- --End Subject-- -->
                                                <tr>
                                                    <td></td>
                                                    <td><b>รวม</b></td>
                                                    <td><b>6</b></td>
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
