<?php

$menu_partDB['other'][]='电子商务管理';
$menudb['电子商务管理']['在线充值支付管理']=array('power'=>'alipay_set','link'=>'index.php?lfj=alipay&job=list');

if($IS_BIZPhp168||$GLOBALS[IS_BIZPhp168]){
$menu_partDB['other'][]='电子商务管理';
$menudb['电子商务管理']['点卡充值管理']=array('power'=>'moneycard_make','link'=>'index.php?lfj=moneycard&job=make');
}

$menu_partDB['other'][]='其它功能';
$menudb['其它功能']['地区管理']=array('power'=>'area_list','link'=>'index.php?lfj=area&job=list');

$menu_partDB['other'][]='其它功能';
$menudb['其它功能']['系统在线升级']=array('power'=>'upgrade_ol','link'=>'index.php?lfj=upgrade&job=get');

$menu_partDB['other'][]='消息/邮件群发';
$menudb['消息/邮件群发']['站内消息群发']=array('power'=>'message_send','link'=>'index.php?lfj=message&job=send');

$menu_partDB['other'][]='站外功能';
$menudb['站外功能']['CNZZ流量统计']=array('power'=>'cnzz_set','link'=>'index.php?lfj=cnzz&job=ask');

$menu_partDB['other'][]='消息/邮件群发';
$menudb['消息/邮件群发']['邮件群发']=array('power'=>'mail_send','link'=>'index.php?lfj=mail&job=send');

$menu_partDB['other'][]='日志管理';
$menudb['日志管理']['后台登录日志']=array('power'=>'logs_login_logs','link'=>'index.php?lfj=logs&job=login_logs');

$menu_partDB['other'][]='消息/邮件群发';
$menudb['消息/邮件群发']['手机短信群发']=array('power'=>'sms_send','link'=>'index.php?lfj=sms&job=send');

$menu_partDB['other'][]='日志管理';
$menudb['日志管理']['后台操作日志']=array('power'=>'logs_admin_do_logs','link'=>'index.php?lfj=logs&job=admin_logs');

$menu_partDB['other'][]='成功案例';
$menudb['成功案例']['成功案例']=array('power'=>'examples','link'=>'index.php?lfj=examples&job=list');

$menu_partDB['other'][]='插件大全';
$menudb['插件大全']['用户登录插件']=array('power'=>'login','link'=>'index.php?lfj=hack&hack=login&job=list');

$menu_partDB['other'][]='插件大全';
$menudb['插件大全']['定时任务']=array('power'=>'crontab','link'=>'index.php?lfj=crontab&job=list');
?>