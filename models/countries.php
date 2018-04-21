<?php
  class Countries {

    public function __construct() {
    }

    public static function all($filter) {
      $strfields = "countryid, countrycode, countryname, nationality";
      $strrecords = "count(countryid) as records";
		$strwhereclause = '';
		$strlimitclause = ' LIMIT :size offset :start';/*
		if (!empty($filter->countrycode)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "countrycode LIKE '".strtoupper($filter->countrycode)."%'";
		if (!empty($filter->countryname)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "countryname LIKE '".ucfirst($filter->countryname)."%'";
		if (!empty($filter->nationality)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "nationality LIKE '".ucfirst($filter->nationality)."%'";*/
		
		
		if (!empty($filter->countrycode)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "countrycode ILIKE '".($filter->countrycode)."%'";
		if (!empty($filter->countryname)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "countryname ILIKE '".($filter->countryname)."%'";
		if (!empty($filter->nationality)) $strwhereclause .= (empty($strwhereclause)? " WHERE ":" AND "). "nationality ILIKE '".($filter->nationality)."%'";
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT '.$strrecords.' FROM countrydetails'.$strwhereclause);
      $affectedrows = NULL;
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $rows) {
        $affectedrows = $rows;
      }
      
      $pgSize = Db::getPageSize();
      $req = $db->prepare('SELECT '.$strfields.' FROM countrydetails'.$strwhereclause.$strlimitclause);
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('size' => $pgSize, 'start' => (($filter->page-1)*$pgSize)));

      // we create a list of Post objects from the database results
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $countrydetails) {
        $list[] = $countrydetails;
      }

      $obj = new Heos();
      $obj->records = $affectedrows->records;
      $obj->list = $list;
      $obj->page = $filter->page;
      $obj->pages = ceil($affectedrows->records/Db::getPageSize());
      $obj->countrycode = $filter->countrycode;
      $obj->countryname = $filter->countryname;
      $obj->nationality = $filter->nationality;
      return $obj;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM countrydetails WHERE countryid = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $countrydetails = $req->fetchObject();

      return $countrydetails;
    }
  }
?>
