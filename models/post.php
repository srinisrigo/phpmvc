<?php
  class Post {

    public function __construct() {
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT * FROM usertypemaster');

      // we create a list of Post objects from the database results
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $usertype) {
        $list[] = $usertype;
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM usertypemaster WHERE userid = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $usertype = $req->fetchObject();

      return $usertype;
    }
  }
?>
