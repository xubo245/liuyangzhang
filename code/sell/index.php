<?php
if(is_file('install.php')){
	header("location:install.php");exit;
}elseif(is_file('upgrade.php')){
	header("location:upgrade.php");
	exit;
}
require(dirname(__FILE__)."/global.php");
@extract($db->get_one("SELECT fid FROM {$_pre}sort ORDER BY fid ASC LIMIT 1"));
$get=$jobs?'&jobs=show':'';
header("Location: list.php?fid=$fid$get");
?>