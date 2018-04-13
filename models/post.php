<?php
  class Post {

    public function __construct() {
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT * FROM cpt_codes');

      // we create a list of Post objects from the database results
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $cpt) {
        $list[] = $cpt;
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM cpt_codes WHERE id = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $cpt = $req->fetchObject();

      return $cpt;
    }
  }
?>
