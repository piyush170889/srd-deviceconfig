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
					<div class="col-50">
						<label class="mp_div_3_label" id="mp_moist_perc_wet">0.0</label>
					</div>
					<div class="col-50">
						<label class="mp_div_3_label" id="mp_moist_perc_dry">0.0</label>
					</div>
						 <label
							class="mp_div_3_label" id="mp_mat_Temp">0.0</label> <label
							id="mp_mat_density" class="mp_div_3_label">0.0</label> <input
							type="radio" value="modbus"> Modbus <input type="radio"
							value="modbus"> 4-20 mA
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
								onblur="updateCalibrationValue('itc_int_temp_setpoint');" />
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
									onblur="updateCalibrationValue('itc_p');" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>I :</label>
							</div>
							<div class="col-50">
								<input type="text" value="" id="itc_i"
									onblur="updateCalibrationValue('itc_i');" />
							</div>

							<!-- <div class="col-50"></div> -->
							<div class="col-50">
								<label>D :</label>
							</div>
							<div class="col-50">
								<input type="text" value="" id="itc_d"
									onblur="updateCalibrationValue('itc_d');" />
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
								onblur="updateCalibrationValue('ds_average_time_zero');" /><br />
						</div>
						<!-- 	</div> -->
						<div class="col-25">
							<label>Normal Avg. Time :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ds_normal_Avg_time"
								onblur="updateCalibrationValue('ds_normal_Avg_time');" /><br />
						</div>
					</div>

					<div class="ds_components">
						<div class="col-25">
							<label>Detector Avg. Time :</label><br />
						</div>
						<div class="col-25">
							<input type="text" id="ds_det_Avg_time"
								onblur="updateCalibrationValue('ds_det_Avg_time');" /><br />
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
							onblur="updateCalibrationValue('itc_freq');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain"
							onblur="updateCalibrationValue('itc_rf_gain');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain"
							onblur="updateCalibrationValue('itc_analog_gain');" />
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
							onblur="updateCalibrationValue('itc_freq1');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain1"
							onblur="updateCalibrationValue('itc_rf_gain1');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain1"
							onblur="updateCalibrationValue('itc_analog_gain1');" />
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
						<input onblur="updateCalibrationValue('itc_freq2');" type="number"
							id="itc_freq2" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_rf_gain2"
							onblur="updateCalibrationValue('itc_rf_gain2');" />
					</div>

					<div class="center-div-val">
						<input type="number" id="itc_analog_gain2"
							onblur="updateCalibrationValue('itc_analog_gain2');" />
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
						<div class="col-33">
							<div class="col-50">
								<label>d :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_coeffD"
									onblur="updateCalibrationValue('ce_coeffD');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Rho :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_rho"
									onblur="updateCalibrationValue('ce_rho');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch1Alpha0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_ch1Alpha0"
									onblur="updateCalibrationValue('ce_ch1Alpha0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a1 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a1"
									onblur="updateCalibrationValue('ce_a1');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a2 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a2"
									onblur="updateCalibrationValue('ce_a2');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch1Beta0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_ch1_Beta0"
									onblur="updateCalibrationValue('ce_ch1_Beta0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a3 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a3"
									onblur="updateCalibrationValue('ce_a3');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a8 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a8"
									onblur="updateCalibrationValue('ce_a8');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch2Alpha0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_ch2Alpha0"
									onblur="updateCalibrationValue('ce_ch2Alpha0');" /><br />
							</div>
						</div>
					</div>


					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a0"
									onblur="updateCalibrationValue('ce_a0');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>a5 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a5"
									onblur="updateCalibrationValue('ce_a5');" /><br />
							</div>
						</div>
						<div class="col-33">
							<div class="col-50">
								<label>Ch2Beta0 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_ch2Beta0"
									onblur="updateCalibrationValue('ce_ch2Beta0');" /><br />
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-33">
							<div class="col-50">
								<label>a6 :</label>
							</div>
							<div class="col-50">
								<input type="text" id="ce_a6"
									onblur="updateCalibrationValue('ce_a6');" /><br />
							</div>
						</div>
					</div>


					<div class="r_components" style="margin-top: 2%;">
						<div class="col-25">
							<label>Ch1s :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ce_s1"
								onblur="updateCalibrationValue('ce_s1');" /><br />
						</div>
						<div class="col-25">
							<label>Ch2s :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ce_s2"
								onblur="updateCalibrationValue('ce_s2');" /><br />
						</div>
					</div>

					<div class="r_components">
						<div class="col-25">
							<label>Ch1n :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ce_n1"
								onblur="updateCalibrationValue('ce_n1');" /><br />
						</div>
						<div class="col-25">
							<label>Ch2n :</label>
						</div>
						<div class="col-25">
							<input type="text" id="ce_n2"
								onblur="updateCalibrationValue('ce_n2');" /><br />
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
							<label class="mp_div_3_label" id="dp_ADC_Counts_I"></label>
						</div>
						<div class="col-25">
							<label>ADC_Q :</label>
						</div>
						<div class="col-25">
							<label class="mp_div_3_label" id="dp_ADC_Counts_Q"></label>
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
								<input type="text" id="dp_blink_Range_max"
									onblur="updateCalibrationValue('dp_blink_Range_max');" /><br />
							</div>
							<div class="col-50">
								<label>Ext. Temp : </label>
							</div>
							<div class="col-50">
								<input type="text" id="dp_mat_temp_Max"
									onblur="updateCalibrationValue('dp_mat_temp_Max');" /><br />
							</div>
						</div>

						<!-- <div class="right-border"></div> -->

						<div class="col-50">
							<div style="width: 100%">
								<input type="text" id="dp_blink_range_min"
									onblur="updateCalibrationValue('dp_blink_range_min');" /><br />
							</div>
							<div style="width: 100%">
								<input type="text" id="dp_mat_temp_min"
									onblur="updateCalibrationValue('dp_mat_temp_min');" /><br />
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
								<span id="progress-bar-span" style="width: 25%"></span>
							</div>
						</div>
					</div>

					<div class="r_components">
						<div class="col-50">
							<input type="button" value="Start Calibration 0"
								onclick="startCalibration(0)" class="btn_submit" />
						</div>
						<div class="col-50">
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


	<script>
		function getDataTabDetailsJson() {

			$
					.ajax({
						type : 'GET',
						url : "getDataTabDetailsJson",
						success : function(data) {
							console.log(data);

							// Set Material Parameters
							//$('#mp_moist_perc').val(data.);
							$('#mp_mat_Temp').html(data.slnoIrR.mat_Temp);
							//$('#mp_mat_density').val(data.);
							//$('#mp_mat_temp_source').val(data.);

							// Set Internal Temp Control Parameters
							$('#itc_temp_PS').html(data.slnoIrR.temp_PS);
							$('#itc_temp_CPU').html(data.slnoIrR.temp_CPU);
							$('#itc_temp_RF').html(data.slnoIrR.temp_RF);
							$('#itc_h_Dutycycle')
									.html(data.slnoIrR.h_Dutycycle);
							$('#itc_int_temp_setpoint').val(
									data.slnoHrR.int_temp_setpoint);
							$('#itc_p').val(data.slnoHrR.p);
							$('#itc_i').val(data.slnoIrR.i);
							$('#itc_d').val(data.slnoIrR.d);

							// Device Settings Parameters
							$('#ds_average_time_zero').val(
									data.slnoHrR.average_time_zero);
							$('#ds_det_Avg_time')
									.val(data.slnoHrR.det_Avg_time);
							$('#ds_normal_Avg_time').val(
									data.slnoHrR.normal_Avg_time);

							// Internal Calculations Parameters
							//$('#itc_freq').val(data.);
							$('#itc_freq1').val(data.slnoHrR.PLL_Freq1);
							$('#itc_freq2').val(data.slnoHrR.PLL_Freq2);
							//$('#itc_rf_gain').val(data.);
							$('#itc_rf_gain1').val(data.slnoHrR.ch1_RF_Gain);
							$('#itc_rf_gain2').val(data.slnoHrR.CH2_RF_Gain);
							//$('#itc_analog_gain').val(data.slnoHrR.);
							$('#itc_analog_gain1').val(data.slnoHrR.ch1_A_Gain);
							$('#itc_analog_gain2').val(data.slnoHrR.ch2_A_Gain);
							//$('#itc_i0').html(data.);
							//$('#itc_i1').html(data.);
							//$('#itc_i2').html(data.);
							//$('#itc_q0').html(data.);
							//$('#itc_q1').html(data.);
							//$('#itc_q2').html(data.);
							//$('#itc_d0').html(data.);
							//$('#itc_d1').html(data.);
							//$('#itc_d2').html(data.);
							//$('#itc_r0').html(data.);
							//$('#itc_r1').html(data.);
							//$('#itc_r2').html(data.);
							$('#itc_phi').html(data.slnoIrR.phi);
							$('#itc_phi1').html(data.slnoIrR.phi1);
							$('#itc_phi2').html(data.slnoIrR.phi2);
							//$('#itc_a0').html(data.);
							//$('#itc_a1').html(data.);
							//$('#itc_a2').html(data.);
							$('#itc_dphi').html(data.slnoIrR.dphi);
							$('#itc_dphi1').html(data.slnoIrR.dphi1);
							$('#itc_dphi2').html(data.slnoIrR.dphi2);
							$('#itc_calR0').html(data.slnoIrR.calR0);
							$('#itc_calR01').html(data.slnoIrR.calR01);
							$('#itc_calR02').html(data.slnoIrR.calR02);
							$('#itc_calphi0').html(data.slnoIrR.calphi0);
							$('#itc_calphi01').html(data.slnoIrR.calphi01);
							$('#itc_calphi02').html(data.slnoIrR.calphi02);
							$('#itc_rz0').html(data.slnoIrR.r_z);
							$('#itc_rz1').html(data.slnoIrR.r_z1);
							$('#itc_rz2').html(data.slnoIrR.r_z2);
							$('#itc_phiz').html(data.slnoIrR.phiz);
							$('#itc_phiz1').html(data.slnoIrR.phiz1);
							$('#itc_phiz2').html(data.slnoIrR.phiz2);

							// Co-efficient Parameters
							$('#ce_coeffD').val(data.slnoHrR.coeffD);
							$('#ce_rho').val(data.slnoHrR.rho);
							$('#ce_ch1Alpha0').val(data.slnoHrR.ch1Alpha0);
							$('#ce_ch1_Beta0').val(data.slnoHrR.ch1_Beta0);
							$('#ce_ch2Alpha0').val(data.slnoHrR.ch2Alpha0);
							$('#ce_ch2Beta0').val(data.slnoHrR.ch2Beta0);
							$('#ce_a0').val(data.slnoHrR.a0);
							$('#ce_a1').val(data.slnoHrR.a1);
							$('#ce_a2').val(data.slnoHrR.a2);
							$('#ce_a3').val(data.slnoHrR.a3);
							$('#ce_a5').val(data.slnoHrR.a5);
							$('#ce_a6').val(data.slnoHrR.a6);
							$('#ce_a8').val(data.slnoHrR.a8);
							$('#ce_s1').val(data.slnoHrR.s1);
							$('#ce_s2').val(data.slnoHrR.s2);
							$('#ce_n1').val(data.slnoHrR.n1);
							$('#ce_n2').val(data.slnoHrR.n2);

							// Diagnostics Parameter Parameters
							console.log('data.slnoIrR.ADC_Counts_I = '
									+ data.slnoIrR.ADC_Counts_I);
							$('#dp_ADC_Counts_I').html(
									data.slnoIrR.ADC_Counts_I);
							$('#dp_ADC_Counts_Q').html(
									data.slnoIrR.ADC_Counts_Q);
							console.log('data.slnoIrR.ADC_Counts_Q = '
									+ data.slnoIrR.ADC_Counts_Q);

							// 4-20 mA Limits Parameter
							$('#dp_blink_Range_max').val(
									data.slnoHrR.blink_Range_max);
							$('#dp_blink_range_min').val(
									data.slnoHrR.blink_range_min);
							$('#dp_mat_temp_Max')
									.val(data.slnoHrR.mat_temp_Max);
							$('#dp_mat_temp_min')
									.val(data.slnoHrR.mat_temp_min);

							var progressbaractivity = $(
									'#progress-bar-activity').val();

							if (progressbaractivity == '1') {
								var remainingTime = data.slnoIrR.remaining_time;

								if (remainingTime > 0) {
									$('#progress-bar-span').css('width',
											remainingTime);
								} else {
									$('#progress-bar-activity').val('0');
									$('#progress-bar-span').css('width', 0);
								}
							}
						}
					});
		}

		function updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0,
				a0, a1, a2, a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1,
				pll_freq2, average_time_zero, normal_avg_time, det_avg_time,
				temp_sel, mval_sel, ch1_a_gain, ch1_rf_gain, mode, p, i, d,
				int_temp_setpoint, blink_range_max, blink_range_min,
				mat_temp_min, mat_temp_max, ch2_a_gain, ch2_rf_gain,
				proxi_enable, tempcont_enable, iout_calib_5_ma,
				iout_calib_19_ma, s1, s2, n1, n2, spare, rho, a8, iz_2, iz1_2,
				iz2_2, qz_2, qz1_2, qz2_2, calibValue) {

			var data = {
				'calibValue' : parseInt(calibValue),
				'ch1alpha0' : parseFloat(ch1alpha0),
				'ch1beta0' : parseFloat(ch1beta0),
				'ch2alpha0' : parseFloat(ch2alpha0),
				'ch2beta0' : parseFloat(ch2beta0),
				'a0' : parseFloat(a0),
				'a1' : parseFloat(a1),
				'a2' : parseFloat(a2),
				'a3' : parseFloat(a3),
				'coeff_d' : parseFloat(coeff_d),
				'a5' : parseFloat(a5),
				'a6' : parseFloat(a6),
				'modbus_mattemp' : parseFloat(modbus_mattemp),
				'pll_freq1' : parseFloat(pll_freq1),
				'pll_freq2' : pll_freq2,
				'average_time_zero' : average_time_zero,
				'normal_avg_time' : normal_avg_time,
				'det_avg_time' : det_avg_time,
				'temp_sel' : temp_sel,
				'mval_sel' : mval_sel,
				'ch1_a_gain' : parseInt(ch1_a_gain),
				'ch1_rf_gain' : ch1_rf_gain,
				'mode' : mode,
				'p' : p,
				'i' : i,
				'd' : d,
				'int_temp_setpoint' : int_temp_setpoint,
				'blink_range_max' : blink_range_max,
				'blink_range_min' : blink_range_min,
				'mat_temp_min' : mat_temp_min,
				'mat_temp_max' : mat_temp_max,
				'ch2_a_gain' : ch2_a_gain,
				'ch2_rf_gain' : ch2_rf_gain,
				'proxi_enable' : proxi_enable,
				'tempcont_enable' : tempcont_enable,
				'iout_calib_5_ma' : iout_calib_5_ma,
				'iout_calib_19_ma' : iout_calib_19_ma,
				's1' : s1,
				's2' : s2,
				'n1' : n1,
				'n2' : n2,
				'spare' : spare,
				'rho' : rho,
				'a8' : a8,
				'iz_2' : iz_2,
				'iz1_2' : iz1_2,
				'iz2_2' : iz2_2,
				'qz_2' : qz_2,
				'qz1_2' : qz1_2,
				'qz2_2' : qz2_2
			};

			$.ajax({
				type : 'POST',
				url : "updateDataTabDetailsJson",
				data : data,
				success : function(data) {
					console.log(data);

					$('#progress-bar-activity').val('1');
				}
			});
		}

		function startCalibration(calibValue) {
			console.log('calibValue = ' + calibValue);

			var ch1alpha0 = $('#ce_ch1Alpha0').val();
			var ch1beta0 = $('#ce_ch1_Beta0').val();
			var ch2alpha0 = $('#ce_ch2Alpha0').val();
			var ch2beta0 = $('#ce_ch2Beta0').val();
			var a0 = $('#ce_a0').val();
			var a1 = $('#ce_a1').val();
			var a2 = $('#ce_a2').val();
			var a3 = $('#ce_a3').val();
			var coeff_d = $('#ce_coeffD').val();
			var a5 = $('#ce_a5').val();
			var a6 = $('#ce_a6').val();
			var modbus_mattemp = $('#mp_mat_Temp').val();
			var pll_freq1 = $('#itc_freq1').val();
			var pll_freq2 = $('#itc_freq2').val();
			var average_time_zero = $('#ds_average_time_zero').val();
			var normal_avg_time = $('#ds_normal_Avg_time').val();
			var det_avg_time = $('#ds_det_Avg_time').val();
			var temp_sel = 0;
			var mval_sel = 0;
			var ch1_a_gain = $('#itc_analog_gain').val();
			var ch1_rf_gain = $('#itc_rf_gain').val();
			var mode = 0;
			var p = $('#itc_p').val();
			var i = $('#itc_i').val();
			var d = $('#itc_d').val();
			var int_temp_setpoint = $('#itc_int_temp_setpoint').val();
			var blink_range_max = $('#dp_blink_Range_max').val();
			var blink_range_min = $('#dp_blink_range_min').val();
			var mat_temp_min = 0;
			var mat_temp_max = 0;
			var ch2_a_gain = $('#itc_analog_gain2').val();
			var ch2_rf_gain = $('#itc_rf_gain2').val();
			var proxi_enable = 0;
			var tempcont_enable = 0;
			var iout_calib_5_ma = 0;
			var iout_calib_19_ma = 0;
			var s1 = $('#ce_s1').val();
			var s2 = $('#ce_s2').val();
			var n1 = $('#ce_n1').val();
			var n2 = $('#ce_n2').val();
			var spare = 0;
			var rho = $('#ce_rho').val();
			var a8 = $('#ce_a8').val();
			var iz_2 = 0;
			var iz1_2 = 0;
			var iz2_2 = 0;
			var qz_2 = 0;
			var qz1_2 = 0;
			var qz2_2 = 0;

			updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0, a0,
					a1, a2, a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1,
					pll_freq2, average_time_zero, normal_avg_time,
					det_avg_time, temp_sel, mval_sel, ch1_a_gain, ch1_rf_gain,
					mode, p, i, d, int_temp_setpoint, blink_range_max,
					blink_range_min, mat_temp_min, mat_temp_max, ch2_a_gain,
					ch2_rf_gain, proxi_enable, tempcont_enable,
					iout_calib_5_ma, iout_calib_19_ma, s1, s2, n1, n2, spare,
					rho, a8, iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2, calibValue)
		}

		function updateCalibrationValue(fieldId) {
			console.log('fieldId = ' + fieldId);

			var id = '#' + fieldId;
			var fieldVal = $(id).val();
			var data = {
				'fieldId' : fieldId,
				'fieldValue' : fieldVal
			};

			$.ajax({
				type : 'POST',
				url : "insertFocusOutData",
				data : data,
				success : function(data) {
					console.log(data);
				}
			});
		}

		$(document).ready(function() {
			window.setInterval(function() {
				getDataTabDetailsJson();
			}, 1000);
		});
	</script>

</body>
</html>