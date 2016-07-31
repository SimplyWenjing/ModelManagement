package com.homework.Student.Dao;

import com.homework.Student.entity.Artical;

public interface ArticalDao {
	public void addArticleInfo(Artical artical);

	public void deleteArticleInfo(int stuId, String articalName);

	public void updateArticleInfo(Artical artical);

	public Artical queryArticleInfo(String articalName);

}
