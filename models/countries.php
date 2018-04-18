<?php
  class Countries {

    public function __construct() {
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT countryid, countrycode, countryname, nationality FROM countrydetails');

      // we create a list of Post objects from the database results
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $countrydetails) {
        $list[] = $countrydetails;
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      //$id = intval($id);
      $req = $db->prepare('SELECT countryid, countrycode, countryname, nationality FROM countrydetails WHERE countryid = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $countrydetails = $req->fetchObject();

      return $countrydetails;
    }
  }
?>
