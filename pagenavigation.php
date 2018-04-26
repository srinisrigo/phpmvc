
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
      'pages' => array('text'=>'Home',  'url'=>'?controller=pages&action=home', 'class'=>null),
      'posts' => array('text'=>'Away',  'url'=>'?controller=posts&action=index', 'class'=>null),
      'countries' => array('text'=>'Countries', 'url'=>'?controller=countries&action=index', 'class'=>null),
      'setup' => array(
        'text' => 'Setup',
        'url' => '?controller=countries&action=index',
        'class' => null,
        'dropdown' => true,
        'items' => array(
          'agent' => array('text'=>'Agent Details',  'url'=>'?controller=agent&action=home', 'class'=>null),
          'bank' => array('text'=>'Bank Details', 'url'=>'?controller=bank&action=index', 'class'=>null),
          'countrydeposit' => array('text'=>'Country Deposit Details', 'url'=>'?controller=countrydeposit&action=index', 'class'=>null),
          'country' => array('text'=>'Country Details', 'url'=>'?controller=countries&action=index', 'class'=>null),
          'embassy' => array('text'=>'Embassy Address', 'url'=>'?controller=embassy&action=index', 'class'=>null),
          'homeofficerequirement' => array('text'=>'Home office requirement', 'url'=>'?controller=homeofficerequirement&action=index', 'class'=>null),
          'registrationfees' => array('text'=>'Registration Fees Details', 'url'=>'?controller=registrationfees&action=index', 'class'=>null),
          'screen' => array('text'=>'Screen Master', 'url'=>'?controller=screen&action=index', 'class'=>null),
          'screenrights' => array('text'=>'Screen Rights', 'url'=>'?controller=screenrights&action=index', 'class'=>null),
          'user' => array('text'=>'User Creation', 'url'=>'?controller=user&action=index', 'class'=>null),
          'userrightcreation' => array('text'=>'User Right Creation', 'url'=>'?controller=userrightcreation&action=index', 'class'=>null),
          'usertype' => array('text'=>'User Type Master', 'url'=>'?controller=usertype&action=index', 'class'=>null)
        )),
      'masters' => array(
        'text' => 'Masters',
        'url' => '?controller=countries&action=index',
        'class' => null,
        'dropdown' => true,
        'items' => array(
          'agent' => array('text'=>'Agent Details',  'url'=>'?controller=agent&action=home', 'class'=>null),
          'assestment' => array('text'=>'Assestment Details',  'url'=>'?controller=assestment&action=index', 'class'=>null),
          'cohort' => array('text'=>'Cohort Details', 'url'=>'?controller=cohort&action=index', 'class'=>null),
          'college' => array('text'=>'College Details', 'url'=>'?controller=college&action=index', 'class'=>null),
          'course' => array('text'=>'Course Details', 'url'=>'?controller=course&action=index', 'class'=>null),
          'examinationtimetable' => array('text'=>'Examination Time Table', 'url'=>'?controller=examinationtimetable&action=index', 'class'=>null),
          'exam' => array('text'=>'Exam Name', 'url'=>'?controller=exam&action=index', 'class'=>null),
          'examtimetableslot' => array('text'=>'Exam Time Table Slot', 'url'=>'?controller=examinationtimetable&action=index', 'class'=>null),
          'infrastructure' => array('text'=>'Infrastructure Details', 'url'=>'?controller=infrastructure&action=index', 'class'=>null),
          'leave' => array('text'=>'Leave Master', 'url'=>'?controller=leave&action=index', 'class'=>null),
          'markscheme' => array('text'=>'Mark Scheme Details', 'url'=>'?controller=markscheme&action=index', 'class'=>null),
          'section' => array('text'=>'Section Master', 'url'=>'?controller=section&action=index', 'class'=>null),
          'subject' => array('text'=>'Subject Details', 'url'=>'?controller=subject&action=index', 'class'=>null),
          'supplier' => array('text'=>'Supplier Details', 'url'=>'?controller=supplier&action=index', 'class'=>null),
          'university' => array('text'=>'University Details', 'url'=>'?controller=university&action=index', 'class'=>null)
        )),
      'finance' => array(
        'text' => 'Finance',
        'url' => '?controller=countries&action=index',
        'class' => null,
        'dropdown' => true,
        'items' => array(
          'balance' => array('text'=>'Balance',  'url'=>'?controller=balance&action=home', 'class'=>null),
          'deposit' => array('text'=>'Deposit',  'url'=>'?controller=deposit&action=home', 'class'=>null),
          'invoicepay' => array('text'=>'Invoice pay',  'url'=>'?controller=invoicepay&action=home', 'class'=>null),
          'pendings' => array('text'=>'Pendings',  'url'=>'?controller=pendings&action=home', 'class'=>null),
          'pettycash' => array('text'=>'Petty cash',  'url'=>'?controller=pettycash&action=home', 'class'=>null),
          'purchase' => array('text'=>'Purchase',  'url'=>'?controller=purchase&action=home', 'class'=>null),
          'refund' => array('text'=>'Refund',  'url'=>'?controller=refund&action=home', 'class'=>null),
          'salary' => array('text'=>'Salary',  'url'=>'?controller=salary&action=home', 'class'=>null)
        )),
      'transaction' => array(
        'text' => 'Transaction',
        'url' => '?controller=countries&action=index',
        'class' => null,
        'dropdown' => true,
        'items' => array(
          'applicationentry' => array('text'=>'Application Entry',  'url'=>'?controller=applicationentry&action=home', 'class'=>null),
          'application' => array('text'=>'Application',  'url'=>'?controller=application&action=home', 'class'=>null),
          'marksentry' => array('text'=>'Marks Entry',  'url'=>'?controller=marksentry&action=home', 'class'=>null),
          'slotrepeat' => array('text'=>'Slot Repeat',  'url'=>'?controller=slotrepeat&action=home', 'class'=>null),
          'staffattendence' => array('text'=>'Staff Attendence',  'url'=>'?controller=staffattendence&action=home', 'class'=>null),
          'staffavailability' => array('text'=>'Staff Availability',  'url'=>'?controller=staffavailability&action=home', 'class'=>null),
          'staff' => array('text'=>'Staff Details',  'url'=>'?controller=staff&action=home', 'class'=>null),
          'student' => array('text'=>'Student',  'url'=>'?controller=student&action=home', 'class'=>null),
          'studentattendence' => array('text'=>'Student Attendence',  'url'=>'?controller=studentattendence&action=home', 'class'=>null),
          'subjectlist' => array('text'=>'Subject List',  'url'=>'?controller=subjectlist&action=home', 'class'=>null),
          'timetable' => array('text'=>'Time Table',  'url'=>'?controller=timetable&action=home', 'class'=>null)
        )),
      'library' => array('text'=>'Library', 'url'=>'?controller=library&action=index', 'class'=>null),
      'reports' => array('text'=>'Reports', 'url'=>'?controller=reports&action=index', 'class'=>null),
      'search' => array('text'=>'Search', 'url'=>'?controller=search&action=index', 'class'=>null)
    )
  ); 

  class PageNavigation {
    public static function GenerateMenu($menu) {
        if(isset($menu['callback'])) {
          $items = call_user_func($menu['callback'], $menu['items']);
        }
        
        $html = "";
        foreach($items as $item) {
          if (isset($item['dropdown'])) {
            if(isset($menu['callback'])) {
              $childitems = call_user_func($menu['callback'], $item['items']);
            }
            
            $html .= "<li class='nav-item dropdown'>";
            $html .= "<a class='nav-link dropdown-toggle' id='{$item['text']}Dropdown' href='#' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>{$item['text']}</a>";
            $html .= "<div class='dropdown-menu' aria-labelledby='{$item['text']}Dropdown'>";
            foreach($childitems as $child) {
              $html .= "<a class='dropdown-item' href='{$child['url']}'>{$child['text']}</a>";
            }

            $html .= "</div>";
            $html .= "</li>";
          }
          else $html .= "<li class='nav-item {$item['class']}'><a class='nav-link' href='{$item['url']}'>{$item['text']}</a></li>";
        }
        
        return $html;
      }

  };  

  //echo PageNavigation::GenerateMenu($menu, "navbar");
?> 