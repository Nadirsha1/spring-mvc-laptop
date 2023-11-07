package com.mvchib.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvchib.model.Customer;
import com.mvchib.model.User;

@Repository
@Transactional
public class RegDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public int saveData(User u) {
		int status=0;
	    status=(Integer)sessionFactory.getCurrentSession().save(u);
		return status;
	}

	public List logCheck(String mail, String pass) {
		// TODO Auto-generated method stub
		User user=new User();
		List loglist=new ArrayList();
		Session session = sessionFactory.getCurrentSession();
		loglist=session.createSQLQuery("SELECT approve from user where mail='"+mail+"' and password='"+pass+"'").list();
		return loglist;
	}

	public List<User> getUser() {
		// TODO Auto-generated method stub
		List<User> list=new ArrayList<User>();
		String sql="from User order by userid";
		Query q=this.sessionFactory.getCurrentSession().createQuery(sql);
		list=q.list();
		System.out.println("List==="+list);
		return list;
	}

	public int deleteUser(int userid) {
		int status=0;
		System.out.println("User Id==="+userid);
		String sql1="delete from User where userid=:uid";
		Query q1=this.sessionFactory.getCurrentSession().createQuery(sql1);
		q1.setParameter("uid",userid);
		status=q1.executeUpdate();		
		return status;		
	}

	public List<User> editUser(int userid) {
		List<User> list=new ArrayList<User>();
		String sql="from User where userid=:id";
		Query q=this.sessionFactory.getCurrentSession().createQuery(sql);
		q.setParameter("id", userid);
		list=q.list();
		System.out.println(list);
		return list;
	}

	public int updateData(User u) {
		int status=0;
		String sql1="update User set name=:n,num=:nu,mail=:m,password=:p,approve=:a where userid=:id";
		Query q1=this.sessionFactory.getCurrentSession().createQuery(sql1);
		q1.setParameter("n",u.getName());
		q1.setParameter("nu", u.getNum());
		q1.setParameter("m", u.getMail());
		q1.setParameter("p", u.getPassword());
		q1.setParameter("a", u.getApprove());
		q1.setParameter("id", u.getUserid());
		status=q1.executeUpdate();
		return status;
	}

	public int saveCustomer(Customer stu) {
		int i=0;
		try {
			if(stu.getSlno()<=0) {
				i=(Integer)sessionFactory.getCurrentSession().save(stu);
			}
			else {
				String sql1="update Customer set sname=:n,snum=:nu,smail=:m,lap=:a,complaint=:p where slno=:id";
				Query q1=this.sessionFactory.getCurrentSession().createQuery(sql1);
				q1.setParameter("n",stu.getSname());
				q1.setParameter("nu", stu.getSnum());
				q1.setParameter("m", stu.getSmail());
				q1.setParameter("a", stu.getLap());
				q1.setParameter("p", stu.getComplaint());
				q1.setParameter("id", stu.getSlno());
				i=q1.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public List<Customer> getCustomer() {
		List<Customer> list=new ArrayList<Customer>();
		String sql="from Customer order by slno";
		Query q=this.sessionFactory.getCurrentSession().createQuery(sql);
		list=q.list();
		System.out.println("List==="+list);
		return list;
	}

	public void deleteCustomer(int slno) {
		String sql1="delete from Customer where slno=:uid";
		Query q1=this.sessionFactory.getCurrentSession().createQuery(sql1);
		q1.setParameter("uid",slno);
		q1.executeUpdate();
	}

	public List<Customer> editCustomer(int slno) {
		List<Customer> list=new ArrayList<Customer>();
		String sql="from Customer where slno=:id";
		Query q=this.sessionFactory.getCurrentSession().createQuery(sql);
		q.setParameter("id", slno);
		list=q.list();
		System.out.println(list);
		return list;
	}
}
