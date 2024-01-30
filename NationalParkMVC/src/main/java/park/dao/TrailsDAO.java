package park.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import park.helpers.DBhelper;
import park.pojos.Trail;

public class TrailsDAO {
    // get by id
    public static Trail getTrailById(int id) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "select * from trails where trail_id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Trail t = new Trail(rs.getInt("trail_id"), rs.getString("name"),
                    rs.getInt("distance"), rs.getInt("safe_house"));
            DBhelper.closeConnection();
            return t;
        }
        DBhelper.closeConnection();
        return null;
    }

    // get all
    public static ArrayList<Trail> all() throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "select * from trails";
        PreparedStatement ps = conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        ArrayList<Trail> all = new ArrayList<Trail>();

        while (rs.next()) {
            Trail t = new Trail(rs.getInt("trail_id"), rs.getString("name"),
                    rs.getInt("distance"), rs.getInt("safe_house"));

            all.add(t);
        }
        DBhelper.closeConnection();
        return all;
    }

    // delete
    public static void deleteById(int id) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "delete from trails where trail_id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
        DBhelper.closeConnection();
    }

    public static void delete(Trail t) throws SQLException {
        deleteById(t.getTrail_id());
    }

    // create
    public static void create(Trail t) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "insert into trails(name, distance, safe_house) values(?,?,?) ";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, t.getName());
        ps.setInt(2, t.getDistance());
        ps.setInt(3, t.getSafe_house());
        ps.executeUpdate();
        DBhelper.closeConnection();
    }

    // edit(update)
    public static void editTrail(Trail t) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "update trails set name=?, distance=?, safe_house=? where trail_id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, t.getName());
        ps.setInt(2, t.getDistance());
        ps.setInt(3, t.getSafe_house());
        ps.setInt(4, t.getTrail_id());
        ps.executeUpdate();

        DBhelper.closeConnection();
    }
}
