<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no,width=device-width,height=device-height">
	<link rel="stylesheet" type="text/css" href="css/ionic.min.css">
	
	
	<style>

		.h1
		{
			padding-top: -20px;
			margin-top: -20px;
		}
		.pingfen
		{
			height: 50px;
			line-height: 50px;
		}
		.area
		{
			margin-top: 10px;
			margin-bottom: 20px;
		}
		.submit
		{
			margin-top: 90px;
		}
		.zi
		{
			font-size: 25px;
			color: red;	
		}
		.bufoot
		{
			margin-bottom: 0px;
		}

	</style>
</head>

<body>
	<div class="item item-thumbnail-left item-light">
		<img src="img/rujia.jpg">
		<h2><i class="icon ion-social-yen"></i>120</h2>
		<p>介绍</p>
	</div>
	<div class="hi">
		<div class="item item-body">
			<div class="pingfen">
				<span class="zi" style="line-height:30px; vertical-align:25%">评分</span>	
				<img src="img/star.png">
			</div>
			<label class="item item-input item-floating-label area">
				
				<textarea type="text" placeholder="请输入您的评论" cols="60" rows="3"></textarea>
			</label>
			<button class="button button-small button-positive">
				<i class="icon ion-image"></i>
				上传图片
			</button>
		</div>
	</div>
<!-- 	<div class="bar bar-footer" style="padding:3px 0px 10px 0px;">
		<button class="button button-block button-positive " style="padding:0px 0px 10px 0px;">
			提交评论<i class="icon ion-checkmark"></i>
		</button>
	</div> -->
	<div class="tabs tabs-icon-top tabs-positive" >
		<a class="tab-item">
			<i class="icon ion-checkmark"></i>
			提交评论
		</a>
	</div>
</body>
</html>
