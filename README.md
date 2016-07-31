# ModelManagement 档案管理系统
## 基于jsp + SQL Server + Tomcat + HTML + CSS
## 1、数据库设计 
   涉及到两个数据库
   * ModelManage ：里面有三个表 model_type;mode_table;user_table     
       model_type:typeId,typeName   
       model_table: modelId,modelName,typeId,modelAdr,createTime,modifiedTime,describe      
       user_table: userId,userName,pwd
   * StuInfo：里面有四个表 studentInfo;article;score;    
       studehtInfo:stuId,stuName,Birthday,deparment,……       
       article: stuId,article_name,qikan_name,qikan_id,note      
       score: stuId,courseId,score,level      
       course: courseId,courseName,xuefen

## 2、类的设计     
    * 共六个类，Model类，User类，Student类，article类，score类，course类     
    * 每个类都有接口，接口中的方法基本上都是 增加，删除，修改，查找     
    * 接口有实现类
    
## 3、JDBC连接数据库     
    * 将连接数据库的操作封装在了一个类里。每次使用调用connection类即可。        
    * 因为用到了两个数据库，所以有两个connection类，一个是管理模型的数据库连接，一个是学生数据库连接
## 4、登录    
    用session来判断是否登录。
  * 登录时，若登录成功，则将userId通过 session.setAttribute 添加一个session，然后通过response.sendRedirect重定向到index
  * 在其他页面上，首先判断用户是否登录，如果登录则显示要访问的页面，否则重定向到登录页面
  
# 总结和说明
  该系统是将操作封装成了模型，可以对模型进行增删改查，然后通过模型来对学生的档案进行具体的操作。模型是可以重复使用的。    
    * jar包是需要用到的jar包，下载后需要自行添加；        
    * ppt是一个说明ppt，方便理解模型库是什么；    
    * 数据库需要自己建，可以看一下源码，自己建立即可，很简单。
** 如果是要使用，请注明出处，附上我的github地址即可，如要商用，请通过邮件与我取得联系。如发现我系统中有错误，欢迎批评指正！**
