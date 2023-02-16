package com.example.demo.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ApiDao {
	@Autowired
	SessionFactory sf;


public String login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from admin where username='"+username+"' and password='"+password+"'";;
		NativeQuery nq = session.createNativeQuery(sql);
		if (nq.list().size() != 0) {
			return "admin";
		} else {
			String sql1 = "select * from student where username='"+username+"' and password='"+password+"'";;
			NativeQuery nq1 = session.createNativeQuery(sql1);
			if (nq1.list().size() != 0) {
				List<Object[]> a = nq1.list();
				return "id="+a.get(0)[0];
			}else {
				return "Invalid";
			}
			
		}
	}




	public void studentRegister(String firstname, String lastname, String rollno, String dept, String classname,
			String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `student` (`id`, `fname`, `lname`, `rollno`, `department`, `classname`, `username`, `password`) VALUES "
				+ "(NULL, '"+firstname+"', '"+lastname+"', '"+rollno+"', '"+dept+"', '"+classname+"', '"+username+"', '"+password+"');";
		System.out.print("test"+sql);
		session.createSQLQuery(sql).executeUpdate();
	}




	public void add_hallticket(String rollno, String subjectname, String rollno2, String hallno, String date) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `hallticket` (`id`, `rollno`, `subject`, `hallno`, `exdate`) VALUES"
				+ " (NULL, '"+rollno+"', '"+subjectname+"', '"+hallno+"', '"+date+"');";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public List<Object[]> get_tickets() {
	Session session = sf.getCurrentSession();
	String sql = "select h.rollno,s.fname,s.lname,h.id as hallticket,h.subject from hallticket h left join student s ON(s.rollno=h.rollno)";
	NativeQuery nq = session.createNativeQuery(sql);
	return nq.list();
	}




	public List<Object[]> get_tickets(Integer id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select h.rollno,s.fname,s.lname,h.id as hallticket,h.subject from hallticket h left join student s ON(s.rollno=h.rollno) where s.id="+id;
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

}
