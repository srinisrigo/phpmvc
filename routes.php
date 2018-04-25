<?php
	class Heos {
		public function __construct() {}
	};

  function call($controller, $action) {
    require_once('controllers/' . $controller . '_controller.php');

    switch($controller) {
      case 'pages':
        $controller = new PagesController();
      break;
      case 'posts':
        // we need the model to query the database later in the controller
        require_once('models/post.php');
        $controller = new PostsController();
      break;
      case 'countries':
        // we need the model to query the database later in the controller
        require_once('models/countries.php');
        $controller = new CountriesController();
      break;
    }

    $controller->{ $action }();
  }

  // we're adding an entry for the new controller and its actions
  $controllers = array('pages' => ['home', 'error'],
                       'posts' => ['index', 'show'],
                       'countries' => ['index', 'show', 'validate']);

  if (array_key_exists($controller, $controllers)) {
    if (in_array($action, $controllers[$controller])) {
      try {  
        call($controller, $action);
      }
      catch (Exception $ex) {
        call('pages', 'error');
      }
    } else {
      call('pages', 'error');
    }
  } else {
    call('pages', 'error');
  }    

  function getFooter($obj, $controller, $action) {
    echo '<div class="row border-bottom border-right">';
    echo '<div class="col">';
    echo '<a href="'.(($obj->page > 1)? ('?controller='.$controller.'&action='.$action.'&page='.($obj->page-1)):'javascript:void(0)').'">&#60;&#60;previous</a>';
    echo '</div>';
    echo '<div class="col text-center">';
    echo $obj->records.' records';
    echo '</div>';
    echo '<div class="col text-right">';
    echo '<a href="'.(($obj->pages > $obj->page)? ('?controller='.$controller.'&action='.$action.'&page='.($obj->page+1)):'javascript:void(0)').'">next&#62;&#62;</a>';
    echo '</div>';
    echo '</div>';
  }

	function parseInput($data) {
	  $data = trim($data);
	  $data = stripslashes($data);
	  $data = htmlspecialchars($data);
	  return $data;
	}

?>
