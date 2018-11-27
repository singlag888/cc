<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>后台 - 收款二维码</title>
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
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal" method="post" action="<?php echo U('Admin/Robot/kefu');?>" name="signupForm" id="signupForm" enctype="multipart/form-data">
								<div class="form-group">
									<label class="col-sm-2 control-label">二维码 </label>
									<div class="col-sm-10">
										<input type="hidden" name="checkpic" id="checkpic" value="/Uploads/<?php echo ($info["kefu"]); ?>" />
										<input type="hidden" name="oldcheckpic" id="oldcheckpic" value="/Uploads/<?php echo ($info["kefu"]); ?>" />
										<a href="javascript:;" class="file" title="点击选择所要上传的图片">
											<input type="file" name="file0" id="file0" multiple="multiple"/>
										</a>
										<a class="btn btn-primary" style="margin-top: 10px;margin-left: -20px;margin-bottom: 20px;" href="javascript:;" onclick="return backpic('/Uploads/<?php if($info["kefu"] == ''): ?>/img/no_img.jpg<?php else: echo ($info["kefu"]); endif; ?>');" title="还原修改前的图片" class="file">
										撤销上传
										</a>
										<div><img src="<?php if($info[kefu] != ''): ?>/Uploads/<?php echo ($info["kefu"]); else: ?>/Public/Admin/img/no_img.jpg<?php endif; ?>" height="70" id="img0" ></div>
									</div>
								</div>														
								<div class="hr-line-dashed"></div>
								
								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-2">
										<button class="btn btn-primary" type="submit">保存内容</button>
										<a class="btn btn-danger" href="<?php echo U('Admin/Index/index');?>">取消</a>
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
		<script>
			$(function(){
				$('#signupForm').ajaxForm({
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
		<script>
			function backpic(picurl){
				$("#img0").attr("src",picurl);
				$("input[name='file0']").val("");
				$("input[name='oldcheckpic']").val(picurl);
			}
			$("#file0").change(function(){
				var objUrl = getObjectURL(this.files[0]) ;
				console.log("objUrl = "+objUrl) ;
				if (objUrl) {
					$("#img0").attr("src", objUrl) ;
				}
			}) ;
	
			function getObjectURL(file) {
				var url = null ;
				if (window.createObjectURL!=undefined) {
					$("#oldcheckpic").val("nopic");
					url = window.createObjectURL(file) ;
				} else if (window.URL!=undefined) {
					$("#oldcheckpic").val("nopic");
					url = window.URL.createObjectURL(file) ;
				} else if (window.webkitURL!=undefined) {
					$("#oldcheckpic").val("nopic");
					url = window.webkitURL.createObjectURL(file) ;
				}
				return url ;
			}
		</script>
	</body>

</html>