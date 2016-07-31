package com.homework.Model.Dao;

import java.util.List;

import com.homework.Model.entity.Model;

/*
 * 模型接口
 */
public interface ModelDao {
	public void addModel(Model model);

	public void addModel(String modelName, String modelType, String modelAdr,
			String createTime, String modifyTime, String describe);

	public void deleteModel(int modelId, String modelName);

	public void deleteModel(int modelId);

	public void updateModel(Model model);

	public Model queryModelByModelName(String modelName);

	public Model queryModelByModelId(int modelId);

	public List<Model> getAllModels();

}
