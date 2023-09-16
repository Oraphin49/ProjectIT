
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">


    <style>
        /* Style the wrapper */
        .wrapper {
            padding: 20px;
            background-color: #f0f0f0;
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

        /* Style the active tab */
        .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-bottom-color: transparent;
            cursor: default;
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
        *, ::after, ::before {
            box-sizing: content-box;
        }
    </style>
</head>
<body>
<nav>
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</nav>
<div class="wrapper col3">
    <div id="homecontent">
        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]"
                 style="margin-left: 0; width: 100%">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">ข้อมูลทั่วไป</a></li>
                    <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">โครงสร้างหลักสูตร</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">

                        <br />
                        <table  class="table table-bordered"
                               style="width: 100%">
                            <tr class="active">
                                <th>ชื่อหลักสูตร</th>
                                <th></th>
                            </tr>
                            <tbody>
                            <tr>
                                <td>ภาษาไทย :</td>
                                <td>หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ</td>
                            </tr>
                            <tr>
                                <td>ภาษาอังกฤษ :</td>
                                <td>Bachelor Of Science In Information Technology</td>
                            </tr>
                            </tbody>
                        </table>

                        <table  class="table table-bordered"
                               style="width: 100%">
                            <tr class="active">
                                <th>ชื่อปริญญาและสาขาวิชา</th>
                                <th></th>
                            </tr>
                            <tbody>

                            <tr>
                                <td>ชื่อปริญญาและสาขาวิชาเต็ม(ภาษาไทย) :</td>
                                <td>วิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ)</td>
                            </tr>
                            <tr>
                                <td>ชื่อปริญญาและสาขาวิชาย่อ(ภาษาไทย) :</td>
                                <td>วท.บ.(เทคโนโลยีสารสนเทศ)</td>
                            </tr>
                            <tr>
                                <td>ชื่อปริญญาและสาขาวิชาเต็ม(ภาษาอังกฤษ) :</td>
                                <td>Bachelor Of Science In Information Technology</td>
                            </tr>
                            <tr>
                                <td>ชื่อปริญญาและสาขาวิชาย่อ(ภาษาอังกฤษ) :</td>
                                <td>B.S. (Information Technology)</td>
                            </tr>
                            <tr>
                                <td>จำนวนหน่วยกิตที่เรียนตลอดหลักสูตร</td>
                                <td>จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 135 หน่วยกิต</td>
                            </tr>

                            </tbody>
                        </table>

                        <table  class="table table-bordered"
                               style="width: 100%">
                            <tr class="active">
                                <th>รูปแบบของหลักสูตร</th>
                                <th></th>
                            </tr>
                            <tbody>
                            <tr>
                                <td>รูปแบบ :</td>
                                <td>หลักสูตรระดับปริญญาตรี หลักสูตร 4 ปี</td>
                            </tr>
                            <tr>
                                <td>ภาษาที่ใช้ :</td>
                                <td>หลักสูตรจัดการศึกษาเป็นภาษาไทย</td>
                            </tr>
                            <tr>
                                <td>การรับเข้าศึกษา :</td>
                                <td>รับนักศึกษาไทย และนักศึกษาต่างประเทศ</td>
                            </tr>
                            <tr>
                                <td>ความร่วมมือกับสถาบันอื่น :</td>
                                <td>เป็นหลักสูตรของมหาวิทยาลัยโดยเฉพาะ</td>
                            </tr>
                            <tr>
                                <td>การให้ปริญญาแก่ผู้สำเร็จการศึกษา :</td>
                                <td>ให้ปริญญาเพียงสาขาวิชาเดียว</td>
                            </tr>
                            </tbody>
                        </table>
                        <table  class="table table-bordered"
                               style="width: 100%">
                            <tr class="active">
                                <th>อาชีพที่สามารถประกอบได้หลังสำเร็จการศึกษา</th>
                                <th></th>
                            </tr>
                            <tbody>

                            <tr>
                                <td>ประกอบไปด้วย :</td>
                                <td>นักเทคโนโลยีสารสนเทศ หรือนักเทคโนโลยีและสารสนเทศ<br>
                                    นักวิชาการเทคโนโลยีสารสนเทศ<br>
                                    นักวิเคราะห์และออกแบบระบบงาน<br> นักเขียนโปรแกรม
                                    หรือผู้พัฒนาซอฟต์แวร์<br>
                                    ผู้ดูแลระบบเครือข่ายและเครื่องแม่ข่าย<br>
                                    ผู้จัดการโครงการสารสนเทศ<br> นักพัฒนาเว็บไซต์<br>
                                    ผู้จัดการซอฟต์แวร์<br> นักทดสอบซอฟต์แวร์<br>
                                    นักวิชาชีพในสถานประกอบการที่มีการใช้เทคโนโลยีสารสนเทศ<br>
                                </td>
                            </tr>
                            </tbody>
                        </table>

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
