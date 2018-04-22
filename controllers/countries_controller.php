<?php
  class CountriesController {
    public function index() {
		$filter = isset($_SESSION['filter'])? unserialize($_SESSION['filter']):new Heos();
		$filter->page = ($_SERVER["REQUEST_METHOD"] == "POST")? 1:(isset($_GET['page'])? intval($_GET['page']):1);
		if (isset($_POST['code'])) $filter->countrycode = parseInput($_POST['code']);
		else if (!isset($filter->countrycode)) $filter->countrycode = '';
		if (isset($_POST['name'])) $filter->countryname = parseInput($_POST['name']);
		else if (!isset($filter->countryname)) $filter->countryname = '';
		if (isset($_POST['nationality'])) $filter->nationality = parseInput($_POST['nationality']);
		else if (!isset($filter->nationality)) $filter->nationality = '';
		
		$_SESSION['filter'] = serialize($filter);
      // we store all the posts in a variable
      $countries = Countries::all($filter);
      require_once('views/countries/index.php');
    }

    public function show() {
      // we expect a url of form ?controller=posts&action=show&id=x
      // without an id we just redirect to the error page as we need the post id to find it in the database
      if (!isset($_GET['id']))
        return call('pages', 'error');

      // we use the given id to get the right post
      $country = Countries::find($_GET['id']);
      require_once('views/countries/show.php');
    }
  }
?>
