package park.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import park.helpers.DBhelper;
import park.pojos.Event;

public class EventsDAO {
    
    // Get event by ID
    public static Event getEventById(int id) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "SELECT * FROM events WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        
        while (rs.next()) {
            Event event = new Event(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getDate("date"),
                    rs.getString("location")
            );
            DBhelper.closeConnection();
            return event;
        }
        DBhelper.closeConnection();
        return null;
    }
    
    // Get all events
    public static List<Event> getAllEvents() throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "SELECT * FROM events";
        PreparedStatement ps = conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<Event> allEvents = new ArrayList<>();
        
        while (rs.next()) {
            Event event = new Event(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getDate("date"),
                    rs.getString("location")
            );
            allEvents.add(event);
        }
        DBhelper.closeConnection();
        return allEvents;
    }
    
    // Delete event by ID
    public static void deleteEventById(int id) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "DELETE FROM events WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
        DBhelper.closeConnection();
    }
    
    // Create new event
    public static void createEvent(Event event) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "INSERT INTO events(name, date, location) VALUES(?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, event.getName());
        ps.setDate(2, event.getDate());
        ps.setString(3, event.getLocation());
        ps.executeUpdate();
        DBhelper.closeConnection();
    }
    
    // Edit (update) event
    public static void editEvent(Event event) throws SQLException {
        Connection conn = DBhelper.getConnection();
        String query = "UPDATE events SET name=?, date=?, location=? WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, event.getName());
        ps.setDate(2, event.getDate());
        ps.setString(3, event.getLocation());
        ps.setInt(4, event.getId());
        ps.executeUpdate();
        DBhelper.closeConnection();
    }
}
