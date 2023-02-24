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
		}else {
			return "Invalid";
		}
	}

	public void add_customer(String name, String email, String phone, String address, String pincode) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Session session = sf.getCurrentSession();
				String sql = "INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `pincode`) VALUES "
						+ "(NULL, '"+name+"', '"+email+"', '"+phone+"', '"+address+"', '"+pincode+"');";
				session.createSQLQuery(sql).executeUpdate();
	}




	public void add_ship(String type, String number, String model) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `ship` (`id`, `type`, `number`, `model`) VALUES "
				+ "(NULL, '"+type+"', '"+number+"', '"+model+"');";
		session.createSQLQuery(sql).executeUpdate();
	}




	public void add_order(Integer shipid,Integer cusid, String address, String picdate, String deliverydate, String weight, String packing,
			String comname, String comaddress, String mobile, String picklocation, String droplocation, String amount) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `orders` (`id`,`ship_id`, `customer_id`, `address`, `pickdate`, `deliverydate`, `weight`, `packingtype`, `comname`, `comaddress`, `mobile`, `pickloc`, `droploc`, `amount`) VALUES "
				+ "(NULL, "+shipid+","+cusid+", '"+address+"', '"+picdate+"', '"+deliverydate+"', '"+weight+"', '"+packing+"', "
						+ "'"+comname+"', '"+comaddress+"', '"+mobile+"', '"+picklocation+"', '"+droplocation+"', '"+amount+"');";
		session.createSQLQuery(sql).executeUpdate();
	}




	public List<Object[]> get_customers() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from customer";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}




	public List<Object[]> get_ships() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from ship";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public List<Object[]> get_orders() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT orders.id,customer.name,customer.phone,orders.pickloc,orders.droploc,orders.weight,orders.deliverydate,orders.amount,orders.current FROM `orders`  LEFT JOIN customer on(customer.id=orders.customer_id) ";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public void update_location(Integer id, String location) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "UPDATE `orders` SET `current` = '"+location+"' WHERE `orders`.`id` = "+id;
		session.createSQLQuery(sql).executeUpdate();
	}




	

	
}
