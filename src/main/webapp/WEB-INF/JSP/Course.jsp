
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
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
<nav style="box-sizing: revert; ">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</nav>
<br><br>
<h2 style="color: #aa1818;" align="center">ข้อมูลหลักสูตร</h2>
<div class="wrapper col3">
    <div id="homecontent">
        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]"
                 style="margin-left: 0; width: 100%; margin-top: 20px">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">ข้อมูลทั่วไป</a></li>
                    <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">โครงสร้างหลักสูตร</a></li>
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
                                            <div class="info-value">หลักสูตรจัดการศึกษาเป็นภาษาไทย</div>
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
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</div>
</body>
<footer >
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
