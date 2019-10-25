<%@ page contentType="text/html; charset=UTF-8"%>


<html>
<head>
<meta charset="UTF-8">
<title>Device Config</title>
<link rel="stylesheet" type="text/css" href="css/first.css">
<script src="js/jquery_3_4_1.min.js"></script>
<%-- <script src="js/basejs.js" type="text/javascript"></script> --%>
<script src="js/main.js"></script>
</head>

<body>

	<!-- Actual Main Div -->
	<div class="actualdiv">

		<!-- Header -->
		<div>
			<img class="linetop" src="images/line.png" alt="linetop" width="800">
		</div>
		<!-- ./Header -->

		<!-- Sidebar -->
		<div class="sidebar">
			<ul>
				<li><a href="">Home</a></li>
				<li><a href="data-tab" target="_blank">Data Tab</a></li>
			</ul>
		</div>
		<!-- ./Sidebar -->

		<!-- Div To Replace -->
		<div id="divToReplace"></div>
		<!-- ./Div To Replace -->

		<!-- Footer -->
		<div>
			<img class="linebottom" src="images/line.png" alt="linetop"
				width="800">
		</div>
		<!-- ./Footer -->

		<!-- Index Custom Javascript -->
		<script>
			var data = {};
			loadPage('deviceconfig-home', data);
		</script>
	</div>

</body>

</html>