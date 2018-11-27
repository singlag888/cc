<?php if (!defined('THINK_PATH')) exit();?><script type="text/javascript">  

</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 62px;">
<HEAD>
  <title>　</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="stylesheet" type="text/css" href="/Public/Home/new/css/index.css" />
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="/Public/Home/new/css/page.css" />
 </HEAD>
 <BODY onload="connect(15535);">
  <header>
     <a onclick="history.go(-1)"><i class="ico02 back fl"></i></a>
	 <h2>加拿大２８</h2>
     <i class="ico null"></i>
	 <i class="ico plus qx45 fr"></i>
	 <i class="ico plus qx0 fr"></i>
	 <!-- <a onclick="showMask()"><i class="ico service fr"></i></a> -->
	 <a onclick="javascript:window.location.href='/';"><i class="ico service fr"></i></a>
  </header>
  <div class="headblank"></div>
  <div class="gmfix"><div id="01">
	<div class="gmfl">
		<p class="line1">距离 <i><b></b></i> 期开奖</p>
		<p class="line2">0</p>
	</div>
	<?php if($userinfo): ?><a href='/Home/User/index'><img src="<?php echo ($userinfo["headimgurl"]); ?>" style="width:35px; height:35px; border-radius:50px;margin-left:10px"><?php endif; ?>
	<div class="gmfr">
		<p class="line3"><i><?php echo ($userinfo["nickname"]); ?></i> <span class="yeup"></span></p>
		<p class="line4">元宝:<?php echo ($userinfo["points"]); ?> 盈亏:<?php echo ($points_tj['ying']); ?></p></a>
	</div></div>

	<div class="open" onclick="a1()"><div id="02"><span id="hqkj">第 <i><?php echo ($kjlist[0]["periodnumber"]); ?></i> 期 <i>
	
	
	<span class="num"><?php echo ($kjlist[0]["numberOne"]); ?></span> + <span class="num"><?php echo ($kjlist[0]["numberTwo"]); ?></span> + <span class="num"><?php echo ($kjlist[0]["numberThree"]); ?></span> = <span class="hong"><?php echo ($kjlist[0]["tema"]); ?></span>　(<?php echo ($kjlist[0]["tema_ds"]); ?>,<?php echo ($kjlist[0]["tema_dx"]); ?>)　</i></span><li class="ico02 down fr"></li></div>
	
	
	<div id="o">
	<ul class="openmo">
	<?php if(is_array($kjlist)): $i = 0; $__LIST__ = $kjlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>第 <i><?php echo ($vo["periodnumber"]); ?></i> 期<i> <span class="num"><?php echo ($vo["numberOne"]); ?></span> + <span class="num"><?php echo ($vo["numberTwo"]); ?></span> + <span class="num"><?php echo ($vo["numberThree"]); ?></span> = <span class="hong"><?php echo ($vo["tema"]); ?></span><font style="display:inline-block;width:15px"></font>(<?php echo ($vo["tema_ds"]); ?>,<?php echo ($vo["tema_dx"]); ?>)</i></li><?php endforeach; endif; else: echo "" ;endif; ?>
	
	<!--<p><a href='/user/index.php'>点击查看更多开奖记录</a></p>-->
	</ul>
	</div>
</div>
  </div>
<!--聊天开始-->
  <div class="main">
<ul class="betup"><p class="gonggao"><marquee scrollAmount=4 width=95%><?php echo C('welcome');?></marquee></p>
<div id="03">
<?php if(is_array($msglist)): $i = 0; $__LIST__ = $msglist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 'admin'): ?><p class="bettime"><?php echo ($vo["time"]); ?></p>
		<li class="notice"><center><?php echo (stripcslashes(htmlspecialchars_decode($vo["content"]))); ?></center></li><?php endif; ?>
	<?php if($vo['type'] == 'system'): ?><p class="bettime"><?php echo ($vo["time"]); ?></p>
		<li class="notice"><center><?php echo (stripcslashes(htmlspecialchars_decode($vo["content"]))); ?></center></li><?php endif; ?>
	<?php if($vo['type'] == 'say'): ?><li><div><div class="uhead"><img src="<?php echo ($vo["head_img_url"]); ?>" style= "pointer-events: none;"></div><div class="betinfo"><p class="uname"><?php echo ($vo["from_client_name"]); ?>　　<?php echo ($vo["time"]); ?></p><p class="ubet"><i class="ico02 timeico"></i>投注内容：<?php echo (stripcslashes(htmlspecialchars_decode($vo["content"]))); ?></p></div></div></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
