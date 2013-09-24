/**
 * 
 */
package prosubmit.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;

import prosubmit.controller.*;

/**
 * @author ramone
 *
 */
@SuppressWarnings("all")
public class DBAccess {
	private DBConnectionPool dbPool = null;
    private PreparedStatement statement = null;
    private ResultSet resultSet = null;
    private Connection connection = null;
    private ServletContext context;

	public DBAccess(DBConnectionPool dbPool) {
        this.dbPool = dbPool;
    }
    
	/**
	 * 
	 * @return
	 */
    public boolean closeConnection() {
        boolean success = false;
        try {
            if (statement  != null) { statement.close(); }
            if (resultSet  != null) { resultSet.close(); }
            if (connection != null) { connection.close();}
        }catch (SQLException e) {
        	System.out.println(e.getMessage());
        }finally{
        	success = true;
        }
        return success;
    }

    /**
     * @param result
     * @param query
     * @return <boolean> true if the operation was successful
     * but false otherwise
     */
    public boolean queryDB(ArrayList<HashMap<String,String>> result, String query) {
    	boolean success = false;
	    try {
	    	connection= ((DBConnectionPool)context.getAttribute("DBConnectionPool")).getConnection();
	        statement = connection.prepareStatement(query);
	        resultSet = statement.executeQuery();
	        int colCount = resultSet.getMetaData().getColumnCount();
	        while (resultSet.next()){
	        	HashMap<String,String> row = new HashMap<String,String>();
	            for (int i=1; i<=colCount; i++) {
	                row.put(resultSet.getMetaData().getColumnName(i),resultSet.getString(i));
	            }
	            result.add(row);
	        }
	    }catch (SQLException e) {
	    	System.out.println(e.getMessage());
	    }finally {
	       //IT SALL GOOD 
	    	closeConnection();
	    	success = true;
	    }
	    return success;
    }
    
    /**
     * Gets a single record of an entity from the database
     * @param professor
     * @param sql
     * @return <boolean> true if the operation was successful but
     * false otherwise
     */
    public boolean queryDB(HashMap<String, String> record, String sql) {
		// TODO Auto-generated method stub
		ArrayList<HashMap<String,String>> results = new ArrayList<HashMap<String,String>>();
		queryDB(results,sql);
		record = results.get(0);
    	return false;
	}
    
    /**
     * @param statement
     * @return <boolean> true if the operation was successful but
     * false otherwise
     */ 
    public boolean updateDB(String sql) {
    	boolean success = false;
        try {
            statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        }catch (SQLException e) {
        	e.printStackTrace();
        }finally {
            success = true;
        }
        return success;
    }

    /**
     * 
     * @param sql
     * @param params
     * @return <boolean> true if the operation was successful 
     * but false otherwise
     */
	public boolean updateDB(String sql, String[] params) {
		// TODO Auto-generated method stub
		boolean success = false;
		try{
			PreparedStatement prpStmt = connection.prepareStatement(sql);
			for(int i =0;i<params.length;i++){
				prpStmt.setString(i,params[i]);
			}
			statement.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			success = true;
		}
		return success;
	}
}