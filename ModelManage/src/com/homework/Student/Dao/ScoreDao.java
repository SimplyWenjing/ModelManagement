package com.homework.Student.Dao;

import com.homework.Student.entity.Score;

//
public interface ScoreDao {
	public void addScoreInfo(Score score);

	public void deleteScoreInfo(int stuId, int courseId);

	public void updateScoreInfo(Score score);

	public Score queryScoreInfo(int stuId);

}
