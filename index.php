<?php session_start();
	require_once('connection.php');

	if (isset($_GET['controller']) && isset($_GET['action'])) {
		$controller = $_GET['controller'];
		$action = $_GET['action'];
	} else {
		$controller = isset($_SESSION['heosusermode'])? 'pages':'signin';
		$action = isset($_SESSION['heosusermode'])? 'home':'show';
	}

	require_once('views/layout.php');
?>