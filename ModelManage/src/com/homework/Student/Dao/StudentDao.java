package com.homework.Student.Dao;

import java.util.List;

import com.homework.Student.entity.Student;

//ѧ����Ϣ�ӿ�
public interface StudentDao {
	public void addStuInfo(Student student);

	public void deleteStuInfo(int stuId);

	public void updateStuInfo(Student student);

	public Student queryStuInfo(int stuId);

	public List<Student> getAllStuInfo();

}
