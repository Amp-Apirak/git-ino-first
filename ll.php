
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <style>
        body {
            padding: 10px;
            background: #ffffff;
            text-align: center;
            font-family: arial;
            font-size: 16px;
            color: #333333;
        }

        .label_div {
            width: 80px;
            float: left;
            text-align: right;
            padding-right: 10px;
            line-height: 28px;
        }

        .form_content {
            height: 30px;
            float: left;
        }

        .form_content input {
            height: 20px;
            width: 200px;
            padding: 3px;
            border: 1px solid #cccccc;
            border-radius: 0;
            font-size: 14px;
        }

        .form_content ul {
            width: 206px;
            border: 1px solid #eaeaea;
            position: absolute;
            z-index: 9;
            background: #f3f3f3;
            list-style: none;
        }

        .form_content ul li {
            padding: 2px;
        }

        .form_content ul li:hover {
            background: #eaeaea;
        }

        #name_list {
            display: none;
            margin: 0;
            padding: 0;
        }
    </style>
</head>

<body>


    <?php

    $conn = new mysqli('localhost', 'root', '1234', 'ino_db'); //ประกาศตัวแปล $conn เก็บค่า การเชื่อมต่อ 
    if ($conn->connect_error) {  //ตรวจสอบเงื่อนไข ฐานข้อมูลเชื่อมต่อได้หรือไม่ หากไม่ให้แสดง error เป็นตัวเลข ออกมา
        die("Connection failed: " . $conn->connect_error);
    }
    $conn->Set_charset("utf8");

    

    

    $sql = "SELECT * FROM contact WHERE contact_fullname LIKE '%" . $_POST['keyword'] . "%' ORDER BY contact_fullname ASC LIMIT 0, 10";
    $query = $conn->query($sql);

    while ($arr = $query->fetch_assoc()) {
        $name_search = str_replace($_POST['keyword'], '<b><font color="#417fe2">' . $_POST['keyword'] . '</font></b>', $arr['contact_fullname']);
        echo '<li onclick="putValue(\'' . str_replace("'", "\'", $arr['contact_fullname']) . '\',\'' . str_replace("'", "\'", $arr['contact_position']) . '\',\'' . str_replace("'", "\'", $arr['contact_tel']) . '\')">' . $name_search . '</li>';
    }
    ?>

    <form>
        <div class="label_div">ชื่อ : </div>
        <div class="form_content">
            <input type="text" id="contact_fullname">
            <ul id="name_list"></ul>
        </div>
        <div class="label_div">Email : </div>
        <div class="form_content">
            <input type="text" id="contact_position">
        </div>
        <div class="label_div">เบอร์โทร : </div>
        <div class="form_content">
            <input type="text" id="contact_tel">
        </div>
    </form>
</body>

</html>

<script>
    $(function() {
        $('#contact_fullname').keyup(function() {
            if ($(this).val().length >= 1) {
                $.post('lm.php', {
                    keyword: $('#contact_fullname').val()
                }, function(data) {
                    $('#name_list').show();
                    $('#name_list').html(data);
                });
            } else {
                $('#name_list').hide();
            }

        });
    });

    function putValue(contact_fullname, contact_position, contact_tel) {
        $('#contact_fullname').val(contact_fullname);
        $('#contact_position').val(contact_position);
        $('#contact_tel').val(contact_tel);
        $('#name_list').hide();
    }
</script>