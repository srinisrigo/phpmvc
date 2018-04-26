<?php
  class Signin {

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

    public static function challenge($user) {
      $db = Db::getInstance();
      $req = $db->prepare('SELECT usertype FROM usercreation WHERE username=:uname AND password=:upwd');
      $req->execute(array('uname' => $user->name, 'upwd' => $user->pwd));
      $user = $req->fetchObject();

      return $user;
    }
  }
?>
