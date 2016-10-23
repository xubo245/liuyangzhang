<?php
!function_exists('html') && exit('ERR');

if($job=="list"&&$Apower[examples])
{
	$rows=30;
	if(!$page){
		$page=1;
	}
	if($fid){
		$SQL=" WHERE A.fid='$fid' ";
	}else{
		$SQL="";
	}
	$min=($page-1)*$rows;
	$showpage=getpage("`{$pre}example` A","$SQL","?lfj=$lfj&job=$job&fid=$fid",$rows);
	$query=$db->query("SELECT A.*,B.name AS fname FROM `{$pre}example` A LEFT JOIN {$pre}example_sort B ON A.fid=B.fid $SQL ORDER BY A.list DESC,A.id DESC LIMIT $min,$rows");
	while($rs=$db->fetch_array($query)){
		$rs[ifshow]=$rs[ifhide]?"<A HREF='?lfj=$lfj&job=up&ifhide=0&id=$rs[id]' style='color:red;'>����</A>":"<A HREF='?lfj=$lfj&job=up&ifhide=1&id=$rs[id]' style='color:blue;'>��ʾ</A>";
		
		
		if($rs[logo]){
			$rs[logo]=tempdir($rs[logo]);
			$rs[logo]="<img src='$rs[logo]' width=88 height=31 border=0>";
		}
		$listdb[]=$rs;
	}
	hack_admin_tpl('list');
}elseif ($action=="list"&&$Apower[examples]){
	foreach( $listdb AS $key=>$value){
		$db->query("UPDATE {$pre}example SET `list`='$value' WHERE id='$key'");
	}
	jump("�޸ĳɹ�","$FROMURL",1);
}
elseif($job=="add"&&$Apower[examples])
{
	$select_fid=select_esort("postdb[fid]","");
	$ifhide[0]=" checked ";
	hack_admin_tpl('mod');
}
elseif($job=="listsort"&&$Apower[examples])
{
	$query=$db->query("SELECT * FROM `{$pre}example_sort` ORDER BY list DESC");
	while($rs=$db->fetch_array($query)){
		$listdb[]=$rs;
	}
	hack_admin_tpl('list_sort');
	
}elseif ($job=="addsort"&&$Apower[examples])
{
	hack_admin_tpl('mod_sort');
}elseif ($action=="addsort"&&$Apower[examples])
{
	if (!$postdb[name]){
		showmsg("���Ʋ���Ϊ��,����д����!");
	}
	$db->query("INSERT INTO `{$pre}example_sort` (`name` , `list`) VALUES ('$postdb[name]','$postdb[list]')");
	$fid = $db->insert_id();
	if ($fid){
		jump("��ӷ���ɹ�",$FROMURL);
	}else {
		jump("��ӷ���ʧ��",$FROMURL);
	}
}
elseif($action=="add"&&$Apower[examples])
{
	if (!$postdb[name]){
		showmsg("���Ʋ���Ϊ��,����д����!");
	}
	if (!$postdb[fid]){
		showmsg("����Ҫѡ��һ������!");
	}
	$db->query("INSERT INTO `{$pre}example` (`name` , `url` ,`fid` , `logo` , `descrip` , `list`,ifhide,posttime) VALUES ('$postdb[name]','$postdb[url]','$postdb[fid]','$postdb[logo]','$postdb[descrip]','0','$postdb[ifhide]',$timestamp)");
	jump("��ӳɹ�",$FROMURL);
}
elseif ($job=="up"&&$Apower[examples])
{
	$db->query("UPDATE {$pre}example SET `ifhide`='$ifhide' WHERE id='$id'");
	jump("�޸ĳɹ�","$FROMURL",0);
}elseif ($job=="mod"&&$Apower[examples])
{
	$rsdb=$db->get_one("SELECT * FROM {$pre}example WHERE id='$id' ");
	$rsdb[ifhide]=intval($rsdb[ifhide]);
	$ifhide[$rsdb[ifhide]]=" checked ";
	$select_fid=select_esort("postdb[fid]",$rsdb[fid]);
	hack_admin_tpl('mod');
}elseif ($action=="mod"&&$Apower[examples])
{
	$db->query("UPDATE {$pre}example SET name='$postdb[name]',url='$postdb[url]',logo='$postdb[logo]',descrip='$postdb[descrip]',`ifhide`='$postdb[ifhide]',`fid`='$postdb[fid]',`posttime`=$timestamp WHERE id='$id'");
	jump("���óɹ�",$FROMURL);
}elseif ($action=="delete"&&$Apower[examples]){
	$db->query("DELETE FROM `{$pre}example` WHERE id='$id' ");
	jump("ɾ���ɹ�",$FROMURL);
}elseif ($job=="modsort"&&$Apower[examples]){
	$rsdb=$db->get_one("SELECT * FROM {$pre}example_sort WHERE fid='$fid' ");
	hack_admin_tpl('mod_sort');
}elseif ($action=="modsort"&&$Apower[examples]){
	$db->query("UPDATE {$pre}example_sort SET name='$postdb[name]',`list`='$postdb[list]' WHERE fid='$fid'");
	
	jump("�޸ĳɹ�","$FROMURL",1);
}elseif ($action=="deletesort"&&$Apower[examples]){
	$db->query("DELETE FROM `{$pre}example_sort` WHERE fid='$fid' ");
	jump("ɾ���ɹ�",$FROMURL);
}
function select_esort($name,$ckfid){
	global $db,$pre;
	$show="<select name='$name'><option value=''>��ѡ��</option>";
	$query = $db->query("SELECT * FROM {$pre}example_sort ORDER BY list DESC");
	while($rs = $db->fetch_array($query)){
		$ckk=$ckfid==$rs[fid]?' selected ':'';
		$show.="<option value='$rs[fid]' $ckk>$rs[name]</option>";
	}
	$show.="</select>";
	return $show;
}
?>