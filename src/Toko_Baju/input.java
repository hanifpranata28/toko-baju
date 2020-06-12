package Toko_Baju;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author HANIF PRANATA
 */
public class input {

    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pst = null;

    private String sql;

    public String nama_barang;
    public String harga;
    public String jumlah;
    public String total;
    public String bayar;
    public String kembalian;

    public void simpan() throws SQLException {
        conn = KoneksiDB.getkoneksi();
        String sql = "INSERT INTO form_pembelian(nama_barang, harga, jumlah, total, bayar, kembalian)VALUES (?,?,?,?,?,?)";
        pst = conn.prepareStatement(sql);

        pst.setString(1, nama_barang);
        pst.setString(2, harga);
        pst.setString(3, jumlah);
        pst.setString(4, total);
        pst.setString(5, bayar);
        pst.setString(6, kembalian);
        pst.execute();
        pst.close();
    }

    public ResultSet UpdateJTable() throws SQLException {
        conn = KoneksiDB.getkoneksi();
        sql = "select*from form_pembelian";
        pst = conn.prepareStatement(sql);
        rs = pst.executeQuery();
        return rs;
    }

    public void hapus() throws SQLException {
        conn = KoneksiDB.getkoneksi();
        String sql = "delete form_pembelian where harga=?";
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, nama_barang);
            pst.execute();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }

    public void edit() throws SQLException {
        conn = KoneksiDB.getkoneksi();
        String sql = "Update form_pembelian set jumlah=?, total=?, nama_barang=?, bayar=?, kembalian=?  where harga=?";
        pst = conn.prepareStatement(sql);

        pst.setString(3, jumlah);
        pst.setString(4, total);
        pst.setString(2, harga);
        pst.setString(5, bayar);
        pst.setString(6, kembalian);
        pst.setString(1, nama_barang);
        pst.executeUpdate();
        pst.close();

    }
}
