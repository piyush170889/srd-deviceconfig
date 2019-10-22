package com.srd.deviceconfig.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.utils.DbUtil;

public class DeviceMasterAction extends ActionSupport {

	private String serialNo = "1";
	private int comPort;
	private int dataRate;
	private String comments;
	private List<DeviceMasterAction> deviceMasterList;

	public DeviceMasterAction() {
		super();
	}

	public DeviceMasterAction(String serialNo, int comPort, int dataRate, String comments) {
		this.serialNo = serialNo;
		this.comPort = comPort;
		this.dataRate = dataRate;
		this.comments = comments;
	}

	public String getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}

	public int getComPort() {
		return comPort;
	}

	public void setComPort(int comPort) {
		this.comPort = comPort;
	}

	public int getDataRate() {
		return dataRate;
	}

	public void setDataRate(int dataRate) {
		this.dataRate = dataRate;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("Execute Called");
		deviceMasterList = new ArrayList<DeviceMasterAction>();
		try {
			this.deviceMasterList.addAll(getDeviceMasterList());

		} catch (Exception e) {
			e.printStackTrace();
		}

		return Constants.SUCCESS_MSG;
	}

	// DAO Methods
	private List<DeviceMasterAction> getDeviceMasterList() throws SQLException {

		Connection con = DbUtil.getConnection();
		String deviceMasterSql = "SELECT * FROM device_master";

		PreparedStatement ps = con.prepareStatement(deviceMasterSql);
		ResultSet rs = ps.executeQuery();

		List<DeviceMasterAction> deviceMasterActionList = new ArrayList<DeviceMasterAction>();
		while (rs.next()) {
			DeviceMasterAction deviceMasterAction = new DeviceMasterAction(rs.getString("SERIAL_NO"),
					rs.getInt("COM_PORT"), rs.getInt("DATA_RATE"), rs.getString("COMMENTS"));
			System.out.println("OUTPUT::::::::::::::::::::\n" + deviceMasterAction.toString());
			deviceMasterActionList.add(deviceMasterAction);
		}

		return deviceMasterActionList;
	}

}
