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


	public void add_customer(String name, String mobile, String email, String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `user` (`id`, `name`, `mobile`, `email`, `username`, `password`) VALUES"
				+ " (NULL, '"+name+"', '"+mobile+"', '"+email+"', '"+username+"', '"+password+"');";
		session.createSQLQuery(sql).executeUpdate();
	}




	public void add_house(String name, String owner, String contact, String address1, String address2, String city,
			String district, String state, String landmark, String pincode, String squre, String bedroom, String hall,
			String kitchen, String others, String price) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `house` (`id`, `name`, `owner`, `contact`, `address1`, `address2`, `city`, `district`, `state`, `landmark`, `pincode`, `squre`, `bedroom`, `hall`, `kitchen`, `others`, `price`) VALUES "
				+ "(NULL, '"+name+"', '"+owner+"', '"+contact+"', '"+address1+"', '"+address2+"', '"+city+"', "
						+ "'"+district+"', '"+state+"', '"+landmark+"', '"+pincode+"', '"+squre+"', '"+bedroom+"', '"+hall+"', "
								+ "'"+kitchen+"', '"+others+"', '"+price+"');";
		session.createSQLQuery(sql).executeUpdate();
		}




	public void add_book(Integer customer_id, Integer houseid) {
		// TODO Auto-generated method stub
		
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `booking` (`id`, `userid`, `houseid`) VALUES "
				+ "(NULL, "+customer_id+", "+houseid+");";
		session.createSQLQuery(sql).executeUpdate();
	}


	public List<Object[]> get_houses() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from house";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}


	public List<Object[]> get_bookings() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT user.name,user.mobile,house.name as housename,house.owner,house.contact FROM `booking` LEFT JOIN house on(house.id=booking.houseid) LEFT JOIN user on(user.id=booking.userid)";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}


	
	}


