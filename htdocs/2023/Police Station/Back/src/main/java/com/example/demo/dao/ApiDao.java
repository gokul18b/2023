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



	public void station_register(String name,String code,String address1,String address2,String city,String state,String pincode,String landline) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `station` (`id`, `name`, `code`, `address1`, `address2`, `city`, `state`, `pincode`, `landline`) "
				+ "VALUES (NULL, '"+name+"', '"+code+"', '"+address1+"', '"+address2+"', '"+city+"', '"+state+"', '"+pincode+"', '"+landline+"');";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	
	public void citizen_register(String firstname,String lastname,String mobile,String address1,String address2,String area,String city,String state,String pincode,String username,String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `citizen` (`id`, `fname`, `lname`, `mobile`, `address1`,`address2`,`area`, `city`, `state`, `pincode`, `username`, `password`) VALUES "
				+ "(NULL, '"+firstname+"', '"+lastname+"', '"+mobile+"', '"+address1+"', '"+address2+"',  '"+area+"','"+city+"', '"+state+"', '"+pincode+"', '"+username+"', '"+password+"');";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public void complaint_action(Integer complaint_id,String status) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "UPDATE `complaint` SET `status` = '"+status+"' WHERE `complaint`.`citizen_id` = "+complaint_id+";";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public List<Object[]> get_citizen() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "Select * from citizen";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	public List<Object[]> get_complaints() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT station.code,citizen.fname,citizen.mobile as mob,complaint.name as name1,complaint.mobile,complaint.reason,complaint.address,complaint.youraddress FROM `complaint` left JOIN station on (station.id=complaint.station_id) left join citizen on(citizen.id=complaint.citizen_id) where complaint.citizen_id";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	public List<Object[]> get_complaints(Integer id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT station.code,complaint.name,complaint.mobile,complaint.reason,complaint.address,complaint.youraddress FROM `complaint` left JOIN station on (station.id=complaint.station_id) where complaint.citizen_id="+id;
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}


	
	public void add_complaint(Integer citizen_id,Integer station_id,String mobile,String address,String reason,String name,String youraddress) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `complaint` (`id`, `citizen_id`,`station_id`, `mobile`, `address`, `reason`, `status`, `name`, `youraddress`) VALUES"
				+ "(NULL, '"+citizen_id+"','"+station_id+"', '"+mobile+"', '"+address+"', '"+reason+"','0','"+name+"','"+youraddress+"');";
		session.createSQLQuery(sql).executeUpdate();
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


	public List<Object[]> get_station() {
	
			Session session = sf.getCurrentSession();
			String sql = "Select * from station";
			NativeQuery nq = session.createNativeQuery(sql);
			return nq.list();
		
	}

}
