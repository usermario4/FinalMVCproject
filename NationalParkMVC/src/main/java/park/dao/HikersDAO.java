package park.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import park.helpers.DBhelper;
import park.pojos.Hiker;




public class HikersDAO {
	//get by id
			public static Hiker getHikerById(int id) throws SQLException {
				Connection conn = DBhelper.getConnection();
				String querry = "select * from hikers where hiker_id=?";
				PreparedStatement ps=conn.prepareStatement(querry);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					Hiker h =  new Hiker(rs.getInt("hiker_ID"), rs.getString("full_name"),
							rs.getInt("age"),rs.getString("CNP"),
							rs.getDate("entry_date"),rs.getDate("exit_date"),
							rs.getString("trail_name"),
							rs.getString("phone_number"));
					DBhelper.closeConnection();
					return h;
				}
				DBhelper.closeConnection();
				return null;
			}
			//get all
			public static ArrayList<Hiker> all() throws SQLException{
				Connection conn = DBhelper.getConnection();
				String querry = "select * from hikers";
				PreparedStatement ps=conn.prepareStatement(querry);
				ResultSet rs = ps.executeQuery();
				ArrayList<Hiker> all = new ArrayList<Hiker>();
				
				while(rs.next()) {
					Hiker h = new Hiker(rs.getInt("hiker_ID"), rs.getString("full_name"),
							rs.getInt("age"),rs.getString("CNP"),
							rs.getDate("entry_date"),rs.getDate("exit_date"),
							rs.getString("trail_name"),
							rs.getString("phone_number"));
					
					all.add(h);
				}
				DBhelper.closeConnection();
				return all;
			}
			
			//delete
			public static void deleteById(int id) throws SQLException {
				Connection conn = DBhelper.getConnection();
				String querry = "delete from hikers where hiker_id=?";
				PreparedStatement ps=conn.prepareStatement(querry);
				ps.setInt(1, id);
				ps.executeUpdate();
				DBhelper.closeConnection();

			}
			 public static void delete(Hiker h) throws SQLException {
			      deleteById(h.getHiker_ID());
			   }
			//create
			public static void create(Hiker h) throws SQLException {
				Connection conn = DBhelper.getConnection();
				String querry = "insert into hikers(full_name,age, CNP, entry_date,exit_date,trail_name,phone_number) values(?,?,?,?,?,?,?) ";
				PreparedStatement ps=conn.prepareStatement(querry);
				ps.setString(1, h.getFull_name());
				ps.setInt(2, h.getAge());
				ps.setString(3, h.getCNP());
				ps.setDate(4, h.getEntry_date());
				ps.setDate(5, h.getExit_date());
				ps.setString(6,h.getTrail_name());
				ps.setString(7,h.getPhone_number());
				ps.executeUpdate();
				DBhelper.closeConnection();
			}
			//edit(update)
			public static void editHiker(Hiker h) throws SQLException {
				
				Connection conn = DBhelper.getConnection();
				String querry = "update hikers set full_name=? ,age=?,CNP=?,entry_date=?, exit_date=? ,trail_name=?,phone_number=? where hiker_id=?;";
				PreparedStatement ps=conn.prepareStatement(querry);
				ps.setString(1, h.getFull_name());
				ps.setInt(2, h.getAge());
				ps.setString(3, h.getCNP());
				ps.setDate(4, h.getEntry_date());
				ps.setDate(5, h.getExit_date());
				ps.setString(6,h.getTrail_name());
				ps.setString(7,h.getPhone_number());
				ps.setInt(8,h.getHiker_ID());;
				ps.executeUpdate();
				
			
				
				
				DBhelper.closeConnection();
			}
	}


