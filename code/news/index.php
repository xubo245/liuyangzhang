<?php
require(dirname(__FILE__)."/global.php");
@extract($db->get_one("SELECT fid FROM {$_pre}sort ORDER BY fid ASC LIMIT 1"));
$get=$jobs?'&jobs=show':'';
header("Location: list.php?fid=$fid$get");
?>