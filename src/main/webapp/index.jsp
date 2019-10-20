<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<head>
<meta charset="UTF-8">
<title>Device Config</title>
<link rel="stylesheet" type="text/css" href="css/first.css">
<script src="js/basejs.js" type="text/javascript"></script>
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
					<li>
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
					</li>
				</ul>
			</div>


			<div class="devices-list">
				<h5>Connected Devices</h5>
				<ul>
					<li>
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
					</li>
				</ul>
			</div>

			<div class="comments-and-conn-props">
				<h5>Comments</h5>

				<div class="comments-and-conn-main-div">
					<div class="comment-box">
						<textarea></textarea>
					</div>

					<div class="conn-props">
						<div class="comm-con-prop-devices-label">COM Port:</div>
						<div class="comm-con-prop-devices-input">
							<select>
								<option>Select</option>
								<option>Option 1</option>
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