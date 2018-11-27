<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html id="iframe">
	<head>
		<meta charset="UTF-8">
		
		<title><?php echo C('sitename');?></title>
		
		<meta name="renderer" content="webkit">
		<meta name="format-detection" content="telephone=no,email=no"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
		<meta name="telephone=no"  content="format-detection">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no" />
		
		<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
		<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
		<META HTTP-EQUIV="Expires" CONTENT="0">
		
		<link rel="stylesheet" type="text/css" href="/Public/Home/css/lib.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Home/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Home/css/page.css"/>
	</head>
	<style>
		/*分页样式*/
		.pages a,.pages span {
		    display:inline-block;
		    padding:4px 7px;
		    margin:0 2px;
		    border:1px solid #D5D4D4;
		    -webkit-border-radius:1px;
		    -moz-border-radius:1px;
		    border-radius:1px;
		}
		.pages a,.pages li {
		    display:inline-block;
		    list-style: none;
		    text-decoration:none; color:#15AF11;
		}
		
		.pages a:hover{
		    border-color:#15AF11;
		}
		.pages span.current{
		    background:#15AF11;
		    color:#FFF;
		    font-weight:700;
		    border-color:#15AF11;
		}
		.pages{
			margin-top: 8px;
			text-align: center;
		}
		.ptitle{
			height: 45px;
			line-height: 45px;
		}
		/* .tj{color:#c7baba;} */
		/*分页样式*/
	</style>
	<body>
		<div class="header">
		  <div class="all_w ">
		    <div class="gofh"> <a href="javascript:history.back()"><img src="http://www.58src.com/Public/Home/new/css/ico/left.png"></a> </div>
		     <div class="ptitle">
		      记录
		    </div>
		  </div>
		</div>
		<div class="record">
			<div class="record-top">
				<!-- <p class="intro">
					<span>会员:<i><?php echo ($userinfo["nickname"]); ?></i></span>
					<span>点数:<i><?php echo ($userinfo["points"]); ?></i></span>
					<span>代理:<i>DS1688</i></span>
					<span>编号:<i>PKW<?php echo ($userinfo["id"]); ?></i></span>
				</p> -->
				<p class="lable">
					<a href="<?php echo U('Home/Run/record');?>?t=1"><span><?php echo (date("m-d",$today)); ?></span></a>
					<a href="<?php echo U('Home/Run/record');?>?t=2"><span><?php echo (date("m-d",$today-86400)); ?></span></a>
					<a href="<?php echo U('Home/Run/record');?>?t=3"><span><?php echo (date("m-d",$today-86400*2)); ?></span></a>
					<a href="<?php echo U('Home/Run/record');?>?t=4"><span>账务</span></a>
				</p>
			</div>
			<div class="record-content">
				<?php if(empty($list)): ?><p class="record-no"><span>
						<?php if($t == 1): echo (date("m-d",$today)); endif; ?>
						<?php if($t == 2): echo (date("m-d",$today-86400)); endif; ?>
						<?php if($t == 3): echo (date("m-d",$today-86400*2)); endif; ?>
						 无资料
					</span></p>
					<?php else: ?>
					<?php if($t == 4): ?><table>
							<thead>
								<tr>
									<th>时间</th>
									<!--<th>单号</th>-->
									<th>期号</th>
									<th>内容</th>
									<th>点数</th>
									<th>输赢</th>
									<!-- <th>余额</th> -->
								</tr>	
							</thead>
							<tbody>
								<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
										<td><?php echo (date("Y-m-d H:i:s",$vo["time"])); ?></td>
										<td><?php echo ($vo["number"]); ?></td>
										<!--<td><?php echo (mb_substr($vo["time"],3,8,utf8)); ?></td>-->
										<td><?php echo ($vo["jincai"]); ?></td>
										<td><?php echo ($vo["add_points"]); ?></td>
										<td><?php echo ($vo['add_points']-$vo['del_points']); ?></td>
										
										<!-- <td><?php echo ($vo["balance"]); ?></td> -->
									</tr><?php endforeach; endif; else: echo "" ;endif; ?>
							</tbody>
						</table>
						<?php else: ?>
						<table>
							<?php if(is_array($list1)): $i = 0; $__LIST__ = $list1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><thead>
									<tr>
										<th colspan="6">
											<?php
 $game = $vo['game']; $periodnumber = $vo['number']; $awardnumbers = M('number')->where("periodnumber = '$periodnumber' and game = '$game'")->order('id desc')->find(); $data = explode(',',$awardnumbers['awardnumbers']); ?>
											<span>
												<?php if($vo['game'] == 'xyft'): ?>幸运飞艇
												<?php elseif($vo['game'] == 'pk10'): ?>北京赛车
												<?php elseif($vo['game'] == 'er75sc'): ?>极速赛车
												<?php elseif($vo['game'] == 'bj28'): ?>北京28
												<?php elseif($vo['game'] == 'jnd28'): ?>加拿大28
												<?php elseif($vo['game'] == 'xjp28'): ?>新加坡28
												<?php elseif($vo['game'] == 'lhc'): ?>六合彩
												<?php else: ?>重庆时时彩<?php endif; ?>  
												期号：<?php echo ($vo["number"]); ?>
												<?php if($awardnumbers['awardnumbers'] == ''): ?>(未开奖)
												<?php else: ?>
													(<?php echo ($awardnumbers['awardnumbers']); ?>)<?php endif; ?>
												  
												
											</span>
											<!-- <?php if($number == $vo['number']): ?>-->
												<!-- <a class="bt bt-red" onclick="del_all('<?php echo ($vo["number"]); ?>')">全部取消</a> -->
											<!--<?php endif; ?> -->
										</th>
									</tr>
								</thead>
								<thead>
									<tr>
										<th>竞猜时间</th>
										<th>竞猜单号</th>
										<th>内容</th>
										<th>点数</th>
										<th>输赢</th>
									</tr>	
								</thead>
								<tbody>
									<?php if(is_array($vo["order"])): $i = 0; $__LIST__ = $vo["order"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><tr>
											<td><?php echo (date("H:i:s",$r["time"])); ?></td>
											<td><?php echo ($r["id"]); ?></td>
											<td><?php echo ($r["jincai"]); ?></td>
											<td><?php echo ($r["del_points"]); ?></td>
											<td>
												<?php if($awardnumbers['awardnumbers'] == ''): if(C('is_cancel_order') == '1'): ?><a class="bt bt-red" onclick="del('<?php echo ($r["id"]); ?>')">撤销</a><?php endif; ?>
													
												<?php else: ?>
												<?php echo ($r['add_points']-$r['del_points']); endif; ?>
												
											</td>
										</tr><?php endforeach; endif; else: echo "" ;endif; ?>
								</tbody><?php endforeach; endif; else: echo "" ;endif; ?>
						</table><?php endif; endif; ?>
			</div>
			<div class="tj">
				<span>进项流水：<font color="red"><?php echo ((isset($points_tj['sum_add']) && ($points_tj['sum_add'] !== ""))?($points_tj['sum_add']):'0'); ?></font></span>&nbsp;
				<span>出项流水：<font color="red"><?php echo ((isset($points_tj['sum_del']) && ($points_tj['sum_del'] !== ""))?($points_tj['sum_del']):'0'); ?></font></span>&nbsp;
				<span>输赢：<font color="red"><?php echo ($points_tj['ying']); ?></font></span>&nbsp;
			</div>
			<div class="pages">
				<?php echo ($show); ?>
			</div>
		</div>
		
		
		<script src='//cdn.bootcss.com/jquery/1.11.3/jquery.js'></script>
		<script src="/Public/layer/layer.js"></script>
		<script>
			function del(id){
				layer.open({
				    content: '您确定要取消吗？'
				    ,btn: ['确认', '取消']
				    ,yes: function(index){
				      	layer.close(index);
				      	$.ajax({
	                       	url: "<?php echo U('Home/Run/del');?>",
	                       	type: "post",
	                       	data:{'id':id},
	                       	dataType:'json',
	                       	error:function(){
	                       		parent.layer.open({content: '服务器开小差了~',skin: 'msg',time: 2});
		                    },
	                       	success:function(res){
	                       		location.href=location.href;
	                       	}
	                   	});
				    }
				});
			}
			// function del_all(number){
			// 	layer.open({
			// 	    content: '您确定要取消吗？'
			// 	    ,btn: ['确认', '取消']
			// 	    ,yes: function(index){
			// 	      	layer.close(index);
			// 	      	$.ajax({
	  //                      	url: "<?php echo U('Home/Run/del_all');?>",
	  //                      	type: "post",
	  //                      	data:{'number':number},
	  //                      	dataType:'json',
	  //                      	error:function(){
	  //                      		parent.layer.open({content: '服务器开小差了~',skin: 'msg',time: 2});
		 //                    },
	  //                      	success:function(res){
	  //                      		location.href=location.href;
	  //                      	}
	  //                  	});
			// 	    }
			// 	});
			// }
		</script>
	</body>
</html>