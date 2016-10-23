<?php
!function_exists('html') && exit('ERR');
ck_power('city');
if($job=="list")
{
	$fid=intval($fid);
	
	$sortdb=array();
	list__allsort($fid);

	get_admin_html('sort');
}
elseif($action=="addsort")
{
	$class=1;
	$type=1;	/*分类标志*/
	
	$detail = explode("\r\n",$name);
	foreach($detail AS $key=>$value){
		if($value){
			$db->query("INSERT INTO {$_pre}city (name,fup,class,type,allowcomment) VALUES ('$value','$fup','$class','$type',1) ");
		}
	}	
	
	/*更新导航缓存*/
	cache_area();
	refreshto($FROMURL,"创建成功");
}

//修改栏目信息
elseif($job=="editsort")
{
	$postdb[fid] && $fid=$postdb[fid];
	$rsdb=$db->get_one("SELECT * FROM {$_pre}city WHERE fid='$fid'");
	$sort_fid=$Guidedb->Select("{$_pre}city","postdb[fid]",$fid,"$admin_path&job=$job");

	get_admin_html('editsort');
}
elseif($action=="editsort")
{
	$db->query("UPDATE {$_pre}city SET fup='$postdb[fup]',name='$postdb[name]',type='$postdb[type]',admin='$postdb[admin]',passwd='$postdb[passwd]',logo='$postdb[logo]',descrip='$postdb[descrip]',style='$postdb[style]',template='$postdb[template]',jumpurl='$postdb[jumpurl]',listorder='$postdb[listorder]',maxperpage='$postdb[maxperpage]',allowcomment='$postdb[allowcomment]',allowpost='$postdb[allowpost]',allowviewtitle='$postdb[allowviewtitle]',allowviewcontent='$postdb[allowviewcontent]',allowdownload='$postdb[allowdownload]',forbidshow='$postdb[forbidshow]',config='$postdb[config]'$SQL WHERE fid='$postdb[fid]' ");

	/*更新导航缓存*/
	cache_area();
	refreshto($FROMURL,"修改成功");
}
elseif($action=="delete")
{
	$db->query(" DELETE FROM `{$_pre}city` WHERE fid='$fid' ");
	
	/*更新导航缓存*/
	cache_area();
	refreshto($FROMURL,"删除成功");
}
elseif($action=="editlist")
{
	foreach( $order AS $key=>$value){
		$db->query("UPDATE {$_pre}city SET list='$value' WHERE fid='$key' ");
	}
	/*更新导航缓存*/
	cache_area();
	refreshto($FROMURL,"修改成功",1);
}



/**
*更新缓存
**/
 

function cache_area(){
	global $db,$_pre;

	$query = $db->query("SELECT fid,fup,name FROM {$_pre}city LIMIT 500");
	while($rs = $db->fetch_array($query)){
		$listdb['name'][$rs[fid]]=$rs[name];
	}
	write_file(Mpath."data/all_city.php","<?php\r\nreturn ".var_export($listdb,true).';?>');
}

/*栏目列表*/
function list__allsort($fid){
	global $db,$_pre,$sortdb;
	$query=$db->query("SELECT * FROM {$_pre}city WHERE fup='$fid' ORDER BY list DESC");
	while( $rs=$db->fetch_array($query) ){
		$icon="";
		for($i=1;$i<$rs['class'];$i++){
			$icon.="&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;";
		}
		if($icon){
			$icon=substr($icon,0,-24);
			$icon.="--";
		}
		$rs[config]=unserialize($rs[config]);
		$rs[icon]=$icon;
		$sortdb[]=$rs;

		list__allsort($rs[fid]);
	}
}
?>