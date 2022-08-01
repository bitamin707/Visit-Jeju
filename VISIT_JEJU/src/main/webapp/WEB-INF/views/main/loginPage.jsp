<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .entire {
        display: flex;
        justify-content: center; /*수평정렬*/
        align-items: center; /*수직정렬*/
        min-height: 100vh;
        }

        .login {
        position:absolute;
        display:flex;
        justify-content: center;
        align-items: center;
        border-radius: 1rem;
        border:3px solid;
        width:500px;
        height:300px;
        background-color:white;
        }

        .input1 {
            height:40px;
            width:200px;
            border:3px;
            border-style:inset;
        }

        #loginbt2{
            background-color:white;
            width:100px;
            height:30px;
        }

        #loginbt1{
            background-color:white;
            width:100px;
            height:30px;
        }
    </style>
</head>
<body>
    <div class="entire">
        <img src="../../img/bg.png" style="width:100%; opacity:0.5;">
        <div class="login">
            <div class="interface">
                <form method="GET" action="main" name="infor">
                <input class="input1" type="text" placeholder="Username" name="id"><br><br>
                <input class="input1" type="text" placeholder="Password" name="pw"><br><br>
                
                
                <input id="loginbt1" type="submit" value="로그인">
                </form>
            </div>
        </div>
    </div>
</body>
</html>