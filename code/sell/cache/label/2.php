<?php

$TagDB['enterprise_newsbanner']=array(
				'typesystem'=>'0',
				'type'=>'pic',
				'code'=>'a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/sell/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}',
				'divcode'=>'a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newsh1']=array(
				'typesystem'=>'0',
				'type'=>'code',
				'code'=>'产品栏目',
				'divcode'=>'a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newsh2']=array(
				'typesystem'=>'0',
				'type'=>'code',
				'code'=>'最新产品',
				'divcode'=>'a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newst2']=array(
				'typesystem'=>'1',
				'type'=>'Info_sell_',
				'code'=>'a:29:{s:13:\"tplpart_1code\";s:220:\"<dl>
  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>
  <dd>
  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>
    <div class=\"c\">$content</div>  </dd>
</dl>
\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"40\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:130:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}',
				'divcode'=>'a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
?>