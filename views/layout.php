<DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class='header-div'>
        <header>
          <a href='/php_mvc_blog'>Home</a>
          <a href='?controller=posts&action=index'>Posts</a>
        </header>
    </div>
    <div class='content-div'>
        <?php require_once('routes.php'); ?>
    </div>
    <div class='footer-div'>
      <?php echo date('l jS \of F Y'); ?>
    </div>
  <body>
<html>
