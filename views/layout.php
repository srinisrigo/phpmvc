<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">MVC</a>
        </div>
        <?php require_once('pagenavigation.php'); ?>
        <ul class="nav navbar-nav">
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
