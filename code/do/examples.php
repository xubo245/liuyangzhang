<?php
require(dirname(__FILE__)."/"."global.php");

$fid_db='';

$fid_query = $db->query("SELECT * FROM {$pre}example_sort");
while ($rss = $db->fetch_array($fid_query)){
	$fid_db[]=$rss;
}

$titleDB[title]	= "�ɹ�����";
$titleDB[keywords] = $titleDB[title];
$titleDB[description] = $titleDB[title];


$check[examples]=true;

//��ǩ
$chdb[main_tpl]=html("examples");
$ch_fid	= intval($id);								//ÿ����ǩ��һ��
$ch_pagetype = 13;									//2,Ϊlistҳ,3,Ϊbencandyҳ
$ch_module = 0;										//����ģ��,Ĭ��Ϊ0
$ch = 0;											//�������κ�ר��
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