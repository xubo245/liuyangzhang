<?php
require(dirname(__FILE__)."/"."global.php");
$_GET['_fromurl'] && $_fromurl=$_GET['_fromurl'];
unset($uc_login_code);

//退出
if($action=="quit")
{
	$userDB->quit();

	//通行证处理
	if($_GET[passport_url]){
		$userDB->passport_server($lfjid,$_GET[passport_url]);
	}

	if(!$fromurl){
		$fromurl="$webdb[www_url]/";
	}
	echo "$uc_login_code<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$fromurl'>";
	exit;
}
else
{	//登录
	if($lfjid){
		//通行证处理
		if($_GET[passport_url]){
			$userDB->passport_server($lfjid,$_GET[passport_url]);
		}
		showerr("你已经登录了,请不要重复登录,要重新登录请点击<br><br><A HREF='$webdb[www_url]/do/login.php?action=quit'>安全退出</A>");
	}
	if($step==2){		
		$login = $userDB->login($username,$password,$cookietime);
		if($login==0){
			showerr("当前用户不存在,请重新输入");
		}elseif($login==-1){
			showerr("密码不正确,点击重新输入");
		}
		
		//放在登录成功后再审核的话,主要是方便不需要用户再输入帐号密码
		if($webdb['yzImgLogin']){
			if(!check_imgnum($yzimg)){
				$userDB->quit();
				$msg = $yzimg?'验证码不正确!请重新输入':'请输入验证码';
				showerr('<CENTER><form name="form1" method="post" action="">'.$msg.'<br>验证码:<input type="text" style="width:70px" name="yzimg"><SCRIPT LANGUAGE="JavaScript">
				<!--
				document.write(\'<img border="0" name="imageField" onclick="this.src=this.src+Math.random();" src="'.$webdb[www_url].'/do/yzimg.php?\'+Math.random()+\'">\');
				//-->
				</SCRIPT><br><input type="hidden" name="username" value="'.$username.'"><input type="hidden" name="password" value="'.$password.'"><input type="hidden" name="cookietime" value="'.$cookietime.'"><input type="submit" name="Submit" value=" 提 交 "> <input type="hidden" name="step" value="2"></form></CENTER>');
			}
		}

		//通行证处理
		if($_COOKIE[passport_url]||$_POST[passport_url]){
			$passport_url=urldecode($_COOKIE[passport_url]?$_COOKIE[passport_url]:$_POST[passport_url]);
			setcookie('passport_url','');
			$userDB->passport_server($username,$passport_url);
		}

		if($fromurl&&!eregi("login\.php",$fromurl)&&!eregi("reg\.php",$fromurl)){
			$jumpto=$fromurl;
		}elseif($FROMURL&&!eregi("login\.php",$FROMURL)&&!eregi("reg\.php",$FROMURL)){
			$jumpto=$FROMURL;
		}else{
			$jumpto="$webdb[www_url]/";
		}
		refreshto("$jumpto","登录成功$uc_login_code",1);
	}
	//通行证处理
	if($_GET[passport_url]){
		setcookie('passport_url',$_GET[passport_url]);
	}
	require(ROOT_PATH."inc/head.php");
	require(html("login"));
	require(ROOT_PATH."inc/foot.php");
}


?>