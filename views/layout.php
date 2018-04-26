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
    <nav class="navbar navbar-expand navbar-default <?php echo isset($_SESSION['heosusermode'])? 'd-block':'d-none'; ?>">
      <div class="collapse navbar-collapse">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">&#9742; MVC &#937;</a>
        </div>
        <div class="collapse navbar-collapse justify-content-end">
          <?php require_once('pagenavigation.php'); ?>
          <ul class="navbar-nav">
            <?php echo PageNavigation::GenerateMenu($menu); ?>
            <li class='nav-item'>
              <a class='nav-link' href='?controller=signin&action=signout'>&#10754;</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>      
    <div class="container-fluid mb-5">
      <?php ini_set("memory_limit",-1); ?>
      <?php require_once('routes.php'); ?>
    </div>
  </body>
</html>
