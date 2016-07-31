package cpm.homework.test;

import com.homework.Model.Dao.UserDao;
import com.homework.Model.Impl.UserDaoImpl;
import com.homework.Model.entity.User;

import com.homework.Model.Dao.ModelDao;
import com.homework.Model.Impl.ModelDaoImpl; /*import com.homework.Model.entity.Model;
 import com.homework.Student.Dao.ArticalDao;
 import com.homework.Student.Dao.ScoreDao;*/
import com.homework.Student.Dao.ArticalDao;
import com.homework.Student.Dao.StudentDao; /*import com.homework.Student.Impl.ArticalDaoImpl;
 import com.homework.Student.Impl.ScoreDaoImpl;*/
import com.homework.Student.Impl.ArticalDaoImpl;
import com.homework.Student.Impl.StudentDaoImpl; /*import com.homework.Student.entity.Artical;
 import com.homework.Student.entity.Score;*/
import com.homework.Student.entity.Artical;
import com.homework.Student.entity.Student;

public class TestAddModel {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Model model=new
		// Model(1,"学生体检表录入模型","录入模型","E://","2015年8月20","222","记录学生体检相关信息的表格模型");
		//ModelDao modelDao = new ModelDaoImpl();
		// modelDao.addModel(model);
		//modelDao.deleteModel(1, "学生基本信息录入模型");
		// Model model= modelDao.queryModelByModelName("学生体检表录入模型");
		// System.out.println(model.getModelId());
		//// modelDao.updateModel(model);
		/*Student student = new Student("谷文静", "", "", "山东省莱芜市莱城区", "1992-06-23",
				"2014-9-03", "裘江南", "全日制", "管理与经济学部", "信息管理与电子政务",
				"371202199206238888", "中共党员");*/
		//StudentDao studentDao = new StudentDaoImpl();
		// studentDao.addStuInfo(student);
		// Student student2= studentDao.queryStuInfo(21411054);
		// System.out.println(student2.getStuName());
		//studentDao.updateStuInfo(student);
		// studentDao.deleteStuInfo(21411054);
		 ArticalDao articalDao=new ArticalDaoImpl();
		// Artical artical=new
		// Artical("微博中网络舆情的情绪研究","情报学报","JIUENCA09","发表时间为2015年11月20日");
		// articalDao.addArticleInfo(artical);
		 Artical artical2=articalDao.queryArticleInfo("突发事件网络舆情情绪规律分析");
		 System.out.println(artical2.getArticalName());
		// articalDao.deleteArticleInfo("《微博中网络舆情的情绪研究》");
		// articalDao.updateArticleInfo(artical);
		// ScoreDao scoreDao=new ScoreDaoImpl();
		// Score score=new Score(21411054,201401,"数据挖掘2",3,90,"A");
		// scoreDao.addScoreInfo(score);
		// Score score=scoreDao.queryScoreInfo(21411054);
		// System.out.println(score.getCourseName());
		// scoreDao.updateScoreInfo(score);
		// scoreDao.deleteScoreInfo(21411054, 201401);
		//UserDao userDao = new UserDaoImpl();
		//User user = userDao.getUserByUserName("admin");
		//System.err.println(user.getUserPwd());

	}

}
