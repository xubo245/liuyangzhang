<?php unset($module_DB);
$module_DB[1]=array (
  'id' => '1',
  'sort_id' => '0',
  'name' => '产品模型',
  'list' => '4',
  'style' => '',
  'config' => false,
  'config2' => false,
  'comment_type' => '1',
  'ifdp' => '0',
  'template' => '',
  'field' => 
  array (
    'content' => 
    array (
      'id' => '86',
      'mid' => '1',
      'title' => '详细介绍',
      'field_name' => 'content',
      'field_type' => 'mediumtext',
      'field_leng' => '0',
      'orderlist' => '-1',
      'form_type' => 'ieedit',
      'field_inputwidth' => '600',
      'field_inputheight' => '250',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'shoptype' => 
    array (
      'id' => '80',
      'mid' => '1',
      'title' => '型号',
      'field_name' => 'shoptype',
      'field_type' => 'varchar',
      'field_leng' => '50',
      'orderlist' => '6',
      'form_type' => 'text',
      'field_inputwidth' => '10',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '31',
      'form_js' => '',
    ),
    'order_min' => 
    array (
      'id' => '154',
      'mid' => '1',
      'title' => '最小起订',
      'field_name' => 'order_min',
      'field_type' => 'int',
      'field_leng' => '7',
      'orderlist' => '8',
      'form_type' => 'text',
      'field_inputwidth' => '30',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'my_units' => 
    array (
      'id' => '153',
      'mid' => '1',
      'title' => '计量单位',
      'field_name' => 'my_units',
      'field_type' => 'varchar',
      'field_leng' => '10',
      'orderlist' => '9',
      'form_type' => 'text',
      'field_inputwidth' => '50',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'order_max' => 
    array (
      'id' => '155',
      'mid' => '1',
      'title' => '最大供货',
      'field_name' => 'order_max',
      'field_type' => 'varchar',
      'field_leng' => '7',
      'orderlist' => '7',
      'form_type' => 'text',
      'field_inputwidth' => '30',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'send_day' => 
    array (
      'id' => '156',
      'mid' => '1',
      'title' => '发货期限',
      'field_name' => 'send_day',
      'field_type' => 'varchar',
      'field_leng' => '30',
      'orderlist' => '5',
      'form_type' => 'select',
      'field_inputwidth' => '0',
      'field_inputheight' => '0',
      'form_set' => '3天以内发货
3-7天内发货
7-10天内发货
10天以上发货
待商议',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
  ),
);
$module_db[1]="产品模型";
$module_DB[2]=array (
  'id' => '2',
  'sort_id' => '0',
  'name' => '询价单模型',
  'list' => '1',
  'style' => '',
  'config' => false,
  'config2' => false,
  'comment_type' => '0',
  'ifdp' => '0',
  'template' => 'a:4:{s:4:"list";s:12:"joinlist.htm";s:4:"show";s:12:"joinshow.htm";s:4:"post";s:8:"join.htm";s:6:"search";s:0:"";}',
  'field' => 
  array (
    'hope_price' => 
    array (
      'id' => '159',
      'mid' => '2',
      'title' => '期望价格',
      'field_name' => 'hope_price',
      'field_type' => 'varchar',
      'field_leng' => '20',
      'orderlist' => '18',
      'form_type' => 'text',
      'field_inputwidth' => '50',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '单价',
      'form_title' => '',
      'mustfill' => '1',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'hope_know' => 
    array (
      'id' => '160',
      'mid' => '2',
      'title' => '还想了解',
      'field_name' => 'hope_know',
      'field_type' => 'varchar',
      'field_leng' => '255',
      'orderlist' => '17',
      'form_type' => 'checkbox',
      'field_inputwidth' => '0',
      'field_inputheight' => '0',
      'form_set' => '单价
产品规格、型号
价格条款
原产地
能否提供样品
最小订货量
交货期
供货能力
销售条款及附加条件
包装方式
质量/安全认证',
      'form_value' => '单价',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'order_num' => 
    array (
      'id' => '158',
      'mid' => '2',
      'title' => '订货总量',
      'field_name' => 'order_num',
      'field_type' => 'int',
      'field_leng' => '6',
      'orderlist' => '19',
      'form_type' => 'text',
      'field_inputwidth' => '50',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '1',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'content' => 
    array (
      'id' => '142',
      'mid' => '2',
      'title' => '补充信息',
      'field_name' => 'content',
      'field_type' => 'mediumtext',
      'field_leng' => '0',
      'orderlist' => '15',
      'form_type' => 'textarea',
      'field_inputwidth' => '500',
      'field_inputheight' => '70',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '<br><select name=\'autoSelect\' onchange="changeaddContent(this);">
<option value=\'\'>(懒得打字？“快速填写”帮您忙！) </option>
<option value=\'我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？\'>我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？</option> 
<option value=\'请您发一份比较详细的产品规格说明，谢谢！\'>请您发一份比较详细的产品规格说明，谢谢！</option> 
<option value=\'请问贵公司产品是否可以代理？代理条件是什么？\'>请问贵公司产品是否可以代理？代理条件是什么？</option> 
<option value=\'我公司有意购买此产品，可否提供此产品的报价单和最小起订量？\'>我公司有意购买此产品，可否提供此产品的报价单和最小起订量？</option> 
</select>
<SCRIPT language="javascript">
            function changeaddContent(autoSelect){
			 	if (autoSelect.selectedIndex !=0){			 		
			 		document.getElementById("atc_content").value = autoSelect[autoSelect.selectedIndex].value;
					autoSelect.selectedIndex=0;
			 	}
				
			 }
	     </SCRIPT>',
    ),
    'ask_phone' => 
    array (
      'id' => '145',
      'mid' => '2',
      'title' => '联系电话',
      'field_name' => 'ask_phone',
      'field_type' => 'varchar',
      'field_leng' => '20',
      'orderlist' => '8',
      'form_type' => 'text',
      'field_inputwidth' => '100',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'ask_username' => 
    array (
      'id' => '144',
      'mid' => '2',
      'title' => '联系人姓名',
      'field_name' => 'ask_username',
      'field_type' => 'varchar',
      'field_leng' => '20',
      'orderlist' => '9',
      'form_type' => 'text',
      'field_inputwidth' => '100',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'ask_mobphone' => 
    array (
      'id' => '146',
      'mid' => '2',
      'title' => '联系手机',
      'field_name' => 'ask_mobphone',
      'field_type' => 'varchar',
      'field_leng' => '15',
      'orderlist' => '7',
      'form_type' => 'text',
      'field_inputwidth' => '100',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'ask_email' => 
    array (
      'id' => '147',
      'mid' => '2',
      'title' => '联系邮箱',
      'field_name' => 'ask_email',
      'field_type' => 'varchar',
      'field_leng' => '50',
      'orderlist' => '6',
      'form_type' => 'text',
      'field_inputwidth' => '100',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'ask_qq' => 
    array (
      'id' => '148',
      'mid' => '2',
      'title' => '联系QQ',
      'field_name' => 'ask_qq',
      'field_type' => 'varchar',
      'field_leng' => '11',
      'orderlist' => '5',
      'form_type' => 'text',
      'field_inputwidth' => '100',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'ask_title' => 
    array (
      'id' => '157',
      'mid' => '2',
      'title' => '询价标题',
      'field_name' => 'ask_title',
      'field_type' => 'varchar',
      'field_leng' => '100',
      'orderlist' => '20',
      'form_type' => 'text',
      'field_inputwidth' => '300',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '',
      'form_title' => '',
      'mustfill' => '1',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
    'hope_reply' => 
    array (
      'id' => '161',
      'mid' => '2',
      'title' => '我希望',
      'field_name' => 'hope_reply',
      'field_type' => 'varchar',
      'field_leng' => '25',
      'orderlist' => '14',
      'form_type' => 'time',
      'field_inputwidth' => '0',
      'field_inputheight' => '0',
      'form_set' => '',
      'form_value' => '',
      'form_units' => '之前回复',
      'form_title' => '',
      'mustfill' => '0',
      'listshow' => '0',
      'listfilter' => '0',
      'search' => '0',
      'allowview' => '',
      'allowpost' => '',
      'js_check' => '',
      'js_checkmsg' => '',
      'classid' => '0',
      'form_js' => '',
    ),
  ),
);
$module_db[2]="询价单模型";
?>