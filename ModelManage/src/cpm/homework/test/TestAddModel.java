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
		// Model(1,"ѧ������¼��ģ��","¼��ģ��","E://","2015��8��20","222","��¼ѧ����������Ϣ�ı��ģ��");
		//ModelDao modelDao = new ModelDaoImpl();
		// modelDao.addModel(model);
		//modelDao.deleteModel(1, "ѧ��������Ϣ¼��ģ��");
		// Model model= modelDao.queryModelByModelName("ѧ������¼��ģ��");
		// System.out.println(model.getModelId());
		//// modelDao.updateModel(model);
		/*Student student = new Student("���ľ�", "", "", "ɽ��ʡ������������", "1992-06-23",
				"2014-9-03", "�ý���", "ȫ����", "�����뾭��ѧ��", "��Ϣ�������������",
				"371202199206238888", "�й���Ա");*/
		//StudentDao studentDao = new StudentDaoImpl();
		// studentDao.addStuInfo(student);
		// Student student2= studentDao.queryStuInfo(21411054);
		// System.out.println(student2.getStuName());
		//studentDao.updateStuInfo(student);
		// studentDao.deleteStuInfo(21411054);
		 ArticalDao articalDao=new ArticalDaoImpl();
		// Artical artical=new
		// Artical("΢������������������о�","�鱨ѧ��","JIUENCA09","����ʱ��Ϊ2015��11��20��");
		// articalDao.addArticleInfo(artical);
		 Artical artical2=articalDao.queryArticleInfo("ͻ���¼����������������ɷ���");
		 System.out.println(artical2.getArticalName());
		// articalDao.deleteArticleInfo("��΢������������������о���");
		// articalDao.updateArticleInfo(artical);
		// ScoreDao scoreDao=new ScoreDaoImpl();
		// Score score=new Score(21411054,201401,"�����ھ�2",3,90,"A");
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
