<?php

$TagDB['enterprise_newsbanner']=array(
				'typesystem'=>'0',
				'type'=>'pic',
				'code'=>'a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}',
				'divcode'=>'a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newsh1']=array(
				'typesystem'=>'0',
				'type'=>'code',
				'code'=>'新闻栏目',
				'divcode'=>'a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newsh2']=array(
				'typesystem'=>'0',
				'type'=>'code',
				'code'=>'最新报道',
				'divcode'=>'a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
$TagDB['enterprise_newst2']=array(
				'typesystem'=>'1',
				'type'=>'Info_news_',
				'code'=>'a:35:{s:13:\"tplpart_1code\";s:220:\"<dl>
  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>
  <dd>
  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>
    <div class=\"c\">$content</div>  </dd>
</dl>
\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}',
				'divcode'=>'a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}'
				);
?>