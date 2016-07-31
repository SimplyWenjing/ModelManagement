package com.homework.Student.entity;

/**
 * 论文类
 * 
 * @author DELL
 * 
 */
public class Artical {
	private int stuId;
	private String articalName;
	private String qikan;
	private String qikanId;
	private String note;

	/**
	 * 有参构造函数
	 * 
	 * @param articalName
	 * @param qikan
	 * @param qikanId
	 * @param note
	 */

	public Artical(String articalName, String qikan, String qikanId, String note) {
		super();
		this.articalName = articalName;
		this.qikan = qikan;
		this.qikanId = qikanId;
		this.note = note;
	}

	public Artical(int stuId, String articalName, String qikan, String qikanId,
			String note) {
		super();
		this.stuId = stuId;
		this.articalName = articalName;
		this.qikan = qikan;
		this.qikanId = qikanId;
		this.note = note;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	/**
	 * 无参构造函数
	 */
	public Artical() {
		super();
	}

	/**
	 * get set方法
	 */
	public String getArticalName() {
		return articalName;
	}

	public void setArticalName(String articalName) {
		this.articalName = articalName;
	}

	public String getQikan() {
		return qikan;
	}

	public void setQikan(String qikan) {
		this.qikan = qikan;
	}

	public String getQikanId() {
		return qikanId;
	}

	public void setQikanId(String qikanId) {
		this.qikanId = qikanId;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
