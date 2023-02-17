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

	public void add_vehicle(String name, String type, String number) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `vehicle` (`id`, `name`, `type`, `number`) VALUES "
				+ "(NULL, '"+name+"', '"+type+"', '"+number+"');";
		session.createSQLQuery(sql).executeUpdate();
	}


	public void add_driver(String name, String mobile, String address, String license, String aadhar, String expierence,
			String age) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `driver` (`id`, `name`, `mobile`, `address`, `license`, `aadhar`, `expierence`, `age`) VALUES "
				+ "(NULL, '"+name+"', '"+mobile+"', '"+address+"', '"+license+"', '"+aadhar+"', '"+expierence+"', '"+age+"');";
		session.createSQLQuery(sql).executeUpdate();
	}


	public void goods_register(Integer vehicleid, Integer driverid, String address, String days) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `goods` (`id`, `vehicleid`, `driverid`, `deliveryaddress`, `days`) VALUES "
				+ "(NULL, "+vehicleid+", "+driverid+", '"+address+"', '"+days+"');";
		session.createSQLQuery(sql).executeUpdate();
	}


	public List<Object[]> get_vehicles() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from vehicle";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}


	public List<Object[]> get_drivers() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from driver";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	public List<Object[]> get_goods() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT driver.name,vehicle.number,goods.id,goods.deliveryaddress,goods.days,goods.date from goods LEFT JOIN driver on(driver.id=goods.driverid) LEFT JOIN vehicle ON(vehicle.id-goods.vehicleid)";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
}
