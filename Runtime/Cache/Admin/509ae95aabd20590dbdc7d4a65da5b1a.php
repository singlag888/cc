<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>后台 - 极速赛车下注配置</title>
		<meta name="keywords" content="">
		<meta name="description" content="">

		<link rel="shortcut icon" href="favicon.ico">
		<link href="/Public/Admin/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
		<link href="/Public/Admin/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
		<link href="/Public/Admin/css/plugins/iCheck/custom.css" rel="stylesheet">
		<link href="/Public/Admin/css/animate.min.css" rel="stylesheet">
		<link href="/Public/Admin/css/style.min862f.css?v=4.1.0" rel="stylesheet">

	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-sm-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>极速赛车下注配置 </h5><span>（修改后需要重启服务生效）</span>
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<form id="signform" action="<?php echo U('Admin/Site/xiazhu_er75sc');?>" method="post" class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-2 control-label">单笔最低点数</label>
									<div class="col-sm-6">
										<input type="text" name="er75scqi_min_point" value="<?php echo C('er75scqi_min_point');?>" placeholder="用户每期最低点数" class="form-control">
									</div>
								</div>
									<div class="form-group">
									<label class="col-sm-2 control-label">用户每期最高点数</label>
									<div class="col-sm-6">
										<input type="text" name="er75scqi_max_point" value="<?php echo C('er75scqi_max_point');?>" placeholder="用户每期最高点数" class="form-control">
									</div>
								</div>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">1~10名猜大小单双</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_dxds" value="<?php echo C('er75sc_dxds');?>" placeholder="输入赔率" class="form-control">
									</div>
									 <div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['dxds'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[dxds]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['dxds'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[dxds]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[dxds]" value="<?php echo C('er75sc_xz_max')['dxds'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">1~10名猜车号</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_chehao" value="<?php echo C('er75sc_chehao');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['chehao'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[chehao]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['chehao'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[chehao]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[chehao]" value="<?php echo C('er75sc_xz_max')['chehao'];?>" placeholder="每个车号最高" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">1~10名猜组合(大单,小双)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_zuhe_1" value="<?php echo C('er75sc_zuhe_1');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['zuhe_1'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[zuhe_1]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['zuhe_1'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[zuhe_1]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[zuhe]" value="<?php echo C('er75sc_xz_max')['zuhe'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">1~10名猜组合(小单,大双)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_zuhe_2" value="<?php echo C('er75sc_zuhe_2');?>" placeholder="输入赔率" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">1~5名猜龙虎</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_lh" value="<?php echo C('er75sc_lh');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['lh'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[lh]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['lh'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[lh]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[lh]" value="<?php echo C('er75sc_xz_max')['lh'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚猜庄闲</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_zx" value="<?php echo C('er75sc_zx');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['zx'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[zx]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['zx'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[zx]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[zx]" value="<?php echo C('er75sc_xz_max')['zx'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">猜冠亚号码</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_gy" value="<?php echo C('er75sc_gy');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['gy'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[gy]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['gy'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[gy]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[gy]" value="<?php echo C('er75sc_xz_max')['gy'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>

							

								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值赔率选择</label>
									<div class="col-sm-4">
										<select class="form-control gy_select" name="er75sc_gy_set">
											<option <?php if(C('er75sc_gy_set') == 1): ?>selected<?php endif; ?>  value="1" >冠亚和为11属于小(2个倍率设置)</option>
											<option <?php if(C('er75sc_gy_set') == 2): ?>selected<?php endif; ?>  value="2">冠亚和为11属于和局（1个倍率设置）</option>
										</select>
										<span>（修改后需要重启run3.bat服务生效）</span>
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['tema'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['tema'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[tema]" value="<?php echo C('er75sc_xz_max')['tema'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>


								<div class="form-group gy_he" <?php if(C('er75sc_gy_set') == 1): ?>style="display:none"<?php endif; ?> >
									<label class="col-sm-2 control-label">冠亚和值(特码)(大，小，单，双，11为和)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema" value="<?php echo C('er75sc_tema');?>" placeholder="输入赔率" class="form-control">
									</div>
								</div>


								<div class="form-group gy_xiao" <?php if(C('er75sc_gy_set') == 2): ?>style="display:none"<?php endif; ?> >
									<label class="col-sm-2 control-label">冠亚和值(特码)(大，双)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_1" value="<?php echo C('er75sc_tema_1');?>" placeholder="输入赔率" class="form-control">
									</div>
									
								</div>
								<div class="form-group gy_xiao" <?php if(C('er75sc_gy_set') == 2): ?>style="display:none"<?php endif; ?> >
									<label class="col-sm-2 control-label">冠亚和值(特码)(小，单)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_2" value="<?php echo C('er75sc_tema_2');?>" placeholder="输入赔率" class="form-control">
									</div>
								</div>


							
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜数字(3.4.18.19)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_sz_1" value="<?php echo C('er75sc_tema_sz_1');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['tema_sz_1'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema_sz_1]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['tema_sz_1'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema_sz_1]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[tema_sz]" value="<?php echo C('er75sc_xz_max')['tema_sz'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜数字(5.6.16.17)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_sz_2" value="<?php echo C('er75sc_tema_sz_2');?>" placeholder="输入赔率" class="form-control">
									</div>
								
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜数字(7.8.14.15)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_sz_3" value="<?php echo C('er75sc_tema_sz_3');?>" placeholder="输入赔率" class="form-control">
									</div>
									
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜数字(9.10.12.13)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_sz_4" value="<?php echo C('er75sc_tema_sz_4');?>" placeholder="输入赔率" class="form-control">
									</div>
									
								</div>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜数字(11)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_sz_5" value="<?php echo C('er75sc_tema_sz_5');?>" placeholder="输入赔率" class="form-control">
									</div>
								
								</div>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜区段(A,C)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_qd_1" value="<?php echo C('er75sc_tema_qd_1');?>" placeholder="输入赔率" class="form-control">
									</div>
									<div class="col-sm-2">
										<input type="radio" value="1" <?php if(C('er75sc_xz_open')['tema_qd_1'] == 1): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema_qd_1]">开启&nbsp;&nbsp;
										<input type="radio" value="0" <?php if(C('er75sc_xz_open')['tema_qd_1'] == 0): ?>checked<?php endif; ?> class="i-checks" name="er75sc_xz_open[tema_qd_1]">关闭
									</div>
									<div class="col-sm-2">
										<input type="text" name="er75sc_xz_max[tema_qd]" value="<?php echo C('er75sc_xz_max')['tema_qd'];?>" placeholder="当前玩法每期最高点数" class="form-control">
									</div>
								</div>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">冠亚和值(特码)猜区段(B)</label>
								    <div class="col-sm-4">
										<input type="text" name="er75sc_tema_qd_2" value="<?php echo C('er75sc_tema_qd_2');?>" placeholder="输入赔率" class="form-control">
									</div>
									
								</div>
								<span style="color: red;">*赔率为含本赔率</span>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-2">
										<button class="btn btn-primary" type="submit">保存信息</button>&nbsp;&nbsp;&nbsp;
										<a class="btn btn-danger" href="<?php echo U('Index/index');?>">取消</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="/Public/Admin/js/jquery.min.js?v=2.1.4"></script>
		<script src="/Public/Admin/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="/Public/Admin/js/content.min.js?v=1.0.0"></script>
		<script src="/Public/Common/js/ajaxForm.js"></script>
		<script src="/Public/Common/layer/layer.js"></script>
		<script src="/Public/Admin/js/plugins/iCheck/icheck.min.js"></script>
		<script>
			$('.gy_select').change(function(){
				if ($(this).val() == 1) {
					$('.gy_he').hide();
					$('.gy_xiao').show();
				}else {
					$('.gy_xiao').hide();
					$('.gy_he').show();
				}
			})

			$(document).ready(function() {
				$(".i-checks").iCheck({
					checkboxClass: "icheckbox_square-green",
					radioClass: "iradio_square-green",
				})
			});
		</script>
		<script>
			$(function(){
				$('#signform').ajaxForm({
					success: complete, 
					dataType: 'json'
				});
				function complete(data){
					if(data.status==1){
						$('.btn-primary').attr('disabled','disabled');
						layer.msg(data.info, function(index){
			 				layer.close(index);
							window.location.href=data.url;
						});
					}else{
						layer.msg(data.info);
						return false;	
					}
				}
			});
		</script>
	</body>

</html>