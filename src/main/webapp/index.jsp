<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="UTF-8">
<title>Device Config</title>
<link rel="stylesheet" type="text/css" href="css/first.css">
<script src="js/jquery_3_4_1.min.js"></script>
<%-- <script src="js/basejs.js" type="text/javascript"></script> --%>

</head>

<body>

	<input type="hidden" id="serial-no" value="" />
	<input type="hidden" id="is-conn" value="" />

	<div class="actualdiv">

		<div>
			<img class="linetop" src="images/line.png" alt="linetop" width="800">
		</div>

		<div class="sidebar">
			<ul>
				<li><a href="deviceconfig-home">Home</a></li>
				<li><a href="data-tab" target="_blank">Data Tab</a></li>
			</ul>
		</div>

		<div class="maindiv">

			<div class="buttons-group">
				<div class="top-buttons btn1">
					<span>Material Status</span>
					<div class="circle-green"></div>
				</div>
				<div class="top-buttons btn2">
					<span>Temperature Lock</span>
					<div class="circle-red"></div>
				</div>
				<div class="top-buttons btn3">
					<span>Frequency Lock</span>
					<div class="circle-red"></div>
				</div>
				<div class="top-buttons btn4">
					<span>SR Number: 123456789</span>
				</div>
			</div>

			<div class="devices-list">
				<h5>All Devices</h5>
				<ul>
					<s:iterator value="deviceMasterList" var="deviceMaster">

						<li>

							<div class="devices-label">
								<s:property value="serialNo" />
							</div>
							<div class="devices-input">
								<input type="radio" name="selectedDevice"
									value="<s:property value="serialNo" />"
									onclick="loadSelectedDeviceDetails('<s:property value="serialNo" />', '<s:property value="comments" />', 
									'<s:property value="comPort" />', '<s:property value="baudRate" />', '<s:property value="dataRate" />', 
									'<s:property value="parity" />', '<s:property value="stopBits" />', '<s:property value="isConn" />')" />
							</div>

						</li>
					</s:iterator>
				</ul>
			</div>


			<div class="devices-list">

				<h5>Connected Devices</h5>

				<ul>

					<s:iterator value="deviceMasterList" var="deviceMaster">
						<li><s:if test="%{#deviceMaster.isConn==1}">
								<div class="devices-label">
									<s:property value="serialNo" />
								</div>
								<div class="devices-input">
									<input type="radio" name="selectedDevice"
										value="<s:property value="serialNo" />"
										onclick="loadSelectedDeviceDetails('<s:property value="serialNo" />', '<s:property value="comments" />', 
									'<s:property value="comPort" />', '<s:property value="baudRate" />', '<s:property value="dataRate" />', 
									'<s:property value="parity" />', '<s:property value="stopBits" />', '<s:property value="isConn" />')" />
								</div>
							</s:if></li>
					</s:iterator>

				</ul>
			</div>

			<div class="comments-and-conn-props">
				<h5>Comments</h5>

				<div class="comments-and-conn-main-div">
					<div class="comment-box">
						<textarea id="textarea-comment"></textarea>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">COM Port:</div>
						<div class="comm-con-prop-devices-input">
							<select id="select-com-port">

								<option>Select</option>
								<option>8080</option>
								<option>8081</option>
								<option>8082</option>
								<option>8083</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Baud Rate:</div>
						<div class="comm-con-prop-devices-input">
							<select id="baud-rate">
								<option>Select</option>
								<option>2</option>
								<option>4</option>
								<option>6</option>
								<option>8</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Data Bits:</div>
						<div class="comm-con-prop-devices-input">
							<select id="data-bits">
								<option>Select</option>
								<option>50</option>
								<option>100</option>
								<option>150</option>
								<option>200</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Parity:</div>
						<div class="comm-con-prop-devices-input">
							<select id="parity">
								<option>Select</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Stop Bits:</div>
						<div class="comm-con-prop-devices-input">
							<select id="stop-bits">
								<option>Select</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
					</div>
				</div>

			</div>

			<div class="connect-btn">
				<input type="button" onclick="updateDeviceData()" value="Connect">
			</div>

		</div>


		<div>
			<img class="linebottom" src="images/line.png" alt="linetop"
				width="800">
		</div>

	</div>

	<script src="js/device-config.js" type="text/javascript"></script>
</body>

</html>