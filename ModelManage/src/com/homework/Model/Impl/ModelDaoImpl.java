package com.homework.Model.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.homework.Model.DB.ConnectionManager_Model;
import com.homework.Model.Dao.ModelDao;
import com.homework.Model.entity.Model;

/*
 * ģ�ͽӿڵ�ʵ����
 */
public class ModelDaoImpl implements ModelDao {
	/**
	 * ���ģ��
	 */
	public void addModel(Model model) {
		Connection con = ConnectionManager_Model.getConnection();
		String addSql = "insert into model_table(modelName,modelType,modelAdr,createTime,modifyTime,describe)"
				+ "values(?,?,?,?,?,?)";
		PreparedStatement pstmt = null; // ����Ԥ�������
		try {
			pstmt = con.prepareStatement(addSql);// ���Ԥ������󲢸�ֵ
			// pstmt.setInt(1, model.getModelId());//���õ�һ������
			pstmt.setString(1, model.getModelName());
			pstmt.setString(2, model.getModelType());
			pstmt.setString(3, model.getModelAdr());
			pstmt.setString(4, model.getCreateTime());
			pstmt.setString(5, model.getModifyTime());
			pstmt.setString(6, model.getDescribe());
			int num = pstmt.executeUpdate();// ִ�в���
			if (num == 1) {
				System.out.println("����ɹ���");

			} else {
				System.out.println("����ʧ�ܣ�");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}

	}

	/**
	 * ɾ��ģ��
	 */
	public void deleteModel(int modelId, String modelName) {
		Connection con = ConnectionManager_Model.getConnection();
		String deleteModel = "delete from model_table where modelId=? and modelName=?";
		PreparedStatement pstmt = null;// ����Ԥ�������
		try {
			pstmt = con.prepareStatement(deleteModel);// ���Ԥ������󲢸�ֵ
			pstmt.setInt(1, modelId);
			pstmt.setString(2, modelName);
			int num = pstmt.executeUpdate();
			System.out.println("ɾ�����ݵ�����Ϊ��" + num + "�С�");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}
	}

	/**
	 * ����ģ��
	 */
	public void updateModel(Model model) {
		Connection con = ConnectionManager_Model.getConnection();
		PreparedStatement pstmt = null;// ����Ԥ�������
		String updateSQL = "update model_table set modelName=?,modelType=?,[createTime]=?,[modifyTime]=?,[describe]=? where modelId=?";
		try {
			pstmt = con.prepareStatement(updateSQL);
			pstmt.setString(1, model.getModelName());
			pstmt.setString(2, model.getModelType());
			//pstmt.setString(3, model.getModelAdr());
			pstmt.setString(3, model.getCreateTime());
			pstmt.setString(4, model.getModifyTime());
			pstmt.setString(5, model.getDescribe());
			pstmt.setInt(6, model.getModelId());
			pstmt.execute();
			// System.out.println("11111111111111111111111111111");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}

	}

	/*
	 * ��ѯģ��
	 */
	public Model queryModelByModelName(String modelName) {

		Connection con = ConnectionManager_Model.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Model model = null;
		try {
			pstmt = con
					.prepareStatement("select * from model_table where modelName =?");
			pstmt.setString(1, modelName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				model = new Model();
				model.setModelId(rs.getInt(1));
				model.setModelName(rs.getString(2));
				model.setModelType(rs.getString(3));
				model.setModelAdr(rs.getString(4));
				model.setCreateTime(rs.getString(5));
				model.setModifyTime(rs.getString(6));
				model.setDescribe(rs.getString(7));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closeResultSet(rs);
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}
		return model;
	}

	/**
	 * ��������ģ��
	 */
	public List<Model> getAllModels() {
		Connection con = ConnectionManager_Model.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Model> models = new ArrayList<Model>();
		try {
			pstmt = con
					.prepareStatement("select * from model_table order by modelId");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Model model = new Model();
				model.setModelId(rs.getInt(1));
				model.setModelName(rs.getString(2));
				model.setModelType(rs.getString(3));
				model.setModelAdr(rs.getString(4));
				model.setCreateTime(rs.getString(5));
				model.setModifyTime(rs.getString(6));
				model.setDescribe(rs.getString(7));
				models.add(model);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closeResultSet(rs);
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}
		return models;
	}

	/**
	 * ����ģ�ͱ�Ų�ѯģ��
	 */
	public Model queryModelByModelId(int modelId) {

		Connection con = ConnectionManager_Model.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Model model = null;
		try {
			pstmt = con
					.prepareStatement("select * from model_table where modelId =?");
			pstmt.setInt(1, modelId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				model = new Model();
				model.setModelId(rs.getInt(1));
				model.setModelName(rs.getString(2));
				model.setModelType(rs.getString(3));
				model.setModelAdr(rs.getString(4));
				model.setCreateTime(rs.getString(5));
				model.setModifyTime(rs.getString(6));
				model.setDescribe(rs.getString(7));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closeResultSet(rs);
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}
		return model;
	}

	/**
	 * ����ģ�ͱ��ɾ��ģ��
	 */
	public void deleteModel(int modelId) {
		Connection con = ConnectionManager_Model.getConnection();
		String deleteModel = "delete from model_table where modelId=? ";
		PreparedStatement pstmt = null;// ����Ԥ�������
		try {
			pstmt = con.prepareStatement(deleteModel);// ���Ԥ������󲢸�ֵ
			pstmt.setInt(1, modelId);
			// pstmt.setString(2, modelName);
			int num = pstmt.executeUpdate();
			System.out.println("ɾ�����ݵ�����Ϊ��" + num + "�С�");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}

	}

	public void addModel(String modelName, String modelType, String modelAdr,
			String createTime, String modifyTime, String describe) {
		Connection con = ConnectionManager_Model.getConnection();
		String addSql = "insert into table_model(modelName,modelType,modelAdr,createTime,modifyTime,describe)"
				+ "values(?,?,?,?,?,?)";
		PreparedStatement pstmt = null; // ����Ԥ�������
		try {
			pstmt = con.prepareStatement(addSql);// ���Ԥ������󲢸�ֵ
			// pstmt.setInt(1, model.getModelId());//���õ�һ������
			pstmt.setString(1, modelName);
			pstmt.setString(2, modelType);
			pstmt.setString(3, modelAdr);
			pstmt.setString(4, createTime);
			pstmt.setString(5, modifyTime);
			pstmt.setString(6, describe);
			int num = pstmt.executeUpdate();// ִ�в���
			if (num == 1) {
				System.out.println("����ɹ���");

			} else {
				System.out.println("����ʧ�ܣ�");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(con);
		}

	}

}
