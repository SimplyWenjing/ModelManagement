package com.homework.Student.entity;

/**
 * 学生类
 * 
 * @author DELL
 * 
 */
public class Student {
	// 成员变量
	private int stuId;
	private String stuName;
	private String sex;
	private String marriage;
	private String jiguan;
	private String birthday;
	private String ruxueTime;
	private String teacherName;
	private String peiyangStyle;
	private String department;
	private String majoy;
	private String identifyNumber;
	private String zhengzhi;

	/**
	 * 有参构造函数
	 * 
	 * @param stuId
	 * @param stuName
	 * @param sex
	 * @param marriage
	 * @param jiguan
	 * @param birthday
	 * @param ruxueTime
	 * @param teacherName
	 * @param peiyangStyle
	 * @param department
	 * @param majoy
	 * @param identifyNumber
	 * @param zhengzhi
	 */
	public Student(int stuId, String stuName, String sex, String marriage,
			String jiguan, String birthday, String ruxueTime,
			String teacherName, String peiyangStyle, String department,
			String majoy, String identifyNumber, String zhengzhi) {
		super();
		this.stuId = stuId;
		this.stuName = stuName;
		this.sex = sex;
		this.marriage = marriage;
		this.jiguan = jiguan;
		this.birthday = birthday;
		this.ruxueTime = ruxueTime;
		this.teacherName = teacherName;
		this.peiyangStyle = peiyangStyle;
		this.department = department;
		this.majoy = majoy;
		this.identifyNumber = identifyNumber;
		this.zhengzhi = zhengzhi;
	}

	/**
	 * 无参构造函数
	 */
	public Student() {
		super();
	}

	public Student(String stuName, String sex, String marriage, String jiguan,
			String birthday, String ruxueTime, String teacherName,
			String peiyangStyle, String department, String majoy,
			String identifyNumber, String zhengzhi) {
		super();
		this.stuName = stuName;
		this.sex = sex;
		this.marriage = marriage;
		this.jiguan = jiguan;
		this.birthday = birthday;
		this.ruxueTime = ruxueTime;
		this.teacherName = teacherName;
		this.peiyangStyle = peiyangStyle;
		this.department = department;
		this.majoy = majoy;
		this.identifyNumber = identifyNumber;
		this.zhengzhi = zhengzhi;
	}

	// get set 函数
	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getJiguan() {
		return jiguan;
	}

	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getRuxueTime() {
		return ruxueTime;
	}

	public void setRuxueTime(String ruxueTime) {
		this.ruxueTime = ruxueTime;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getPeiyangStyle() {
		return peiyangStyle;
	}

	public void setPeiyangStyle(String peiyangStyle) {
		this.peiyangStyle = peiyangStyle;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getMajoy() {
		return majoy;
	}

	public void setMajoy(String majoy) {
		this.majoy = majoy;
	}

	public String getIdentifyNumber() {
		return identifyNumber;
	}

	public void setIdentifyNumber(String identifyNumber) {
		this.identifyNumber = identifyNumber;
	}

	public String getZhengzhi() {
		return zhengzhi;
	}

	public void setZhengzhi(String zhengzhi) {
		this.zhengzhi = zhengzhi;
	}

}
