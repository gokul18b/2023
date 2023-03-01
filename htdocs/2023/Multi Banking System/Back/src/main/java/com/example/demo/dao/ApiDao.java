package com.example.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
@Repository
@Transactional
public class ApiDao {
	@Autowired
	SessionFactory sf;

	
	public void bank_register(String bankname,String branch,String address,String ifsccode,String landline) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `bank` (`id`, `bankname`, `branch`, `address`, `ifsccode`, `landline`)"
				+ " VALUES (NULL, '"+bankname+"','"+branch+"', '"+address+"', '"+ifsccode+"', '"+landline+"');";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	public List<Object[]> get_bank() {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "Select * from bank";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public void add_manager(Integer bankid,String mobile,String landline,String username,String password) {
		// TODO Auto-generated method stub
			Session session = sf.getCurrentSession();
			String sql = "INSERT INTO `manager` (`id`, `bank_id`, `mobile`, `landline`, `username`, `password`) "
					+ "VALUES (NULL, "+bankid+", '"+mobile+"', '"+landline+"', '"+username+"', '"+password+"');";
			session.createSQLQuery(sql).executeUpdate();
	}
	
	


	public String login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from admin where username='"+username+"' and password='"+password+"'";;
		NativeQuery nq = session.createNativeQuery(sql);
		if (nq.list().size() != 0) {
			return "admin";
		} else {
			String sql1 = "select * from manager where username='"+username+"' and password='"+password+"'";;
			NativeQuery nq1 = session.createNativeQuery(sql1);
			if (nq1.list().size() != 0) {
				List<Object[]> a = nq1.list();
				return "manager-home.html?bankId=" + a.get(0)[1];
				
			}else{
				String sql2 = "select * from customer where status='Approved' and aadhar='"+username+"' and mobile='"+password+"'";;
				NativeQuery nq2 = session.createNativeQuery(sql2);
				if (nq2.list().size() != 0) {
					List<Object[]> a = nq2.list();
					return "customer-home.html?id=" + a.get(0)[0];
					//return "customer";
				}else{
					return "Invalid";
				}
			}
		}
	}
	public Boolean manager_login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "select * from manager where username='"+username+"' and password='"+password+"'";;
		NativeQuery nq = session.createNativeQuery(sql);
		if (nq.list().size() != 0) {
			return true;
		} else {
			return false;
		}
	}

	public void add_customer(String fname, String lname, String mobile, String aadhar, String idproof, String age,
			String gender, String address1, String address2, String city, String state, String pincode, Integer bankId) {
		// TODO Auto-generated method stub
		
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `customer` (`id`,`bankId`, `fname`, `lname`, `mobile`, `aadhar`, `idproof`, `age`, `gender`, `address1`, `address2`, `city`, `state`, `pincode`) "
				+ "VALUES (NULL, '"+bankId+"','"+fname+"', '"+lname+"', '"+mobile+"', '"+aadhar+"', '"+idproof+"', '"+age+"', "
						+ "'"+gender+"', '"+address1+"', '"+address2+"', '"+city+"', '"+state+"', '"+pincode+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public void add_customer(Integer customer_id, String bank_id, String account_type) {
		// TODO Auto-generated method stub
		
		Session session = sf.getCurrentSession();
		String sql = "INSERT INTO `account` (`id`, `customer_id`, `bank_id`, `account_type`) VALUES "
				+ "(NULL, '"+customer_id+"', '"+bank_id+"', '"+account_type+"');";
		session.createSQLQuery(sql).executeUpdate();
	}

	public List<Object[]> get_customer_bank() {
		Session session = sf.getCurrentSession();
		String sql = "Select * from account where id=";
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
	}

	public List<Object[]> get_customer(Integer bank_id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "Select * from customer where status!='Approved' AND bankId="+bank_id;
		NativeQuery nq = session.createNativeQuery(sql);
		return nq.list();
		
	}

	public void approve(Integer id) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		String sql = "UPDATE `customer` SET `status` = 'Approved' WHERE `customer`.`id` = "+id;
		session.createSQLQuery(sql).executeUpdate();
	}

}
