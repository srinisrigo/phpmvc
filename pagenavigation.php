
 <?php
  function modifyNavbar($items) {
    $ref = isset($_GET['controller']) && isset($items[$_GET['controller']]) ? $_GET['controller'] : null;
    if($ref) {
      $items[$ref]['class'] .= 'active'; 
    }
    return $items;
  }

  $menu = array(
    'callback' => 'modifyNavbar',
    'items' => array(
      'pages'  => array('text'=>'Home',  'url'=>'?controller=pages&action=home', 'class'=>null),
      'posts'  => array('text'=>'Away',  'url'=>'?controller=posts&action=index', 'class'=>null),
      'countries' => array('text'=>'Countries', 'url'=>'?controller=countries&action=index', 'class'=>null)
    )
  ); 

  class PageNavigation {
    public static function GenerateMenu($menu) {
        if(isset($menu['callback'])) {
          $items = call_user_func($menu['callback'], $menu['items']);
        }
        
        $html = "";
        foreach($items as $item) {
          $html .= "<li class='nav-item {$item['class']}'><a class='nav-link' href='{$item['url']}'>{$item['text']}</a></li>";
        }
        
        return $html;
      }

  };  

  //echo PageNavigation::GenerateMenu($menu, "navbar");
?> 