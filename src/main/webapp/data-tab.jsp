<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<head>
<title>DT Content</title>
<link rel="stylesheet" type="text/css" href="css/second.css" />
<script src="js/basejs.js" type="text/javascript"></script>
</head>

<body>
	<div class="actualdiv">
		<div>
			<img class="linetop" src="images/line.png" alt="linetop" />
		</div>

		<div class="container">
			<div class="left-div">
				<div class="left-div-1">
					<h5>
						Material Parameters<span></span>
					</h5>

					<div class="mp_radio_btns">
						<select>
							<option value="mp_y0">Y0</option>
							<option value="mp_y1">Y1</option>
							<option value="mp_y2">Y2</option>
						</select>
					</div>

					<div class="mp_div_2">
						<label class="mp_div_2_label">Moisture Percentage :</label> <label
							class="mp_div_2_label">Material Temp :</label> <label
							class="mp_div_2_label">Material Density :</label> <label
							class="mp_div_2_label">Temp Source :</label>
					</div>

					<div class="mp_div_3">
						<label class="mp_div_3_label">0.656</label> <label
							class="mp_div_3_label">0.83</label> <label class="mp_div_3_label">0.83</label>
						<input type="radio" value="modbus"> Modbus <input
							type="radio" value="modbus"> 4-20 mA
					</div>

					<div>
						<img class="linetop" src="images/line.png" alt="linetop" />
					</div>
				</div>

				<div class="left-div-2">
					<h5>
						Internal Temp Control<span></span>
					</h5>

					<div class="intr_temp_ctrl_divs">
						<div class="col-25">
							<label>PS_Temp :</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">0.83</label>
						</div>
						<div class="col-25">
							<label>Duty Cycle :</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">0.83</label>
						</div>
					</div>

					<div class="intr_temp_ctrl_divs">
						<div class="col-25">
							<label>CPU_Temp</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">0.83</label>
						</div>
						<div class="col-25">
							<label>Int Temp Set :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" />
						</div>
					</div>

					<div class="intr_temp_ctrl_divs">
						<div class="col-25">
							<label>RF_Temp</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">0.8</label>
						</div>

						<div class="col-50">
							<div class="col-50">
								<label>P :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>I :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>D :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" />
							</div>
						</div>

					</div>

					<div>
						<img class="linetop" src="images/line.png" alt="linetop" />
					</div>
				</div>

				<div class="left-div-3">
					<h5>
						Device Settings<span></span>
					</h5>

					<div class="ds_components">
						<div class="col-25">
							<label>Zero Avg. Time :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
						<!-- 	</div> -->
						<div class="col-25">
							<label>Normal Avg. Time :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
					</div>

					<div class="ds_components">
						<div class="col-25">
							<label>Detector Avg. Time :</label><br />
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
					</div>

				</div>
			</div>

			<div class="right-border"></div>

			<div class="center-div">

				<h5>
					Internal Calculations<span></span>
				</h5>

				<div class="internal-calc-div">
					<div style="margin-left: 24%;" class="col-25">
						<h5>Frequency</h5>
					</div>
					<div class="col-25">
						<h5>Frequency1</h5>
					</div>
					<div class="col-25">
						<h5>Frequency2</h5>
					</div>
				</div>

				<div class="frequency">
					<div class="center-div-val">
						<label> Frequency</label>
					</div>
					<div class="center-div-val">
						<label> RF Gain</label>
					</div>
					<div class="center-div-val">
						<label>Analog Gain</label>
					</div>
					<div class="center-div-val">
						<label>I</label>
					</div>

					<div class="center-div-val">
						<label>Q</label>
					</div>
					<div class="center-div-val">
						<label>D</label>
					</div>
					<div class="center-div-val">
						<label>R</label>
					</div>
					<div class="center-div-val">
						<label>Phi</label>
					</div>
					<div class="center-div-val">
						<label>A</label>
					</div>
					<div class="center-div-val">
						<label>Dphi</label>
					</div>
					<div class="center-div-val">
						<label>CalR0</label>
					</div>
					<div class="center-div-val">
						<label>CalPhi</label>
					</div>
					<div class="center-div-val">
						<label>Rz</label>
					</div>
					<div class="center-div-val">
						<label>Phi Z</label>
					</div>
				</div>

				<div class="frequency-border"></div>

				<div class="frequency">
					<!-- <h5>Frequency</h5> -->

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>

				</div>

				<div class="frequency-border"></div>

				<div class="frequency">

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
				</div>

				<div class="frequency-border"></div>

				<div class="frequency">

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>

					<div class="center-div-val">
						<input type="number" name="fname" />
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						` <label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
					<div class="center-div-val">
						<label>4.34</label>
					</div>
					<div class="center-div-val">
						<label>1.23</label>
					</div>
				</div>
			</div>

			<div class="right-border"></div>

			<div class="right-div">
				<div class="right-div-1">
					<h5>
						Coefficient<span></span>
					</h5>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>d :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Rho :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch1Alpha0 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a1 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a2 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch1Beta0 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a3 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a8 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch2Alpha0 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>


					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a0 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a5 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch2Beta0 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a6 :</label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>


					<div class="r_components" style="margin-top: 2%;">
						<div class="col-25">
							<label>Ch1s :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
						<div class="col-25">
							<label>Ch2s :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
					</div>

					<div class="r_components">
						<div class="col-25">
							<label>Ch1n :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
						<div class="col-25">
							<label>Ch2n :</label>
						</div>
						<div class="col-25">
							<input type="text" value="0.0" /><br />
						</div>
					</div>

				</div>

				<div>
					<img class="linetop" src="images/line.png" alt="linetop" />
				</div>
				<!-- </div> -->

				<div class="right-div-2">
					<h5>
						Diagnostic Parameter<span></span>
					</h5>

					<div class="r_components" style="margin: 3.5%;">
						<div class="col-25">
							<label>ADC_I :</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">163</label>
						</div>
						<div class="col-25">
							<label>ADC_Q :</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label">137</label>
						</div>
					</div>

					<h5 style="margin: 4% 0;">
						4-20 mA Limits<span></span>
					</h5>

					<div class="r_components">
						<div class="col-25" style="margin-left: 25%">
							<label>Max</label>
						</div>
						<div class="col-50">
							<label>Min</label>
						</div>
					</div>

					<div class="r_components">
						<div class="col-50" style="border-right: 1px solid #cecece">
							<div class="col-50">
								<label>Blink : </label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
							<div class="col-50">
								<label>Ext. Temp : </label>
							</div>
							<div class="col-50">
								<input type="text" value="0.0" /><br />
							</div>
						</div>

						<!-- <div class="right-border"></div> -->

						<div class="col-50">
							<div style="width: 100%">
								<input type="text" value="0.0" /><br />
							</div>
							<div style="width: 100%">
								<input type="text" value="0.0" /><br />
							</div>
						</div>
					</div>

				</div>

				<div>
					<img class="linetop" src="images/line.png" alt="linetop" />
				</div>

				<div class="right-div-3">
					<h5>
						Calibration<span></span>
					</h5>

					<div class="r_components" style="margin: 3.5% 0 2% 0;">
						<div class="col-50">
							<label>Remaining Time: </label>
						</div>
						<div class="col-50">
							<div class="progress-bar">
								<span style="width: 25%"></span>
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-50">
							<input type="button" value="Start Calibration" class="btn_submit" />
						</div>
						<div class="col-50">
							<input type="button" value="Start Calibration" class="btn_submit" />
						</div>
					</div>
				</div>
			</div>
		</div>

		<div>
			<img class="linetop" src="images/line.png" alt="linetop" />
		</div>
	</div>



</body>

</html>