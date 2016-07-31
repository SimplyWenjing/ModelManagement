package com.homework.Student.entity;

/**
 * 成绩类
 * 
 * @author DELL
 * 
 */
public class Score {
	private int stuId;
	private int courseId;
	private String courseName;
	private int xuefen;
	private int score;
	private String level;

	/**
	 * 有参构造函数
	 * 
	 * @param stuId
	 * @param courseId
	 * @param courseName
	 * @param xuefen
	 * @param score
	 * @param level
	 */
	public Score(int stuId, int courseId, String courseName, int xuefen,
			int score, String level) {
		super();
		this.stuId = stuId;
		this.courseId = courseId;
		this.courseName = courseName;
		this.xuefen = xuefen;
		this.score = score;
		this.level = level;
	}

	/**
	 * 无参构造函数
	 */
	public Score() {
		super();
	}

	/**
	 * get set 方法
	 */
	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getXuefen() {
		return xuefen;
	}

	public void setXuefen(int xuefen) {
		this.xuefen = xuefen;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

}
