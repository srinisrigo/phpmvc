<?php
  class SigninController {
    public function challenge() {
      $user = new Heos();   
      $user->name = isset($_POST['txtusername'])? parseInput($_POST['txtusername']):'';
      $user->pwd = isset($_POST['txtpassword'])? parseInput($_POST['txtpassword']):'';

      $dirtyform = false;
      $warnings = '';
      if (strlen($user->name) < 5) {
        $dirtyform = true;
        $warnings .= 'User name must be minimum 5 letters<br />';
      }
      if (strlen($user->pwd) < 5) {
        $dirtyform = true;
        $warnings .= 'Password must be minimum 5 letters<br />';
      }

      if ($dirtyform) {
        $user->warnings = $warnings;
        require_once('views/signin/show.php');
      }
      else {
        $usertype = Signin::challenge($user);
        if (isset($usertype->usertype)) {
          $_SESSION['heosusermode'] = $usertype->usertype;
          header("Refresh:0; url=index.php");
        }
        else {
          $user->warnings = 'Authentication failed due to a credentials mismatch';
          require_once('views/signin/show.php');
        }
      }
    }

    public function show() {
      $user = new Heos();   
      $user->name = '';
      $user->pwd = '';
      require_once('views/signin/show.php');
    }

    public function signout() {  
        session_destroy();
        header("Refresh:0; url=index.php");    
    }
  }
?>
