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
        <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker3.min.css">     
        <link rel="stylesheet" type="text/css" href="css/build.css">      

        <link rel="icon" type="image/gif" href="http://www.nabilfawwaz.com/assets/img/favicon.gif">

        <title>CRUD Java Web</title>
    </head>
    <body>  
        <div class="col-md-4 col-md-offset-4">
            <center><h2>FORM UBAH DATA</h2></center>
            <form action="UserController?user&proses=update-user" method="post" onsubmit="return input_validation(this)">        
                <%
                    String Nik = request.getParameter("Nik");
                    UserModel km = new UserModel();
                    km.setNik(Nik);
                    List<UserModel> data = new ArrayList<UserModel>();
                    data = km.cariNik();
                    if (data.size() > 0) {
                %>
                <div class="form-group">                
                    <label for="NIK">NIK</label>                    
                    <input required type="text" class="form-control" name="Nik" id="Nik" value="<%=data.get(0).getNik()%>" maxlength="5" readonly="readonly">
                </div>

                <div class="form-group">
                    <label for="Nama">Nama</label>
                    <input required type="text" class="form-control" name="Nama" id="Nama" value="<%=data.get(0).getNama()%>" maxlength="25" onkeypress="return onlyAlphabets(event)">
                </div>

                <div class="form-group">
                    <label class="radio" for="Jenis Kelamin" style="margin-left: -5%; margin-bottom: 3px">Jenis Kelamin</label>
                    <% if (data.get(0).getJeniskelamin().equals("Pria")) { %>
                    <div class="radio radio-danger radio-inline">
                        <input type="radio" name="Jeniskelamin" id="Pria" value="Pria" checked><label for="Pria">Pria</label>
                    </div>
                    <div class="radio radio-danger radio-inline">
                        <input type="radio" name="Jeniskelamin" id="Wanita" value="Wanita"><label for="Wanita">Wanita</label>
                    </div>
                    <%} else if (data.get(0).getJeniskelamin().equals("Wanita")) { %>            
                    <div class="radio radio-danger radio-inline">
                        <input type="radio" name="Jeniskelamin" id="Pria" value="Pria"><label for="Pria">Pria</label>
                    </div>
                    <div class="radio radio-danger radio-inline">
                        <input type="radio" name="Jeniskelamin" id="Wanita" value="Wanita" checked><label for="Wanita">Wanita</label>
                    </div>
                    <%}%>                               
                </div>

                <div class="form-group">
                    <label for="Tempat, Tanggal Lahir">Tempat, Tanggal Lahir</label>
                    <div class="form-inline">
                        <input required type="text" class="form-control" name="Tempatlahir" id="Tempatlahir" placeholder="Tempat Lahir" maxlength="15" value="<%=data.get(0).getTempatlahir()%>" onkeypress="return onlyAlphabets(event)" style="width: 207px">
                        <div class="input-group date " data-date-format="dd-MM-yyyy">
                            <input required type="text" class="form-control" name="Tanggallahir" id="Tanggallahir" placeholder="Tanggal" value="<%=data.get(0).getTanggallahir()%>" onclick="datepicker(event)" readonly>
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="Alamat Domisil">Alamat Domisili</label>
                    <input required type="text" class="form-control" name="Alamatdomisili" id="Alamatdomisili" value="<%=data.get(0).getAlamatdomisili()%>" maxlength="90">
                </div>

                <div class="form-group">
                    <label for="Jabatan">Jabatan</label>
                    <input required type="text" class="form-control" name="Jabatan" id="Jabatan" value="<%=data.get(0).getJabatan()%>" maxlength="25" onkeypress="return onlyAlphabets(event)">
                </div>

                <div class="form-group">
                    <label for="Agama">Agama</label>         
                    <select required class="form-control" name="Agama" id="Agama">
                        <% if (data.get(0).getAgama().equals("Budha")) { %>                    
                        <option value="">Pilih Agama</option>
                        <option value="Budha" selected>Budha</option>
                        <option value="Hindu">Hindu</option>                    
                        <option value="Islam">Islam</option>                    
                        <option value="Kristen">Kristen</option>                    
                        <%} else if (data.get(0).getAgama().equals("Hindu")) { %>                          
                        <option value="">Pilih Agama</option>
                        <option value="Budha">Budha</option>
                        <option value="Hindu" selected>Hindu</option>                    
                        <option value="Islam">Islam</option>                    
                        <option value="Kristen">Kristen</option> 
                        <%} else if (data.get(0).getAgama().equals("Islam")) { %>                          
                        <option value="">Pilih Agama</option>
                        <option value="Budha">Budha</option>
                        <option value="Hindu">Hindu</option>                    
                        <option value="Islam" selected>Islam</option>                    
                        <option value="Kristen">Kristen</option> 
                        <%} else if (data.get(0).getAgama().equals("Kristen")) { %>                          
                        <option value="">Pilih Agama</option>
                        <option value="Budha">Budha</option>
                        <option value="Hindu">Hindu</option>                    
                        <option value="Islam">Islam</option>                    
                        <option value="Kristen" selected>Kristen</option> 
                        <% }%>
                    </select>                         
                </div>

                <div class="form-group">
                    <label for="Nomor Telepon">Nomor Telepon</label>
                    <input required type="text" class="form-control" name="Notelp" id="Notelp" value="<%=data.get(0).getNotelp()%>" maxlength="13" onkeypress="return onlyNumeric(event)">
                </div>

                <button type="submit" class="btn btn-success col-md-6"><i class="fa fa-recycle"> Perbarui</i></button>     
                <a  href="UserController?proses=home" class="fa fa-close btn btn-danger col-md-6"> Batal</a>
                <%}%>       
            </form>
        </div>
        <script type="text/javascript" src="js/jquery.min.js"></script>      
        <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript" src="js/javascript.js"></script>
        <script>
                        $(".input-group.date").datepicker({
                            autoclose: true,
                            todayHighlight: true
                        }).datepicker('update', new Date());
        </script>
    </body>
</html>
