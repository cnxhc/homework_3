package com.jkxy.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import com.jkxy.util.ConnectionFactory;

public class StudentDao {
	public static void main(String[] args) throws SQLException {
		// 1、向数据表写入十条不同的数据，并将数据库中所有的数据输出
		 insert();
		// 2、查询年龄大于15岁的男生，并将数据输出
		//select();

		// 3、删除所有男生的数据，并将删除之后，数据库中的所有数据输出
		//delete();
	}

	// 1、向数据表写入十条不同的数据，并将数据库中所有的数据输出
	@Test
	public static void insert() {
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		try {
			String sql = "insert into t_students values(1,'张三',22,'男','北京'),(2,'王伟',10,'男','上海'),"
					+ "(3,'马瑞',20,'女','苏州'),(4,'黄红',14,'女','杭州'),(5,'李密',15,'男','杭州')"
					+ ",(6,'李思',16,'女','南京'),(7,'周舟',18,'女','上海'),(8,'黄小米',17,'男','北京')"
					+ ",(9,'邓超',25,'男','深圳'),(10,'徐良',21,'男','上海');";
			Statement st = conn.createStatement();
			int count = st.executeUpdate(sql);
			System.out.println("向用户表中插入了 " + count + "条记录");
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 2、查询年龄大于15岁的男生，并将数据输出
	public static void select() {
		ConnectionFactory cf = ConnectionFactory.getInstance();
		Connection conn = cf.makeConnection();
		try {
			String sql = "select * from t_students where stu_age>15 and stu_gender='男'";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			printStudent(rs);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 3、删除所有男生的数据，并将删除之后，数据库中的所有数据输出
	public static void delete() {
		ConnectionFactory cf = ConnectionFactory.getInstance();
		Connection conn = cf.makeConnection();
		try {
			String sql = "delete from t_students where stu_gender='男'";
			Statement st = conn.createStatement();
			st.executeUpdate(sql);

			String selectSql = "select * from t_students";
			Statement selectSt = conn.createStatement();
			ResultSet rs = st.executeQuery(selectSql);
			printStudent(rs);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 清空数据库中的所有数据
	private static void clear() {
		ConnectionFactory cf = ConnectionFactory.getInstance();
		Connection conn = cf.makeConnection();
		try {
			String sql = "delete from t_students where stu_id>0";
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 打印学生信息
	private static void printStudent(ResultSet rs) throws SQLException {
		while (rs.next()) {
			System.out.print(rs.getInt("stu_id") + " ");
			System.out.print(rs.getString("stu_name") + " ");
			System.out.print(rs.getString("stu_age") + " ");
			System.out.print(rs.getString("stu_gender") + " ");
			System.out.print(rs.getString("stu_address") + " ");
			System.out.println();
		}
	}
}
