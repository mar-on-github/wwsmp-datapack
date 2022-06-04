<?php
require_once(__DIR__ . "/vendor/autoload.php");
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__, '/.env.local');
    $dotenv->load();
function topnav()
{
    echo "<div class=\"topnav\">";
    topnavitem("/home", "Home");
    topnavitem("/news", "News");
    topnavitem("/bluemap", "Bluemap");
    echo "</div>";
}
function topnavitem(string $uri, string $name)
{
    if (($_SERVER['REQUEST_URI']) === $uri) {
        echo "<a class=\"active\" href=\"" . $uri . "\">" . $name . "</a>";
    } else {
        echo "<a href=\"" . $uri . "\">" . $name . "</a>";
    }
}
function sendmaramessage(string $message)
{
    $fp = @fsockopen("udp://" . ':' . $_ENV['rconpassword'] . '@localhost', $_ENV['rconport'], $errno, $errstr);
    if ($fp) {
        $request = chr(1) . chr(0) . chr(242) . chr(strlen($rcon)) . $rcon . pack("S", strlen('mail that_mar \"$message from anonymous\"')) . "mail that_mar \"$message from anonymous\"";
        fwrite($fp, $request);
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #04AA6D;
            color: white;
        }
    </style>
    <?php
    if (($_SERVER['REQUEST_URI']) === '/bluemap') {
        header("Location: http://wwsmp.from-mar.com:8100/");
        die;
    }
    if (($_SERVER['REQUEST_URI']) === '/') {
        header("Location: /home");
        die;
    }
    if (($_SERVER['REQUEST_URI']) === '/home') {
    ?>
</head>

<body>

    <?php
        topnav();
    ?>

    <div style="text-align: center;padding-left:16px">
        <h1>WWSMP web</h1>
        <p>As you can see, this page is a work in progress.</p>
    </div>

</body>

</html>
<?php
        die;
    }
    if (($_SERVER['REQUEST_URI']) === '/news') {
?>

    </head>

    <body>

        <?php
        topnav();
        ?>

        <div style="text-align: center;padding-left:16px">
            <p>As you can see, this page is a work in progress.</p>
            <?php

            ?>
        </div>

    </body>

    </html>
<?php
        die;
    }
    if (($_SERVER['REQUEST_URI']) === '/contact') {
?>
    </head>

    <body>

        <?php
        topnav();
        ?>
        <?php
        if (isset($_POST['message'])) {
            sendmaramessage($_POST['message']);
            echo "<p>Message sent. Go <a href=\"/home\">back</a> now?</p>";
        } else {

        ?>
<h1>Send message to @that_mar in WWSMP</h1>

            <div style="text-align: center;padding-left:16px">
                <form action="/contact" method="post" accept-charset="UTF-8">
                    <input type="text" name="message">
                    <input type="submit">
                </form>
        <?php
        }
        die;
    }
        ?>