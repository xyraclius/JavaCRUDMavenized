<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.nabil.model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">     
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">   

        <link rel="icon" type="image/gif" href="http://www.nabilfawwaz.com/assets/img/favicon.gif">

        <title>CRUD Java Web</title>
    </head>
    <body>
    <center><h1>Aplikasi Pembelajaran CRUD Java Web | Nabil Fawwaz Elqayyim</h1></center>

    <center>
        <a  href="UserController?proses=input-user" class="fa fa-plus-circle btn btn-primary"> Tambah</a>
    </center>    
    <br>

    <div class=" col-lg-12">    
        <table class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">        
            <thead>
                <tr>
                    <th ><i class="fa fa-list-ol"></i> No</th>
                    <th><i class="fa fa-vcard"></i> Nik</th>
                    <th><i class="fa fa-user"></i> Nama</th>            
                    <th><i class="fa fa-venus-mars"></i> Jenis Kelamin</th>
                    <th><i class="fa fa-birthday-cake"></i> Tempat, Tanggal Lahir</th>           
                    <th><i class="fa fa-address-book"></i> Alamat Domisili</th>         
                    <th><i class="fa fa-male"></i> Jabatan</th>         
                    <th><i class="fa fa-chain"></i> Agama</th>     
                    <th><i class="fa fa-whatsapp"></i> No Telp/HP</th>   
                    <th><i class="fa fa-gears"></i> Aksi</th>
                </tr>
            </thead>
            <%
                List<UserModel> data = new ArrayList<UserModel>();
                UserModel um = new UserModel();
                data = um.tampil();
                for (int x = 0; x < data.size(); x++) {
            %>
            <tr>
                <td><%=x + 1%></td>
                <td><%=data.get(x).getNik()%></td>
                <td><%=data.get(x).getNama()%></td>
                <td><%=data.get(x).getJeniskelamin()%></td>
                <td><%=data.get(x).getTempatlahir() + ", " + data.get(x).getTanggallahir()%></td>
                <td><%=data.get(x).getAlamatdomisili()%></td>
                <td><%=data.get(x).getJabatan()%></td>
                <td><%=data.get(x).getAgama()%></td>
                <td><%=data.get(x).getNotelp()%></td>
                <td>                                        
                    <a class="btn btn-success fa fa-pencil-square-o" href="UserController?proses=edit-user&Nik=<%=data.get(x).getNik()%>"> Ubah </a>                                        
                    <a class="btn btn-danger fa fa-trash-o" href="UserController?user&proses=hapus-user&Nik=<%=data.get(x).getNik()%>"> Hapus</a>   
                </td>
            </tr>
            <%}%>
        </table>      
</div>       
</body>
</html>
