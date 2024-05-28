package modelo;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    //Metodo:
    public Producto listarId(int id) throws ClassNotFoundException {
        String sql = "SELECT * FROM producto WHERE idProducto=" + id;
        Producto p = new Producto();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setPrecio(rs.getDouble(4));
                p.setStock(rs.getInt(5));
            }
        } catch (SQLException e) {
            
        }
        return p;
    }

    public List listar() throws ClassNotFoundException {

        List<Producto> productos = new ArrayList<>();
        String sql = "SELECT * FROM producto LIMIT 10";
        try {

            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Producto p = new Producto();
                p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setPrecio(rs.getDouble(4));
                p.setStock(rs.getInt(5));

                productos.add(p);
            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return productos;
    }
}
