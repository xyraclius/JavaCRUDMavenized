package com.nabil.model;

import com.nabil.connection.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nabil Fawwaz Elqayyim
 */
public class UserModel {

    String id, Nik, Nama, Jeniskelamin, Tempatlahir, Tanggallahir, Alamatdomisili, Jabatan, Agama, Notelp;
    Database db = null;

    public UserModel() {
        db = new Database();
    }

    public String getNik() {
        return Nik;
    }

    public void setNik(String Nik) {
        this.Nik = Nik;
    }

    public String getNama() {
        return Nama;
    }

    public void setNama(String Nama) {
        this.Nama = Nama;
    }

    public String getJeniskelamin() {
        return Jeniskelamin;
    }

    public void setJeniskelamin(String Jeniskelamin) {
        this.Jeniskelamin = Jeniskelamin;
    }

    public String getTempatlahir() {
        return Tempatlahir;
    }

    public void setTempatlahir(String Tempatlahir) {
        this.Tempatlahir = Tempatlahir;
    }

    public String getTanggallahir() {
        return Tanggallahir;
    }

    public void setTanggallahir(String Tanggallahir) {
        this.Tanggallahir = Tanggallahir;
    }

    public String getAlamatdomisili() {
        return Alamatdomisili;
    }

    public void setAlamatdomisili(String Alamatdomisili) {
        this.Alamatdomisili = Alamatdomisili;
    }

    public String getJabatan() {
        return Jabatan;
    }

    public void setJabatan(String jabatan) {
        this.Jabatan = jabatan;
    }

    public String getAgama() {
        return Agama;
    }

    public void setAgama(String Agama) {
        this.Agama = Agama;
    }

    public String getNotelp() {
        return Notelp;
    }

    public void setNotelp(String Notelp) {
        this.Notelp = Notelp;
    }

    public void simpan() {
        String sql = "INSERT INTO biodata values('" + Nik + "','"
                + Nama + "','"
                + Jeniskelamin + "','"
                + Tempatlahir + "','"
                + Tanggallahir + "','"
                + Alamatdomisili + "','"
                + Jabatan + "','"
                + Agama + "','"
                + Notelp + "')";
        db.simpanData(sql);
    }

    public void update() {
        String sql = "UPDATE biodata SET NIK='" + Nik
                + "', NAMA='" + Nama
                + "', JENISKELAMIN='" + Jeniskelamin
                + "', TEMPATLAHIR='" + Tempatlahir
                + "', TANGGALLAHIR='" + Tanggallahir
                + "', ALAMATDOMISILI='" + Alamatdomisili
                + "', JABATAN='" + Jabatan
                + "', AGAMA='" + Agama
                + "', NOTELP='" + Notelp
                + "' WHERE Nik='" + Nik + "'";
        db.simpanData(sql);
        System.out.println(sql);
    }

    public void hapus() {
        String sql = "DELETE FROM biodata WHERE NIK='" + Nik + "'";
        db.simpanData(sql);
        System.out.println("");
    }

    public List tampil() {
        List<UserModel> data = new ArrayList<>();
        ResultSet rs = null;

        try {
            String sql = "select * from biodata order by nama asc";
            rs = db.ambilData(sql);
            while (rs.next()) {
                UserModel um = new UserModel();
                um.setNik(rs.getString("Nik"));
                um.setNama(rs.getString("Nama"));
                um.setJeniskelamin(rs.getString("Jeniskelamin"));
                um.setTempatlahir(rs.getString("Tempatlahir"));
                um.setTanggallahir(rs.getString("tanggallahir"));
                um.setAlamatdomisili(rs.getString("Alamatdomisili"));
                um.setJabatan(rs.getString("Jabatan"));
                um.setAgama(rs.getString("Agama"));
                um.setNotelp(rs.getString("Notelp"));
                data.add(um);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data User" + ex);
        }
        return data;
    }

    public List cariNik() {
        List<UserModel> data = new ArrayList<>();
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM biodata WHERE Nik='" + Nik + "'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                UserModel m = new UserModel();
                m.setNik(rs.getString("Nik"));
                m.setNama(rs.getString("Nama"));
                m.setJeniskelamin(rs.getString("Jeniskelamin"));
                m.setTempatlahir(rs.getString("Tempatlahir"));
                m.setTanggallahir(rs.getString("Tanggallahir"));
                m.setAlamatdomisili(rs.getString("Alamatdomisili"));
                m.setJabatan(rs.getString("Jabatan"));
                m.setAgama(rs.getString("Agama"));
                m.setNotelp(rs.getString("Notelp"));
                data.add(m);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari Nik" + ex);
        }
        return data;
    }
}
