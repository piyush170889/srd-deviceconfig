<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<head>
<meta charset="UTF-8">
<title>Device Config</title>
<link rel="stylesheet" type="text/css" href="css/first.css">
<script src="js/basejs.js" type="text/javascript"></script>
<script type="text/javascript">
	function loadSelectedDeviceDetails(serialNo) {

		//TODO : Remove serialNo. Here serialNo doesn't give dynamic value
		console.log("Selected device: ", serialNo);
		document.getElementById('textarea-comment').innerHTML = 'One Device connected';

		//set dropdown
		var temp = "8080";
		var mySelect = document.getElementById('select-com-port');

		for (var i, j = 0; i = mySelect.options[j]; j++) {
			if (i.value == temp) {
				mySelect.selectedIndex = j;
				break;
			}
		}

	}
</script>
</head>

<body>

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

					<%-- <s:radio name="device_radio" list="deviceMasterList"
						listKey="serialNo" listValue="serialNo" /> --%>


					<li><s:iterator value="deviceMasterList" var="deviceMaster">
							<div class="devices-label">
								<s:property value="serialNo" />
							</div>
							<div class="devices-input">
								<input id="#deviceMaster.serialNo" type="radio"
									onclick="loadSelectedDeviceDetails(id)" />
							</div>

						</s:iterator></li>

					<!-- 					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li> -->
				</ul>
			</div>


			<div class="devices-list">
				<h5>Connected Devices</h5>
				<ul>

					<li><s:iterator value="deviceMasterList" var="deviceMaster">
							<s:if test="%{#deviceMaster.isConnected=='true'}">
								<div class="devices-label">
									<s:property value="serialNo" />
								</div>
								<div class="devices-input">
									<input id="#deviceMaster.serialNo" type="checkbox" />
								</div>
							</s:if>
						</s:iterator></li>

					<!-- <li>
						<div class="devices-label">Sr No 1</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li>
					<li>
						<div class="devices-label">Sr No 2</div>
						<div class="devices-input">
							<input id="checkid" type="checkbox" value="test" />
						</div>
					</li> -->
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
								<option>9999</option>
								<option>1234</option>
								<option>8080</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Baud Rate:</div>
						<div class="comm-con-prop-devices-input">
							<select>
								<option>Select</option>
								<option>Option 1</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Data Bits:</div>
						<div class="comm-con-prop-devices-input">
							<select>
								<option>Select</option>
								<option>Option 1</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Parity:</div>
						<div class="comm-con-prop-devices-input">
							<select>
								<option>Select</option>
								<option>Option 1</option>
							</select>
						</div>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">Stop Bits:</div>
						<div class="comm-con-prop-devices-input">
							<select>
								<option>Select</option>
								<option>Option 1</option>
							</select>
						</div>
					</div>
				</div>

			</div>

			<div class="connect-btn">
				<input type="button" value="Connect">
			</div>

		</div>


		<div>
			<img class="linebottom" src="images/line.png" alt="linetop"
				width="800">
		</div>

	</div>

	<!-- <img class="linebottom" src="images/line.png" alt="bottomLine" /> -->

</body>

</html>