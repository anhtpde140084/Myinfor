/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configdb;

/**
 *
 * @author tranp
 */
public interface DatabaseInfo {
    public static String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static String connectionURL = "jdbc:sqlserver://127.0.0.1:1433;databaseName=MyProfile;";
    public static String userName = "sa";
    public static String password = "1234";
}