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



	public void add_agent(String firstname, String lastname, String dob, String gender, String emailid, String mobile,
			String age, String state, String city, String pincode, String address, String profession, String expierence,
			String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `agent` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `mobile`, `age`, `state`, `city`, `pincode`, `address`, `profession`, `experience`, `password`) VALUES "
				+ "(NULL, '"+firstname+"', '"+lastname+"', '"+dob+"', '"+gender+"', '"+emailid+"', '"+mobile+"',"
						+ " '"+age+"', '"+state+"', '"+city+"', '"+pincode+"', '"+address+"', '"+profession+"', '"+expierence+"', '"+password+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_policy(String name, String category, String period, String premium, String date, String expierydate,
			String amount) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `policy` (`id`, `name`, `category`, `period`, `premium`, `date`, `expierydate`, `amount`) VALUES "
				+ "(NULL, '"+name+"', '"+category+"', '"+period+"', '"+premium+"', '"+date+"', '"+expierydate+"', '"+amount+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_customer(String fname, String lname, String dob, String mobile, String age, String gender,
			String state, String city, String pincode, String address, String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `customer` (`id`, `fname`, `lname`, `dob`, `mobile`, `age`, `gender`, `state`, `city`, `pincode`, `address`, `username`, `password`) VALUES "
				+ "(NULL, '"+fname+"', '"+lname+"', '"+dob+"', '"+mobile+"', '"+age+"', '"+gender+"', "
						+ "'"+state+"', '"+city+"', '"+pincode+"', '"+address+"','"+username+"','"+password+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_payment(String policy_id, String number, String expdate, String amount) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `payment` (`id`, `policy_id`, `policy_number`, `exp_date`, `amount`) VALUES "
				+ "(NULL,"+policy_id+", '"+number+"', '"+expdate+"', '"+amount+"');";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public void add_payment(Integer policy_id, Integer customer_id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `payment` (`id`, `policy_id`, `customer_id`) VALUES "
				+ "(NULL,"+policy_id+", '"+customer_id+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public List<Object[]> get_report() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "SELECT policy.id, customer.fname, customer.lname, policy.name, policy.amount, policy.expierydate  from payment LEFT JOIN customer ON (customer.id=payment.customer_id) LEFT JOIN policy ON (policy.id=payment.policy_id);";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}
	
	
}