<li class="notices"><center>仅显示前50条竞猜记录</center></li>
</div>
</ul>
</ul>
</div>
<!--聊天结束-->

<div class="alert" id="alert"></div>
<div class="alert1" id="alert1"></div>
<div class="chat_box" onclick="$('.bm-layer-wrapper').show();$('.bm-layer').show();;tel()">
<div>
<table width="90%">
<tr>
<td><img src='/Public/Home/new/css/ico/face.png' style='width:30px;margin-left: .65em;'></td>
<td><input disabled="readonly" style="margin-left: .25em;width:97%; height:35px; border:solid #7b7b7b 0.4px;color:#999;background-color: #ffffff;" maxlength="16"  placeholder='投注格式：元宝'></td>
<td><input type="submit" name="chat" style="width:120%; height:35px; font-size:16px; background:#ff9326;border:solid #ff9326 1px; color:#ffffff;" id="sendbtn" value="投注"></td>
</tr>
</table>
</div>
</div>
		<!-- 投注 -->
		<script type="text/javascript" src="/Public/Home/new/css/js/artDialog.js"></script>
		<script type="text/javascript" src="/Public/Home/new/css/js/page.js"></script>
		<div class="bm-layer-wrapper"></div>
		<div class="bm-layer">
			<div class="bm-layer-trigger">
				<div class="bm-layer-prev"></div>
				<div class="bm-layer-next"></div>
			</div>
			<div class="bm-layer-fixed">
				<div class="bm-box-btns">
					<a href="/Home/Run/rulejnd28.html"><button type="button" class="bm-btn1 bm-btn-sm">规则说明</button></a>
				</div>
				<div class="bm-box-form">
					投注金额:
					<input type="tel" placeholder="请输入投注元宝" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  
 onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" value="" maxlength="5" id="J_jine" />
					<button type="button" class="bm-btn" id="J_touzhu">投注</button>
				</div>
			</div>
		<div class="swiper-container" style="width:320px;">
		<div class="swiper-wrapper">
		
			<div class="swiper-slide bm-box">
				<div class="bm-box-title">大小单双</div>
				<div class="bm-box-info"></div>
				<div class="bm-box-list">
					<ul>
						<br><li class="bm-box-list-current"><span>大</span><p>1:<?php echo C('jnd28_dxds');?></p></li>
						<li><span>小</span><p>1:<?php echo C('jnd28_dxds');?></p></li>
						<li><span>单</span><p>1:<?php echo C('jnd28_dxds');?></p></li>
						<li><span>双</span><p>1:<?php echo C('jnd28_dxds');?></p></li>
						<li><span>极大</span><p>1:<?php echo C('jnd28_jdx');?></p></li>
						<li><span>大单</span><p>1:<?php echo C('jnd28_zuhe_1');?></p></li>
						<li><span>小单</span><p>1:<?php echo C('jnd28_zuhe_2');?></p></li>
						<li><span>大双</span><p>1:<?php echo C('jnd28_zuhe_2');?></p></li>
						<li><span>小双</span><p>1:<?php echo C('jnd28_zuhe_1');?></p></li>
						<li><span>极小</span><p>1:<?php echo C('jnd28_jdx');?></p></li>
					</ul>
				</div>
			</div>
			
			<?php if(C('jnd28_xz_open')['tema'] == '1'): ?><div class="swiper-slide bm-box bm-box-red">
				<div class="bm-box-title">猜数字</div>
				<div class="bm-box-info"></div>
				<div class="bm-box-list">
					<ul>
						<li class="bm-box-list-current"><span>0</span><p>1:<?php echo C('jnd28_tema_0');?></p></li>
						<li><span>1</span><p>1:<?php echo C('jnd28_tema_1');?></p></li>
						<li><span>2</span><p>1:<?php echo C('jnd28_tema_2');?></p></li>
						<li><span>3</span><p>1:<?php echo C('jnd28_tema_3');?></p></li>
						<li><span>4</span><p>1:<?php echo C('jnd28_tema_4');?></p></li>
						<li><span>5</span><p>1:<?php echo C('jnd28_tema_5');?></p></li>
						<li><span>6</span><p>1:<?php echo C('jnd28_tema_6');?></p></li>
						<li><span>7</span><p>1:<?php echo C('jnd28_tema_7');?></p></li>
						<li><span>8</span><p>1:<?php echo C('jnd28_tema_8');?></p></li>
						<li><span>9</span><p>1:<?php echo C('jnd28_tema_9');?></p></li>
						<li><span>10</span><p>1:<?php echo C('jnd28_tema_10');?></p></li>
						<li><span>11</span><p>1:<?php echo C('jnd28_tema_11');?></p></li>
						<li><span>12</span><p>1:<?php echo C('jnd28_tema_12');?></p></li>
						<li><span>13</span><p>1:<?php echo C('jnd28_tema_13');?></p></li>
						<li><span>14</span><p>1:<?php echo C('jnd28_tema_13');?></p></li>
						<li><span>15</span><p>1:<?php echo C('jnd28_tema_12');?></p></li>
						<li><span>16</span><p>1:<?php echo C('jnd28_tema_11');?></p></li>
						<li><span>17</span><p>1:<?php echo C('jnd28_tema_10');?></p></li>
						<li><span>18</span><p>1:<?php echo C('jnd28_tema_9');?></p></li>
						<li><span>19</span><p>1:<?php echo C('jnd28_tema_8');?></p></li>
						<li><span>20</span><p>1:<?php echo C('jnd28_tema_7');?></p></li>
						<li><span>21</span><p>1:<?php echo C('jnd28_tema_6');?></p></li>
						<li><span>22</span><p>1:<?php echo C('jnd28_tema_5');?></p></li>
						<li><span>23</span><p>1:<?php echo C('jnd28_tema_4');?></p></li>
						<li><span>24</span><p>1:<?php echo C('jnd28_tema_3');?></p></li>
						<li><span>25</span><p>1:<?php echo C('jnd28_tema_2');?></p></li>
						<li><span>26</span><p>1:<?php echo C('jnd28_tema_1');?></p></li>
						<li><span>27</span><p>1:<?php echo C('jnd28_tema_0');?></p></li>
					</ul>
				</div>
			</div><?php endif; ?>
			
			<?php if(C('jnd28_xz_open')['bds'] == '1'): ?><div class="swiper-slide bm-box">
				<div class="bm-box-title">猜类型</div>
				<div class="bm-box-info"></div>
				<div class="bm-box-list">
					<ul>
						<br><li class="bm-box-list-current"><span>豹子</span><p>1:<?php echo C('bj28_bds_1');?></p></li>
						<li><span>顺子</span><p>1:<?php echo C('bj28_bds_2');?></p></li>
						<li><span>对子</span><p>1:<?php echo C('bj28_bds_3');?></p></li>
					</ul>
				</div>
			</div><?php endif; ?>
			
		</div>
		</div>
		
		<style type="text/css">
			html {
				height:100%;
			}
			.body{
				position-:fixed;
				height:100%;
				overflow:hidden;
			}
		</style>
		<script type="text/javascript">
		    /* function tel(){
		    document.getElementById("J_jine").focus()
		    } */
			var tmp_top;
			$('#J_jine').focus(function(){
				tmp_top = $('body').scrollTop();
				$("body").scrollTop( $('body').height() );
			}).blur(function(){
				$("body").scrollTop( tmp_top );
			})
				;(function(){
				$('.Q_quxiao').click(function(){
					$('.bm-layer-wrapper').click();
					art.dialog({
						content: '确定要取消本次投注吗？',
						lock: 1,
						ok: function(){
							$.ajax({
								url:'qx.php?do=2',
								data: {
								},
								success: function(data){
									//alert(data)
									document.getElementById("alert1").innerHTML=data
									$(".alert1").show();
									setTimeout( "$('.alert1').fadeOut()" , 1000)
								}
							})
						},
						cancelVal: '关闭'
						,cancel: function(){
							//alert(2)
						}
					});
					return !1;
				});
					$('.J_quxiao').click(function(){
					$('.bm-layer-wrapper').click();
					art.dialog({
						content: '确定要取消本期全部投注吗？',
						lock: 1,
						ok: function(){
							$.ajax({
								url:'qx.php?do=1',
								data: {
								},
								success: function(data){
									//alert(data)
									document.getElementById("alert1").innerHTML=data
									$(".alert1").show();
									setTimeout( "$('.alert1').fadeOut()" , 1000)
								}
							})
						},
						cancelVal: '关闭'
						,cancel: function(){
							//alert(2)
						}
					});
					return !1;
				})
				var mySwiper;
				mySwiper = new Swiper('.swiper-container');
				$('.bm-layer-prev').on('click', function(e){
					mySwiper.swipePrev();
				})
				$('.bm-layer-next').on('click', function(e){
					mySwiper.swipeNext();
				})
				$('.bm-box-list li').click(function(){
					$(this).addClass('bm-box-list-current').siblings().removeClass('bm-box-list-current');
				})
				$('#J_show').click(function(){
					$('.bm-layer-wrapper').show();
					$('.bm-layer').show();
				})
				$('.bm-layer-wrapper').click(function(){
					$('.bm-layer-wrapper').hide();
					$('.bm-layer').hide();
				})
				// 第几名/大小单双/金额
				$('#J_touzhu').click(function(){
					var active = $('.swiper-slide-active');
					var lx = $('.bm-box-title', active).html();
					var lx1 = $('.bm-box-list-current span', active).html();
					var je = $('#J_jine').val();
					
					if( !je.length ){
						//alert('金额不能为空。');
						document.getElementById("alert").innerHTML="金额不能为空";
						$(".alert").show();
						setTimeout( "$('.alert').fadeOut()" , 1000)
						return !1;
					}
					//alert(lx)
					//alert(lx1)
					//alert(je)
					//return !1;
					
					var input = "";
					if(lx=='猜数字'){
						input = lx1+'点'+je;
					}else{
						input = lx1+je;
					}
					onSubmit(input);
					
				})
			})();
		</script>

		<!--推送-->
		<script type="text/javascript">
	var ws, name;

	// 连接服务端
	function connect(port){
		// 创建websocket
		ws = new WebSocket("ws://" + document.domain + ":"+port);
		// 当socket连接打开时，发送登录信息
		ws.onopen = function(){
			var name = "<?php echo ($userinfo["nickname"]); ?>";
			// 登录
			var userid = "<?php echo ($userinfo["id"]); ?>";
			var room = "<?php echo !empty($room)? $room :0 ;?>";
			var login_data = '{"type":"login","client_name":"' + name.replace(/"/g, '\"') + '","client_id":"'+userid+'","room":"'+room+'"}';
			console.log("websocket握手成功，发送登录数据:" + login_data);
			ws.send(login_data);
		};
		// 当有消息时根据消息类型显示不同信息
		ws.onmessage = onmessage;
		ws.onclose = function(){
			console.log("连接关闭，定时重连");
			connect();
		};
		ws.onerror = function() {
			console.log("出现错误");
		};
	}

	var inte = parseInt(Math.random()*12+1);
	function onmessage(e) {
		var rate = 0;
		var robot_rate = <?php echo C('robot_rate');?> ? <?php echo C('robot_rate');?> : 3;
		switch(<?php echo C('robot_rate');?>){
			case 5:
				rate = 5;
				break;
			case 4:
				rate = 10;
				break;
			case 3:
				rate = 25;
				break;
			case 2:
				rate = 35;
				break;
			case 1:
				rate = 45;
				break;
			default:
				rate = 25;
				break;
		}
//		console.log(e.data);
		var data = eval("(" + e.data + ")");
//		console.log(data);
		switch(data['type']) {
			// 服务端ping客户端
			case 'ping':
				$('#xs').html(data.content+<?php echo C('online');?>);
				ws.send('{"type":"pong"}');
				inte--;
				if(inte==0){
					ws.send('{"type":"robot"}');
					inte = parseInt(Math.random()*rate+1)+2;
				}
				break;
				// 登录 更新用户列表
			case 'login':
				console.log(data['client_name'] + "登录成功");
				break;
				// 发言
			case 'say':
				console.log(data['from_client_name'] + "发言");
				say(data['uid'],data['from_client_name'], data['head_img_url'], data['content'], data['time']);
				break;
				// 用户退出 更新用户列表
			case 'logout':
				break;
			case 'broadcast':
				//alert('client');
			
				//房管
			case 'admin':
				$("#03").prepend('<li class="notice"><center>' + data["content"] + '</center></li>');
				$("#03").prepend('<p class="bettime">'+data["time"]+'</p>');
				document.getElementById("alert1").innerHTML=data["content"];
				$(".alert1").show();
				setTimeout( "$('.alert1').fadeOut()" , 1000);
				break;
				//系统
			case 'system':
				if(data["content"].indexOf("结算已完毕") != -1){
					location.reload();
				}
				$("#03").prepend('<li class="notice"><center>' + data["content"] + '</center></li>');
				$("#03").prepend('<p class="bettime">'+data["time"]+'</p>');
				break;
				//积分减
			case 'points':
				$('#sy').html((parseFloat($('#sy').html())-data['content']).toFixed(1));
				break;
				//积分加
			case 'pointsadd':
				$('#sy').html((parseFloat($('#sy').html())+data['points']).toFixed(1));
				parent.layer.msg('恭喜竞猜成功');
				break;
				//重载
			case 'reload':
				if('<?php echo ($userinfo["id"]); ?>'==9){
					window.location.href=window.location.href;
				}
				break;
				//切换
			case 'switch':
				parent.location.reload();
				break;	
		}
	}

	// 提交对话
	function onSubmit(input) {
		var headimgurl = '<?php echo ($userinfo["headimgurl"]); ?>';
		var from_client_name = '<?php echo ($userinfo["nickname"]); ?>';
		if(input==''){
			//$('#textarea').focus();
			return false;
		}

		ws.send('{"type":"say","client_name":"'+from_client_name+'","headimgurl":"'+headimgurl+'","content":"' + input.replace(/"/g, '\"').replace(/n/g, '\n').replace(/r/g, '\r') + '"}');
		//$('#textarea').val('');
		//$('#dialog').scrollTop(0);
	}

	// 发言
	function say(uid, from_client_name, head_img_url, content, time) {
		if('<?php echo ($userinfo["id"]); ?>'==uid){
			$("#03").prepend('<li><div><div class="uhead"><img src="'+head_img_url+'" style= "pointer-events: none;"></div><div class="betinfo"><p class="uname">' + from_client_name +'　　'+time +'</p><p class="ubet"><i class="ico02 timeico"></i>投注内容：' + content + '</p></div></div></li>');
		}else{
			$("#03").prepend('<li><div><div class="uhead"><img src="'+head_img_url+'" style= "pointer-events: none;"></div><div class="betinfo"><p class="uname">' + from_client_name +'　　'+time +'</p><p class="ubet"><i class="ico02 timeico"></i>投注内容：' + content + '</p></div></div></li>');
		}
	}
</script>
		<script src='/Public/Common/js/socket.io.js'></script>
		<!--推送-->
		
		<script>
		
		var count = 0;
		function countDown(){
			$.ajax({
				url:'/Home/Get/getJnd28',
				data: {
				},
				success: function(data){
					data = JSON.parse(data);
					$(".line1").html("距离 <i><b>"+data.drawIssue+"</b></i> 期开奖");
					count = data.time;
					executeCountDown();
					setInterval(function() {
						executeCountDown();
					}, 1000);
				}
			})
		}
		
		function executeCountDown(){
			if(count == 0){
				$(".line2").html("正在开奖");
			}else if(count <= <?php echo C('jnd28_stop_time');?>){
				count = count - 1;
				$(".line2").html("已封盘");
				$('#J_touzhu').attr("disabled",true);
				$("#J_touzhu").css("background-color","#c7c7c7");
			}else{
				count = count - 1;
				$(".line2").html(count);
			}
		}
		
		countDown();
		
		</script>
</div>

<!--websocket-start-->
<div class="rmenu">
<a href="/Home/Run/record.html">投注记录</a>
<!--<?php if(C('quick_pay') == '1' and $userinfo != null): ?><a href="<?php echo C('quick_pay_domain');?>/pay/index.php?appid=<?php echo C('quick_pay_appid');?>&payno=<?php echo ($userinfo["id"]); ?>">在线充值</a>
<?php else: ?>
<a href="/Home/Fen/addpage.html">在线充值</a><?php endif; ?>-->
<a href="/Home/Fen/addpage.html">在线充值</a>
<a href="/Home/Fen/xiapage.html">快速提现</a>
<a href="<?php echo U('Home/Run/tui');?>?uid=<?php echo ($userinfo["id"]); ?>">推广赚钱</a>
<a href="/Home/Run/rulejnd28.html">游戏规则</a>
</div>


<script>
$(".bm-btn").click(function(){
	  //$(".alert").show();
	  //setTimeout( "$('.alert').fadeOut()" , 1000)
 });
$(".f").click(function(){
	  $(".alert1").show();
	  setTimeout( "$('.alert1').fadeOut()" , 1000)
 });
function a1()
{
	$(".openmo").slideToggle();
}
 $(".ufmenu, .ufup").click(function(){
      $(".ufix").animate({height:"0"});
	   $("header").show();
 });

 $(".menu").click(function(){
      $(".ufix").animate({height:"100%"});
	  $("header").hide();

 });

$(".qx0").click(function(){
      $(".rmenu").show(300);
      $(this).hide();
	  $(".qx45").show();
 });
$(".qx45").click(function(){
      $(".rmenu").hide(300);
      $(this).hide();
	  $(".qx0").show();
 });
$(".plsm").click(function(){
      $(".peilv").show();
	   $(".main, .gmfix").hide();
 });
 $(".pltit span").click(function(){
      $(".peilv").hide();
	  $(".main, .gmfix").show();
 });
function showMask(){     
$("#mask").css("height",$(document).height());     
$("#mask").css("width",$(document).width());     
$("#mask").show();     
}  
function hideMask(){     
$("#mask").hide();     
}
</script>
<div id="mask" class="mask" onclick="hideMask()"><img src="<?php if($kefu[kefu] != ''): ?>/Uploads/<?php echo ($kefu[kefu]); else: ?>/Public/Admin/img/no_img.jpg<?php endif; ?>" /></div>
</body>
</html>

    <foot>
      <ul class="foot">
          <li><a href='/Home/Run/rulejnd28.html'><i class="gz"></i><br>规则</a></li>
          <li><a  href='/Home/Run/record.html'><i class="jl"></i><br>记录</a></li>
          <li><a href="<?php echo U('Home/Run/tui');?>?uid=<?php echo ($userinfo["id"]); ?>"><i class="news" ></i><br>推广</a></li>
          <li><a onclick="showMask()"><i class="kf"></i><br>客服</a></li>
          <?php if(C('quick_pay') == '1' and $userinfo != null): ?><li><a  href="<?php echo C('quick_pay_domain');?>/pay/index.php?appid=<?php echo C('quick_pay_appid');?>&payno=<?php echo ($userinfo["id"]); ?>"><i class="charge"></i><br>充值</a></li>
		  <?php else: ?>
		  <li><a  href="/Home/Fen/addpage.html"><i class="charge"></i><br>充值</a></li><?php endif; ?>
          <li><a  href='/Home/User/index'><i class="wd"></i><br>我的</a></li>
      </ul>
  </foot>

 <div id="04">
	</tbody>
</table>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>