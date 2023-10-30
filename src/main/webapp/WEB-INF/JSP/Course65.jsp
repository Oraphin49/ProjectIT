
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
