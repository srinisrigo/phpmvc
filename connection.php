<?php
  class Db {
    private static $instance = NULL;
    private static $pageSize = 2;

    private function __construct() {}

    private function __clone() {}

    public static function getInstance() {
      if (!isset(self::$instance)) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $pdo_options[PDO::ATTR_EMULATE_PREPARES] = false;
        //self::$instance = new PDO('mysql:host=localhost;dbname=php_mvc', 'root', '', $pdo_options);
        self::$instance = new PDO('pgsql:host=127.0.0.1;port=5432;dbname=HEOSAPR17', 'postgres', '1q2w3e4r5t', $pdo_options);
      }
      return self::$instance;
    }

    public static function getPageSize() {
      return self::$pageSize;
    }
  }
?>
