package com.example.demo.dao;

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

	public void add_customer(String fname, String lname, String email, String password, String mobile) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `customer` (`id`, `fname`, `lname`, `email`, `password`, `mobile`) VALUES (NULL, '"
				+ fname + "', '" + lname + "', '" + email + "', '" + password + "', '" + mobile + "'); ";
		session.createSQLQuery(sql).executeUpdate();
	}

	public String login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from admin where username='" + username + "' and password='" + password + "'";
		;
		NativeQuery nq = session.createNativeQuery(sql);
		if (nq.list().size() != 0) {
			return "admin";
		} else {
			String sql1 = "select * from customer where email='" + username + "' and password='" + password + "'";
			;
			NativeQuery nq1 = session.createNativeQuery(sql1);
			if (nq1.list().size() != 0) {
				List<Object[]> a = nq1.list();
				return "id=" + a.get(0)[0];
			} else {
				return "Invalid";
			}

		}
	}

	public void add_car(String carname, String model, String engine, String width, String height, String price,
			String year) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `car` (`id`, `name`, `model`, `engine`, `width`, `height`, `price`, `year`) VALUES (NULL, '"
				+ carname + "', '" + model + "', '" + engine + "', '" + width + "', '" + height + "', '" + price
				+ "', '" + year + "');";
		session.createSQLQuery(sql).executeUpdate();

	}

	public List<Object[]> get_cars() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from car";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	public void add_booking(String customer_id, String car_id, String expected, String suggession) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `booking` (`id`, `customer_id`, `car_id`,`expected`,`suggession`) VALUES (NULL, '"+customer_id+"', '"+car_id+"', '"+expected+"', '"+suggession+"');";
		
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public List<Object[]> get_bookings() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT customer.fname,customer.lname, customer.mobile, car.name, car.model, car.price, booking.expected, booking.suggession FROM `booking` LEFT JOIN customer ON(customer.id=booking.customer_id) LEFT JOIN car ON(car.id=booking.car_id);";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	

}
