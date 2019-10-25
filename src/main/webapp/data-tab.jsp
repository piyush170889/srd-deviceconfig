<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<head>
<title>DT Content</title>
<link rel="stylesheet" type="text/css" href="css/second.css" />

<script src="js/jquery_3_4_1.min.js"></script>
<%-- <script src="js/basejs.js" type="text/javascript"></script> --%>

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
						<div class="col-50">
							<label>Wet</label>
						</div>
						<div class="col-50">
							<label>Dry</label>
						</div>

						<div class="col-50 margin-top-4">
							<label class="mp_div_3_label" id="mp_moist_perc_wet">0.0</label>
						</div>
						<div class="col-50 margin-top-4">
							<label class="mp_div_3_label" id="mp_moist_perc_dry">0.0</label>
						</div>

						<div class="col-50 margin-top-4">
							<label class="mp_div_3_label" id="mp_mat_Temp_wet">0.0</label>
						</div>
						<div class="col-50 margin-top-4">
							<label class="mp_div_3_label" id="mp_mat_Temp_dry">0.0</label>
						</div>

						<div class="col-50 margin-top-4">
							<label id="mp_mat_density_wet" class="mp_div_3_label">0.0</label>
						</div>
						<div class="col-50 margin-top-4">
							<label id="mp_mat_density_dry" class="mp_div_3_label">0.0</label>
						</div>


						<div class="col-50 margin-top-9">
							<input type="radio" value="modbus" class="margin-top-4">
							Modbus 1
						</div>
						<div class="col-50 margin-top-9">
							<input type="radio" value="modbus" class="margin-top-4">
							4-20 mA
						</div>


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
							<label id="itc_temp_PS" class="mp_div_3_label"></label>
						</div>
						<div class="col-25">
							<label>Duty Cycle :</label>
						</div>
						<div class="col-25">
							<label id="itc_h_Dutycycle" class="mp_div_3_label"></label>
						</div>
					</div>

					<div class="intr_temp_ctrl_divs">
						<div class="col-25">
							<label>CPU_Temp</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label" id="itc_temp_CPU"></label>
						</div>
						<div class="col-25">
							<label>Int Temp Set :</label>
						</div>
						<div class="col-25">
							<input type="text" value="" id="itc_int_temp_setpoint"
								onkeyup="updateCalibrationValue(event, 'itc_int_temp_setpoint');" />
						</div>
					</div>

					<div class="intr_temp_ctrl_divs">
						<div class="col-25">
							<label>RF_Temp</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label" id="itc_temp_RF"></label>
						</div>

						<div class="col-50">
							<div class="col-50">
								<label>P :</label>
							</div>
							<div class="col-50">
								<input type="text" value="" id="itc_p"
									onkeyup="updateCalibrationValue(event, 'itc_p');" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>I :</label>
							</div>
							<div class="col-50">
								<input type="text" value="" id="itc_i"
									onkeyup="updateCalibrationValue(event, 'itc_i');" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>D :</label>
							</div>
							<div class="col-50">
								<input type="text" value="" id="itc_d"
									onkeyup="updateCalibrationValue(event, 'itc_d');" />
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
							<input type="text" id="ds_average_time_zero"
								onkeyup="updateCalibrationValue(event, 'ds_average_time_zero');" /><br />
						</div>
						<!-- 	</div> -->
						<div class="col-25">
							<label>Normal Avg. Time :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ds_normal_Avg_time"
								onkeyup="updateCalibrationValue(event, 'ds_normal_Avg_time');" /><br />
						</div>
					</div>

					<div class="ds_components">
						<div class="col-25">
							<label>Detector Avg. Time :</label><br />
						</div>
						<div class="col-25">
							<input type="text" id="ds_det_Avg_time"
								onkeyup="updateCalibrationValue(event, 'ds_det_Avg_time');" /><br />
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
						<input type="number" id="itc_freq"
							onkeyup="updateCalibrationValue(event, 'itc_freq');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain"
							onkeyup="updateCalibrationValue(event, 'itc_rf_gain');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain"
							onkeyup="updateCalibrationValue(event, 'itc_analog_gain');" />
					</div>

					<div class="center-div-val">
						<label id="itc_i0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_q0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_d0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_r0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phi"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_a0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_dphi"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calR0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calphi0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_rz0"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phiz"></label>
					</div>

				</div>

				<div class="frequency-border"></div>

				<div class="frequency">
					<!-- <h5>Frequency</h5> -->

					<div class="center-div-val">
						<input type="number" id="itc_freq1"
							onkeyup="updateCalibrationValue(event, 'itc_freq1');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain1"
							onkeyup="updateCalibrationValue(event, 'itc_rf_gain1');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain1"
							onkeyup="updateCalibrationValue(event, 'itc_analog_gain1');" />
					</div>

					<div class="center-div-val">
						<label id="itc_i1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_q1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_d1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_r1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phi1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_a1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_dphi1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calR01"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calphi01"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_rz1"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phiz1"></label>
					</div>

				</div>

				<div class="frequency-border"></div>

				<div class="frequency">
					<!-- <h5>Frequency</h5> -->

					<div class="center-div-val">
						<input onkeyup="updateCalibrationValue(event, 'itc_freq2');" type="number"
							id="itc_freq2" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain2"
							onkeyup="updateCalibrationValue(event, 'itc_rf_gain2');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain2"
							onkeyup="updateCalibrationValue(event, 'itc_analog_gain2');" />
					</div>

					<div class="center-div-val">
						<label id="itc_i2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_q2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_d2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_r2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phi2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_a2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_dphi2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calR02"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_calphi02"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_rz2"></label>
					</div>
					<div class="center-div-val">
						<label id="itc_phiz2"></label>
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
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>d :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_coeffD"
									onkeyup="updateCalibrationValue(event, 'ce_coeffD');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>Rho :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_rho"
									onkeyup="updateCalibrationValue(event, 'ce_rho');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>Ch1Alpha0 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_ch1Alpha0"
									onkeyup="updateCalibrationValue(event, 'ce_ch1Alpha0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a1 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a1"
									onkeyup="updateCalibrationValue(event, 'ce_a1');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a2 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a2"
									onkeyup="updateCalibrationValue(event, 'ce_a2');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>Ch1Beta0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_ch1_Beta0"
									onkeyup="updateCalibrationValue(event, 'ce_ch1_Beta0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a3 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a3"
									onkeyup="updateCalibrationValue(event, 'ce_a3');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a8 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a8"
									onkeyup="updateCalibrationValue(event, 'ce_a8');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>Ch2Alpha0 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_ch2Alpha0"
									onkeyup="updateCalibrationValue(event, 'ce_ch2Alpha0');" /><br />
							</div>
						</div>
					</div>


					<div class="r_components">
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a0 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a0"
									onkeyup="updateCalibrationValue(event, 'ce_a0');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a5 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a5"
									onkeyup="updateCalibrationValue(event, 'ce_a5');" /><br />
							</div>
						</div>
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>Ch2Beta0 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_ch2Beta0"
									onkeyup="updateCalibrationValue(event, 'ce_ch2Beta0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_childsec">
							<div class="r_components_childsec_subdiv">
								<label>a6 :</label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="ce_a6"
									onkeyup="updateCalibrationValue(event, 'ce_a6');" /><br />
							</div>
						</div>
					</div>


					<div class="r_components" style="margin-top: 2%;">
						<div class="r_components_one_by_four_div">
							<label>Ch1s :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<input type="text" id="ce_s1"
								onkeyup="updateCalibrationValue(event, 'ce_s1');" /><br />
						</div>
						<div class="r_components_one_by_four_div">
							<label>Ch2s :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<input type="text" id="ce_s2"
								onkeyup="updateCalibrationValue(event, 'ce_s2');" /><br />
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_one_by_four_div">
							<label>Ch1n :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<input type="text" id="ce_n1"
								onkeyup="updateCalibrationValue(event, 'ce_n1');" /><br />
						</div>
						<div class="r_components_one_by_four_div">
							<label>Ch2n :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<input type="text" id="ce_n2"
								onkeyup="updateCalibrationValue(event, 'ce_n2');" /><br />
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
						<div class="r_components_one_by_four_div">
							<label>ADC_I :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<label class="mp_div_3_label" id="dp_ADC_Counts_I"></label>
						</div>
						<div class="r_components_one_by_four_div">
							<label>ADC_Q :</label>
						</div>
						<div class="r_components_one_by_four_div">
							<label class="mp_div_3_label" id="dp_ADC_Counts_Q"></label>
						</div>
					</div>

					<h5 style="margin: 4% 0;">
						4-20 mA Limits<span></span>
					</h5>

					<div class="r_components">
						<div class="r_components_one_by_four_div" style="margin-left: 25%">
							<label>Max</label>
						</div>
						<div class="r_components_childsec_subdiv">
							<label>Min</label>
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_childsec_subdiv"
							style="border-right: 1px solid #cecece">
							<div class="col-50">
								<label>Blink : </label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="dp_blink_Range_max"
									onkeyup="updateCalibrationValue(event, 'dp_blink_Range_max');" /><br />
							</div>
							<div class="r_components_childsec_subdiv">
								<label>Ext. Temp : </label>
							</div>
							<div class="r_components_childsec_subdiv">
								<input type="text" id="dp_mat_temp_Max"
									onkeyup="updateCalibrationValue(event, 'dp_mat_temp_Max');" /><br />
							</div>
						</div>

						<!-- <div class="right-border"></div> -->

						<div class="r_components_childsec_subdiv">
							<div style="width: 100%">
								<input type="text" id="dp_blink_range_min"
									onkeyup="updateCalibrationValue(event, 'dp_blink_range_min');" /><br />
							</div>
							<div style="width: 100%">
								<input type="text" id="dp_mat_temp_min"
									onkeyup="updateCalibrationValue(event, 'dp_mat_temp_min');" /><br />
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
						<div class="r_components_childsec_subdiv">
							<label>Remaining Time: </label>
						</div>
						<div class="r_components_childsec_subdiv">
							<div class="progress-bar">
								<span id="progress-bar-span" style="width: 0%"></span>
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="r_components_childsec_subdiv">
							<input type="button" value="Start Calibration 0"
								onclick="startCalibration(0)" class="btn_submit" />
						</div>
						<div class="r_components_childsec_subdiv">
							<input type="button" value="Start Calibration 1"
								onclick="startCalibration(1)" class="btn_submit" /> <input
								type="hidden" id="progress-bar-activity" value="0" />
						</div>
					</div>
				</div>
			</div>
		</div>

		<div>
			<img class="linetop" src="images/line.png" alt="linetop" />
		</div>
	</div>

	<script src="js/datatab.js"></script>

	<script>
		$(document).ready(function() {
			window.setInterval(function() {
				getDataTabDetailsJson();
			}, 1000);
		});
	</script>

</body>
</html>