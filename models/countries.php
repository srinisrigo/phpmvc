<?php
  class Countries {

    public function __construct() {
    }

    public static function all($filter) {
      $strfields = "countryid, countrycode, countryname, nationality";
      $strrecords = "count(countryid) as records";
      $strwhereclause = '';
      $strlimitclause = ' LIMIT :size offset :start';
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

      $filteredrecords = isset($affectedrows->records)? $affectedrows->records:0;
      
      if ($filteredrecords) {
        $pgSize = Db::getPageSize();
        $req = $db->prepare('SELECT '.$strfields.' FROM countrydetails'.$strwhereclause.$strlimitclause);
        $req->execute(array('size' => $pgSize, 'start' => (($filter->page-1)*$pgSize)));
        foreach($req->fetchAll(PDO::FETCH_OBJ) as $countrydetails) {
          $list[] = $countrydetails;
        }
      }

      $obj = new Heos();
      $obj->records = $filteredrecords;
      $obj->list = $list;
      $obj->page = $filter->page;
      $obj->pages = ceil($filteredrecords/Db::getPageSize());
      $obj->countrycode = $filter->countrycode;
      $obj->countryname = $filter->countryname;
      $obj->nationality = $filter->nationality;
      return $obj;
    }

    public static function find($id) {
      $countrydetails = NULL;
      if ($id > -1) {        
        $db = Db::getInstance();
        $id = intval($id);
        $req = $db->prepare('SELECT * FROM countrydetails WHERE countryid = :id');
        $req->execute(array('id' => $id));
        $countrydetails = $req->fetchObject();
      }
      else {     
        $countrydetails = new Heos();
        $countrydetails->countryid = -1;
        $countrydetails->countrycode = '';
        $countrydetails->countryname = '';
        $countrydetails->nationality = '';   
      }

      return $countrydetails;
    }

    public static function save($country) {
      $query = '';
      $arparams = array(
        'code' => $country->countrycode,
        'name' => $country->countryname,
        'nationality' => $country->nationality
      );
      if ($country->countryid > 0) {
        $query = "UPDATE countrydetails SET countrycode=:code, countryname=:name, nationality=:nationality WHERE countryid=:id";
        $arparams['id'] = $country->countryid;
      }
      else $query = "INSERT INTO countrydetails(countryid, countrycode, countryname, nationality) VALUES (nextval('coursedetails_seq'), :code, :name, :nationality)";
      $db = Db::getInstance();
      $req = $db->prepare($query);
      $req->execute($arparams);
    }

    public static function exist($country) {
      $db = Db::getInstance();
      $req = $db->prepare('SELECT count(countryid) as records FROM countrydetails WHERE countryid <> :id AND (countrycode=:code OR countryname=:name)');
      $req->execute(array(
        'id' => $country->countryid,
        'code' => $country->countrycode,
        'name' => $country->countryname
      ));
      $affectedrows = NULL;
      foreach($req->fetchAll(PDO::FETCH_OBJ) as $rows) {
        $affectedrows = $rows;
      }

      return isset($affectedrows->records)? $affectedrows->records:0;
    }
  }
?>
