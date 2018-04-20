<?php
  class Countries {

    public $records, $list;

    public function __construct() {
    }

    public static function all($page) {
      $strfields = "countryid, countrycode, countryname, nationality";
      $strrecords = "count(countryid) as records";
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT '.$strrecords.' FROM countrydetails');
      $affectedrows = NULL;
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $rows) {
        $affectedrows = $rows;
      }
      
      $pgSize = Db::getPageSize();
      $req = $db->prepare('SELECT '.$strfields.' FROM countrydetails LIMIT :size offset :start');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('size' => $pgSize, 'start' => (($page-1)*$pgSize)));

      // we create a list of Post objects from the database results
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $countrydetails) {
        $list[] = $countrydetails;
      }

      $obj = new Countries();
      $obj->records = $affectedrows->records;
      $obj->list = $list;
      $obj->page = $page;
      $obj->pages = ceil($affectedrows->records/Db::getPageSize());
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
