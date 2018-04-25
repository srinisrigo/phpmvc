<?php
  class CountriesController {
    public function index() {
      CountriesController::rootindex();
    }

    public function show() {
      $country = Countries::find(isset($_GET['id'])? $_GET['id']:-1);
      $country->page = isset($_GET['page'])? intval($_GET['page']):1;
      require_once('views/countries/show.php');
    }

    public function validate() {
      $country = new Heos();   
      $country->page = isset($_GET['page'])? intval($_GET['page']):1;
      $country->countryid = isset($_POST['id'])? parseInput($_POST['id']):-1;
      $country->countrycode = isset($_POST['code'])? parseInput($_POST['code']):'';
      $country->countryname = isset($_POST['name'])? parseInput($_POST['name']):'';
      $country->nationality = isset($_POST['nationality'])? parseInput($_POST['nationality']):'';

      $dirtyform = false;
      $warnings = '';
      if (!ctype_upper($country->countrycode)) {
        $dirtyform = true;
        $warnings .= 'Code must be upper case letters';
      }
      else if (strlen($country->countrycode) > 5) {
        $dirtyform = true;
        $warnings .= 'Code must be upto 5 letters<br />';
      }
      else if (!ctype_upper($country->countryname[0])) {
        $dirtyform = true;
        //preg_match_all('/[A-Z]/', $country->countryname, $matches, PREG_OFFSET_CAPTURE)
        $warnings .= 'Name must start with upper case<br />';
      }
      else if (strlen($country->countryname) > 50) {
        $dirtyform = true;
        $warnings .= 'Name must be upto 50 letters<br />';
      }
      else if (!ctype_upper($country->nationality[0])) {
        $dirtyform = true;
        $warnings .= 'Nationality must start with upper case<br />';
      }
      else if (strlen($country->nationality) > 50) {
        $dirtyform = true;
        $warnings .= 'Nationality must be upto 50 letters<br />';
      }

      if ($dirtyform) {
        $country->warnings = $warnings;
        require_once('views/countries/show.php');
      }
      else {
        try {
          Countries::save($country);
          CountriesController::rootindex();
        }
        catch (Exception $ex) {
          $country->warnings = 'Looks like something went wrong. try again';
          require_once('views/countries/show.php');
        }
      }
    }

    public function rootindex() {
      $filter = isset($_SESSION['filter'])? unserialize($_SESSION['filter']):new Heos();
      $filter->page = ($_SERVER["REQUEST_METHOD"] == "POST" && !isset($_POST['filtercode']))? 1:(isset($_GET['page'])? intval($_GET['page']):1);
      if (isset($_POST['filtercode'])) $filter->countrycode = parseInput($_POST['filtercode']);
      else if (!isset($filter->countrycode)) $filter->countrycode = '';
      if (isset($_POST['filtername'])) $filter->countryname = parseInput($_POST['filtername']);
      else if (!isset($filter->countryname)) $filter->countryname = '';
      if (isset($_POST['filternationality'])) $filter->nationality = parseInput($_POST['filternationality']);
      else if (!isset($filter->nationality)) $filter->nationality = '';
      
      $_SESSION['filter'] = serialize($filter);
      $countries = Countries::all($filter);
      require_once('views/countries/index.php');
    }
  }
?>
