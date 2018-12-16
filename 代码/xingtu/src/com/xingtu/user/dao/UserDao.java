package com.xingtu.user.dao;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Repository;

import com.sun.net.httpserver.HttpContext;
import com.xingtu.entity.Md5Encode;
import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;


@Repository
public class UserDao{
	
	@Resource
	private SessionFactory sessionFactory;
	
	//鎻掑叆娉ㄥ唽鐢ㄦ埛
	public Boolean getRegistPerson(Users users) throws Exception{
		String myemail=users.getEmail();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Users where email=?0");
		q.setParameter(0, myemail);
		if(q.list().size()!=0) {
		    return false;//濡傛灉鏁版嵁搴撲腑瀛樺湪杩欎釜閭锛岃鏄庨渶瑕侀噸鏂拌緭鍏ユ垨娉ㄥ唽
		}
		else {
			session.save(users);
			return true;
		}		
	}
	
	//楠岃瘉鏄惁瀛樺湪瑕佺櫥褰曠殑閭,瀵嗙爜鏄惁姝ｇ‘
	public boolean getLoginPerson(Users users) throws Exception{
		String password1=Md5Encode.getMD5(users.getPassword().toString().getBytes());//鑾峰緱鍏跺瘑鐮佺殑MD5鐮�
		String myemail=users.getEmail();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select password from Users where email=?0");
		q.setParameter(0, myemail);
		if(q.list().size()!=0 && q.list().get(0).equals(password1)) {//璇存槑瀛樺湪杩欎釜閭锛屽苟涓斿瘑鐮佺浉绛�	
		    return true;
		}
		else {
			return false;
		}		
	}
	//鏍规嵁ID鏌ユ壘鐢ㄦ埛
	public Users findUserByEmail(String email) {
		Session session = this.sessionFactory.getCurrentSession();
		Users u = (Users)session.createQuery("from Users where email='"+email+"'").uniqueResult();
		return u;
	}
	//鏌ユ壘璇ョ敤鎴风殑绮変笣鏁�
	public Long funsCount(String email) {
		Session session = this.sessionFactory.getCurrentSession();
		Long count = (Long)session.createQuery("select count(*) from Funs where follower_user='"+email+"'").uniqueResult();
		return count;
	}
	public Long followedConut(String email) {
		Session session = this.sessionFactory.getCurrentSession();
		Long count = (Long)session.createQuery("select count(*) from Followed where follwed_user='"+email+"'").uniqueResult();
		return count;
	}
	//查询攻略
	public List<Strategy> findStrategyByEmail(String email){
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Strategy where user.email='"+email+"'");
		return q.list();
	}
}
