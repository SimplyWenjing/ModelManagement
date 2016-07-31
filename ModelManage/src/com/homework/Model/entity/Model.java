package com.homework.Model.entity;

//模型类
public class Model {
	private int modelId;
	private String modelName;
	private String modelType;
	private String modelAdr;
	private String createTime;
	private String modifyTime;
	private String describe;

	// 构造函数
	
	

	public Model(int modelId, String modelName, String modelType,
			String modelAdr, String createTime, String modifyTime,
			String describe) {
		super();
		this.modelId = modelId;
		this.modelName = modelName;
		this.modelType = modelType;
		this.modelAdr = modelAdr;
		this.createTime = createTime;
		this.modifyTime = modifyTime;
		this.describe = describe;
	}

	public Model(int modelId, String modelName, String modelType,
			String createTime, String modifyTime, String describe) {
		super();
		this.modelId = modelId;
		this.modelName = modelName;
		this.modelType = modelType;
		this.createTime = createTime;
		this.modifyTime = modifyTime;
		this.describe = describe;
	}

	public Model(String modelName, String modelType, String modelAdr,
			String createTime, String modifyTime, String describe) {
		super();
		this.modelName = modelName;
		this.modelType = modelType;
		this.modelAdr = modelAdr;
		this.createTime = createTime;
		this.modifyTime = modifyTime;
		this.describe = describe;
	}

	public Model() {
		super();
	}

	// get/set函数
	public int getModelId() {
		return modelId;
	}

	public void setModelId(int modelId) {
		this.modelId = modelId;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getModelType() {
		return modelType;
	}

	public void setModelType(String modelType) {
		this.modelType = modelType;
	}

	public String getModelAdr() {
		return modelAdr;
	}

	public void setModelAdr(String modelAdr) {
		this.modelAdr = modelAdr;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(String modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

}
