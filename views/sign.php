<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script src="jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>    
    <div class="container-fluid">
      <?php ini_set("memory_limit",-1); ?>
      <?php require_once('routes.php'); ?>
    </div>
  </body>
</html>
