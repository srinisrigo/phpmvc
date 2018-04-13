<!doctype html>
<html>
  <head>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class='header-div'>
        <a href='?controller=pages&action=home'>Home</a>
        <a href='?controller=posts&action=index'>Posts</a>
    </div>
    <div class='content-div'>
        <?php ini_set("memory_limit",-1); ?>
        <?php require_once('routes.php'); ?>
    </div>
    <div class='footer-div'>
      <?php echo date('l jS \of F Y'); ?>
    </div>
  </body>
</html>
