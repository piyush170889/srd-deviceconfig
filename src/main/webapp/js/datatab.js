function getDataTabDetailsJson() {

	$.ajax({
		type : 'GET',
		url : "getDataTabDetailsJson",
		success : function(data) {
			console.log(data);

			// Set Material Parameters
			// $('#mp_moist_perc').val(data.);
			$('#mp_mat_Temp').html(data.slnoIrR.mat_Temp);
			// $('#mp_mat_density').val(data.);
			// $('#mp_mat_temp_source').val(data.);

			// Set Internal Temp Control Parameters
			$('#itc_temp_PS').html(data.slnoIrR.temp_PS);
			$('#itc_temp_CPU').html(data.slnoIrR.temp_CPU);
			$('#itc_temp_RF').html(data.slnoIrR.temp_RF);
			$('#itc_h_Dutycycle').html(data.slnoIrR.h_Dutycycle);
			$('#itc_int_temp_setpoint').val(data.slnoHrR.int_temp_setpoint);
			$('#itc_p').val(data.slnoHrR.p);
			$('#itc_i').val(data.slnoIrR.i);
			$('#itc_d').val(data.slnoIrR.d);

			// Device Settings Parameters
			$('#ds_average_time_zero').val(data.slnoHrR.average_time_zero);
			$('#ds_det_Avg_time').val(data.slnoHrR.det_Avg_time);
			$('#ds_normal_Avg_time').val(data.slnoHrR.normal_Avg_time);

			// Internal Calculations Parameters
			// $('#itc_freq').val(data.);
			$('#itc_freq1').val(data.slnoHrR.PLL_Freq1);
			$('#itc_freq2').val(data.slnoHrR.PLL_Freq2);
			// $('#itc_rf_gain').val(data.);
			$('#itc_rf_gain1').val(data.slnoHrR.ch1_RF_Gain);
			$('#itc_rf_gain2').val(data.slnoHrR.CH2_RF_Gain);
			// $('#itc_analog_gain').val(data.slnoHrR.);
			$('#itc_analog_gain1').val(data.slnoHrR.ch1_A_Gain);
			$('#itc_analog_gain2').val(data.slnoHrR.ch2_A_Gain);
			// $('#itc_i0').html(data.);
			// $('#itc_i1').html(data.);
			// $('#itc_i2').html(data.);
			// $('#itc_q0').html(data.);
			// $('#itc_q1').html(data.);
			// $('#itc_q2').html(data.);
			// $('#itc_d0').html(data.);
			// $('#itc_d1').html(data.);
			// $('#itc_d2').html(data.);
			// $('#itc_r0').html(data.);
			// $('#itc_r1').html(data.);
			// $('#itc_r2').html(data.);
			$('#itc_phi').html(data.slnoIrR.phi);
			$('#itc_phi1').html(data.slnoIrR.phi1);
			$('#itc_phi2').html(data.slnoIrR.phi2);
			// $('#itc_a0').html(data.);
			// $('#itc_a1').html(data.);
			// $('#itc_a2').html(data.);
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
			$('#dp_ADC_Counts_I').html(data.slnoIrR.ADC_Counts_I);
			$('#dp_ADC_Counts_Q').html(data.slnoIrR.ADC_Counts_Q);
			console.log('data.slnoIrR.ADC_Counts_Q = '
					+ data.slnoIrR.ADC_Counts_Q);

			// 4-20 mA Limits Parameter
			$('#dp_blink_Range_max').val(data.slnoHrR.blink_Range_max);
			$('#dp_blink_range_min').val(data.slnoHrR.blink_range_min);
			$('#dp_mat_temp_Max').val(data.slnoHrR.mat_temp_Max);
			$('#dp_mat_temp_min').val(data.slnoHrR.mat_temp_min);

			var progressbaractivity = $('#progress-bar-activity').val();

			if (progressbaractivity == '1') {
				var remainingTime = data.slnoIrR.remaining_time;

				if (remainingTime > 0) {
					$('#progress-bar-span').css('width', (remainingTime + '%'));
				} else {
					$('#progress-bar-activity').val('0');
					$('#progress-bar-span').css('width', 0);
				}
			}
		}
	});
}

function updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0, a0, a1,
		a2, a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1, pll_freq2,
		average_time_zero, normal_avg_time, det_avg_time, temp_sel, mval_sel,
		ch1_a_gain, ch1_rf_gain, mode, p, i, d, int_temp_setpoint,
		blink_range_max, blink_range_min, mat_temp_min, mat_temp_max,
		ch2_a_gain, ch2_rf_gain, proxi_enable, tempcont_enable,
		iout_calib_5_ma, iout_calib_19_ma, s1, s2, n1, n2, spare, rho, a8,
		iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2, calibValue) {

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

	updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0, a0, a1, a2,
			a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1, pll_freq2,
			average_time_zero, normal_avg_time, det_avg_time, temp_sel,
			mval_sel, ch1_a_gain, ch1_rf_gain, mode, p, i, d,
			int_temp_setpoint, blink_range_max, blink_range_min, mat_temp_min,
			mat_temp_max, ch2_a_gain, ch2_rf_gain, proxi_enable,
			tempcont_enable, iout_calib_5_ma, iout_calib_19_ma, s1, s2, n1, n2,
			spare, rho, a8, iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2, calibValue)
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