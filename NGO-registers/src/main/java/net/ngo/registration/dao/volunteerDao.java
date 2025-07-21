package net.ngo.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.ngo.registration.model.ConnectionEntry;
import net.ngo.registration.model.volunteer;


public class volunteerDao {

    public int registerVolunteer(volunteer volunteer) throws ClassNotFoundException {
        String INSERT_VOLUNTEER_SQL = "INSERT INTO volunteer" +
            "  (first_name, last_name, username, email, password, address, contact) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?);";

        int result = 0;

        // Load JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");  // For MySQL 8+
        // Use "com.mysql.cj.jdbc.Driver" if you're using MySQL 8.x or later

        try (Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ngo?useSSL=false", "root", ""); //your password

             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_VOLUNTEER_SQL)) {

            // Set parameters for insert
            //preparedStatement.setInt(1, 1); // If using AUTO_INCREMENT in DB, consider removing id
        	preparedStatement.setString(1, volunteer.getFirstName());
        	preparedStatement.setString(2, volunteer.getLastName());
        	preparedStatement.setString(3, volunteer.getUserName());
        	preparedStatement.setString(4, volunteer.getEmail());
        	preparedStatement.setString(5, volunteer.getPassword());
        	preparedStatement.setString(6, volunteer.getAddress());
        	preparedStatement.setString(7, volunteer.getContact());

            System.out.println(preparedStatement); // Debug output

            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }
        return result;
    }
    
    public boolean validateVolunteer(String username, String password) throws ClassNotFoundException {
        boolean isValid = false;
        Class.forName("com.mysql.cj.jdbc.Driver");
        String VALIDATE_SQL = "SELECT * FROM volunteer WHERE username = ? AND password = ?";
        try (
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ngo?useSSL=false", "root", ""); //your password
            PreparedStatement preparedStatement = connection.prepareStatement(VALIDATE_SQL)
        ) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                isValid = true;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return isValid;
    }
    
    public void insertConnection(String username, String review) throws ClassNotFoundException {
        String sql = "INSERT INTO connections (username, review) VALUES (?, ?)";
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ngo?useSSL=false", "root", ""); //your paasword
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, review);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // handle appropriately
        }
    }


    public List<ConnectionEntry> getAllConnections() throws ClassNotFoundException {
        List<ConnectionEntry> entries = new ArrayList<>();
        String sql = "SELECT username, review FROM connections";
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ngo?useSSL=false", "root", ""); //your password
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                entries.add(new ConnectionEntry(rs.getString("username"), rs.getString("review")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // handle appropriately
        }
        return entries;
    }
    public String getEmailByUsername(String username) {
        String sql = "SELECT email FROM volunteer WHERE username = ?";
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ngo?useSSL=false", "root", "");  //your password
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("email");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());

                Throwable t = ex.getCause();
                while (t != null) {
                    System.err.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
