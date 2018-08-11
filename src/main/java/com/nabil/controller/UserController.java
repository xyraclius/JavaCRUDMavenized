package com.nabil.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nabil.model.UserModel;

/**
 * @author Nabil Fawwaz Elqayyim
 */
public class UserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses = request.getParameter("proses");
        switch (proses) {
            case "input-user":
                response.sendRedirect("tambah_user");
                break;
            case "home":
                response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
                break;
            case "edit-user":
                response.sendRedirect("edit_user?Nik=" + request.getParameter("Nik"));
                break;
            case "print":
                response.sendRedirect("print?Nik=" + request.getParameter("Nik"));
                break;
            case "hapus-user":
                UserModel hm = new UserModel();
                hm.setNik(request.getParameter("Nik"));
                hm.hapus();
                response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String proses = request.getParameter("proses");

        if (user != null) {
            UserModel um = new UserModel();
            um.setNik(request.getParameter("Nik"));
            um.setNama(request.getParameter("Nama"));
            um.setJeniskelamin(request.getParameter("Jeniskelamin"));
            um.setTempatlahir(request.getParameter("Tempatlahir"));
            um.setTanggallahir(request.getParameter("Tanggallahir"));
            um.setAlamatdomisili(request.getParameter("Alamatdomisili"));
            um.setJabatan(request.getParameter("Jabatan"));
            um.setAgama(request.getParameter("Agama"));
            um.setNotelp(request.getParameter("Notelp"));
            switch (proses) {
                case "input-user":
                    um.simpan();
                    break;
                case "update-user":
                    um.update();
                    break;
            }
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
        }
    }
}
