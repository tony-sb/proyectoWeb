package modeloDAO;

import config.Conexion;
import java.sql.*;
import modelo.Carrito;
import modelo.Compra;

public class CompraDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;

    public int GenerarCompra(Compra compra) throws ClassNotFoundException {
        int idCompras;

        String sql = "insert into compras(idCliente,idPago,FechaCompras,Monto,Estado) values(?,?,?,?,?)";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, compra.getCliente().getId());
            ps.setInt(2, compra.getIdPago());
            ps.setString(3, compra.getFecha());
            ps.setDouble(4, compra.getMonto());
            ps.setString(5, compra.getEstado());
            r = ps.executeUpdate();

            sql = "select @@IDENTITY AS idCompras";
            rs = ps.executeQuery(sql);
            rs.next();
            idCompras = rs.getInt("idCompras");
            rs.close();

            for (Carrito detalle : compra.getDetalleCompras()) {
                sql = "inset into detalle_compras(idProducto,idCompras,Cantidad,PrecioCompra) values(?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setInt(1, detalle.getIdProducto());
                ps.setInt(2, idCompras);
                ps.setInt(3, detalle.getCantidad());
                ps.setDouble(4, detalle.getPrecioCompra());
                r = ps.executeUpdate();
            }

        } catch (SQLException e) {
            System.out.println("Error CompraDAO");
        }
        return r;
    }
}
