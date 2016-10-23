<?php
require(dirname(__FILE__)."/"."global.php");

$fid_db='';

$fid_query = $db->query("SELECT * FROM {$pre}example_sort");
while ($rss = $db->fetch_array($fid_query)){
	$fid_db[]=$rss;
}

$titleDB[title]	= "成功案例";
$titleDB[keywords] = $titleDB[title];
$titleDB[description] = $titleDB[title];


$check[examples]=true;

//标签
$chdb[main_tpl]=html("examples");
$ch_fid	= intval($id);								//每个标签不一样
$ch_pagetype = 13;									//2,为list页,3,为bencandy页
$ch_module = 0;										//文章模块,默认为0
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");


require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");


function get_examples($id){
	global $pre,$db;
	$query = $db->query("SELECT * FROM {$pre}example WHERE fid='{$id}' AND ifhide=0 LIMIT 50");
	while($rs = $db->fetch_array($query)){
		$rs[logo]=tempdir($rs[logo]);
		$_listdb[]=$rs;
	}
	$num=5-count($_listdb)%5;
	for($i=0;$i<$num;$i++ ){
		$_listdb[]=array('display'=>'none');
	}
	$listdb=array_chunk($_listdb,5);
	return $listdb;
}


?>