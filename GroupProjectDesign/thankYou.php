<!DOCTYPE html>

<html>
<head>
  <title>Thank you</title>
  <link rel="stylesheet" href="stylesheets/style.css">
</head>

<body>
  <?php
    function sanitizeString($field) {

      $output = filter_input(INPUT_POST, $field, FILTER_SANITIZE_STRING);

      return $output;
    }

    $name = sanitizeString($_POST["uName"]);
  ?>
  <div id="wrapper">
    <header class="panel">
      <img class="imagelogo" height="100px" src="images/GAMEBOOk_image_logo.png">
      <img class="textlogo" height="45px" src="images/GAMEBOOK_text_logo.png">
    </header>

    <div class="panel" id="nav">
      <div id="profileNavCard">
          <h3>HI, USER</h3>
      </div>

      <ul>
          <li><a href="index.html">DASHBOARD</a></li>
          <li><a href="Events.html">EVENTS</a></li>
          <li><a href="Games.html">GAMES</a></li>
          <li><a href="Group.html">GROUP</a></li>
      </ul>
    </div>

    <main>
      <content>
        <h2>Thank You, <?= $name ?>.</h2>
        <p>We have recieved you comments and will get back to you soon.</p>
      </content>
    </main>

    <footer id="mainFooter" class="panel">
      <p>
          &copy; GAMEBOOK 2019
      </p>
    </footer>
  </div>
</body>
</html>