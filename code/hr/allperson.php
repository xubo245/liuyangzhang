<?php
require(dirname(__FILE__)."/global.php");

$field_db = $module_DB[2][field];

if($page<1){
	$page=1;
}
$rows=10;
$min=($page-1)*$rows;
if(!in_array($ordertype,array('hits','id','levelstime'))){
	$ordertype='id';
}
if($ordertype=='levelstime'){
	$SQL=" WHERE A.levels=1 ";
}else{
	$SQL=" ";
}

$query = $db->query("SELECT SQL_CALC_FOUND_ROWS A.*,B.* FROM {$_pre}person A LEFT JOIN {$_pre}content_2 B ON A.id=B.id  $SQL ORDER BY A.$ordertype DESC LIMIT $min,$rows");
$RS=$db->get_one("SELECT FOUND_ROWS()");
$totalNum=$RS['FOUND_ROWS()'];
while($rs = $db->fetch_array($query)){
	$rs[picurl]=tempdir($rs[picurl]);
	$rs[url]=get_info_url($rs[id],$rs[fid],$rs[city_id]);
	$rs[posttime]=date("Y-m-d H:i",$rs[posttime]);
	$Module_db->showfield($field_db,$rs,'list');
	$listdb[]=$rs;
}


$showpage=getpage("","","?ordertype=$ordertype",$rows,$totalNum);
/**
*Ϊ��ȡ��ǩ����
**/
$chdb[main_tpl]=getTpl("allperson");

/**
*��ǩ
**/
$ch_fid	= 0;										//�Ƿ�������Ŀר�ñ�ǩ
$ch_pagetype = 4;									//2,Ϊlistҳ,3,Ϊbencandyҳ
$ch_module = $webdb[module_id]?$webdb[module_id]:99;//ϵͳ�ض�ID����,ÿ��ϵͳ������ͬ
$ch = 0;											//�������κ�ר��
require(ROOT_PATH."inc/label_module.php");

require(ROOT_PATH."inc/head.php");
require(getTpl("allperson"));
require(ROOT_PATH."inc/foot.php");
?>