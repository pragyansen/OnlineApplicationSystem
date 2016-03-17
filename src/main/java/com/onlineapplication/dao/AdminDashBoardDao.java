package com.onlineapplication.dao;

import java.util.ArrayList;
import java.util.List;

import com.onlineapplication.mvc.bean.AdminDasboarddataBean;

public class AdminDashBoardDao {

	public List<List <AdminDasboarddataBean>> getAdminDashBoardData(){
		List<List <AdminDasboarddataBean>> adminDashboardList = new ArrayList<>();
		List <AdminDasboarddataBean> adminStatusReport = new ArrayList<>();
		List <AdminDasboarddataBean> adminSubjectReport = new ArrayList<>();
		for (int i = 0; i < 5; i++) {
			AdminDasboarddataBean adminDasboarData = new AdminDasboarddataBean();
			adminDasboarData.setLabel("Lable"+i);
			adminDasboarData.setValue(i*10+10);
			adminStatusReport.add(adminDasboarData);
		}
		adminDashboardList.add(adminStatusReport);
		for (int i = 0; i < 5; i++) {
			AdminDasboarddataBean adminDasboarData = new AdminDasboarddataBean();
			adminDasboarData.setLabel("Lable"+i);
			adminDasboarData.setValue(i*10+10);
			adminSubjectReport.add(adminDasboarData);
		}
		adminDashboardList.add(adminSubjectReport);
		return adminDashboardList;
	}
}
