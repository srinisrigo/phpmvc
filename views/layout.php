<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="style.css" />
    <script src="jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </head>
  <body>
    <nav class="navbar navbar-expand navbar-default">
      <div class="collapse navbar-collapse">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">MVC</a>
        </div>
        <?php require_once('pagenavigation.php'); ?>
        <ul class="navbar-nav">
          <?php echo PageNavigation::GenerateMenu($menu); ?>
        </ul>
      </div>
    </nav>      
    <div class="container">
      <?php ini_set("memory_limit",-1); ?>
      <?php require_once('routes.php'); ?>
    </div>
  </body>
</html>
