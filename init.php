<?php
/**
 * @author		SilexBoard Team
 *					Cadillaxx
 * @copyright	2011 SilexBoard
 */
// Error reporting
ini_set('display_errors', 1);
error_reporting(E_ALL | E_STRICT);

// Include required files
require_once('config.inc.php');
require_once('constants.inc.php');
require_once('functions.inc.php');

// Sessions
session_start();

// Connect to MySQL-Database
mysql::Connect($CFG_Host, $CFG_User, $CFG_Password, $CFG_Database);

// default timezone (for date functions)
date_default_timezone_set('Europe/Berlin');

// after 10 minutes you will automatically logged out
$login = new login;

if($login->logged_in()) {
	mysql::Select('sessions', 'Time', 'Salt=\''.session_id().'\'');
	
	while($row = mysql::FetchArray()) {
		$lastTime = $row['Time'];
	}	
	
	$timeFuture = time() + 10 * 6;
	
	if($timeFuture - $lastTime > 600) {
		$login->DoLogout();
	} else {
		$update = array("Time" => time());
		mysql::Update('sessions', $update, 'Salt=\''.session_id().'\'');
	}
}
?>