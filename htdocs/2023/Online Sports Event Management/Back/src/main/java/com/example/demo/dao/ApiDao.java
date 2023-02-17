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

import com.example.demo.controller.SELECT;
import com.example.demo.controller.event;
import com.example.demo.controller.left;
import com.example.demo.controller.team;

@Repository
@Transactional
public class ApiDao {
	@Autowired
	SessionFactory sf;


	public List<Object[]> get_complaints(Integer id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT * FROM `complaint` as c left join citizen as cz on (cz.id=c.citizen_id) where c.citizen_id="+id;
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public Boolean login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from admin where username='"+username+"' and password='"+password+"'";;
		NativeQuery nq = session.createNativeQuery(sql);
		if (nq.list().size() != 0) {
			return true;
		} else {
			return false;
		}
	}



	

	public void add_event(String name, String category, String amount, String total, String location,
			String contactperson, String mobile, String eventdate) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `event` (`id`, `name`, `category`, `amount`, `total`, `location`, `contactperson`, `mobile`, `eventdate`) VALUES "
				+ "(NULL, '"+name+"', '"+category+"', '"+amount+"', '"+total+"', '"+location+"', '"+contactperson+"', '"+mobile+"', '"+eventdate+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_event(Integer userid, String teamname, String total, String captain, String mobile1, String mobile2,
			String address) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `team` (`id`, `user_id`, `teamname`, `totalmembers`, `captain`, `mobile1`, `mobile2`, `address`) VALUES "
				+ "(NULL, "+userid+", '"+teamname+"', '"+total+"', '"+captain+"', '"+mobile1+"', '"+mobile2+"', '"+address+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_booking(Integer eventid, Integer teamid, String category, String amount, String total,
			String location, String contactperson, String mobile, String eventdate) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `book` (`id`, `eventid`, `teamid`, `category`, `amount`, `total`, `location`, `contactperson`, `mobile`, `eventdate`) VALUES "
				+ "(NULL, "+eventid+", "+teamid+", '"+category+"', '"+amount+"', '"+total+"', '"+location+"', '"+contactperson+"', '"+mobile+"', '"+eventdate+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_user(String mobile, String email, String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `user` (`id`, `mobile`, `email`, `username`, `password`) VALUES (NULL, '"+mobile+"', '"+email+"', '"+username+"', '"+password+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public List<Object[]> get_event() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from event";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public List<Object[]> get_teams(Integer id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from team where user_id="+id;
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public List<Object[]> get_booking() {
		// TODO Auto-generated method stub
		
		Session session = sf.getCurrentSession();
		String sql = "SELECT book.eventdate,event.name,team.teamname,team.captain,team.mobile1,team.address FROM `book` left join event on(event.id=book.eventid) LEFT JOIN team on(team.id=book.teamid)";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	
}
