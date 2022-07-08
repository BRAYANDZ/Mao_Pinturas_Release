/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author brayan.daza
 */
public class Conexion {
    
    Connection con;
    String url="jdbc:mysql://n92g2gjptsrehtw4:agn0vwmtgo21zwn6@uzb4o9e2oe257glt.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/au3z1c3v0prbd63m";
    
    public Connection Conexion(){
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con=DriverManager.getConnection(url,"n92g2gjptsrehtw4","agn0vwmtgo21zwn6");
    }catch(Exception e){
    
    }
    return con;
    }
    
}
