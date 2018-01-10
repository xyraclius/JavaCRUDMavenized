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
    <center><h2>FORM TAMBAH DATA</h2></center>
    <div class="col-md-4 col-md-offset-4">
        <form action="UserController?user&proses=input-user" method="post" name="biodata">                   
            <div class="form-group">       
                <div class="input-group">
                    <label for="NIK">NIK</label>
                    <input required id="nik" class="form-control" name="Nik" id="Nik" placeholder="Nomor Induk Karyawan" maxlength="5" readonly>   
                    <span class="input-group-btn">
                        <button class="btn btn-info" type="button" onclick="getRandomInt()" style="margin-bottom: -25px">Hasilkan NIK</button>
                    </span>
                </div>
            </div>

            <div class="form-group">               
                <label for="Nama">Nama</label>
                <input required type="text" class="form-control" name="Nama" id="Nama" placeholder="Nama" maxlength="25" onkeypress="return onlyAlphabets(event)">
            </div>

            <div class="form-group">
                <label class="radio" for="Jenis Kelamin" style="margin-left: -5%; margin-bottom: 3px">Jenis Kelamin</label>
                <div class="radio radio-danger radio-inline">
                    <input type="radio" name="Jeniskelamin" id="Pria" value="Pria"><label for="Pria">Pria</label>
                </div>
                <div class="radio radio-danger radio-inline">
                    <input type="radio" name="Jeniskelamin" id="Wanita" value="Wanita"><label for="Wanita">Wanita</label>
                </div>
            </div>

            <div class="form-group">
                <label for="Tempat, Tanggal Lahir">Tempat, Tanggal Lahir</label>
                <div class="form-inline">
                    <input required type="text" class="form-control" name="Tempatlahir" id="Tempatlahir" placeholder="Tempat Lahir" maxlength="15" style="width: 207px">
                    <div id="datepicker" class="input-group date" data-date-format="dd-MM-yyyy">
                        <input placeholder="Tanggal" class="form-control" type="text" name="Tanggallahir" id="Tanggallahir" readonly>
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    </div>
                </div>
            </div>

            <div class="form-group">                               
                <label for="Alamat Domisili">Alamat Domisili</label> 
                <input required type="text" class="form-control" name="Alamatdomisili" id="Alamatdomisili" placeholder="Alamat Domisili" maxlength="90">                
            </div>

            <div class="form-group">
                <label for="Jabatan">Jabatan</label>
                <input required type="text" class="form-control" name="Jabatan" id="Jabatan" placeholder="Jabatan" maxlength="25">
            </div>

            <div class="form-group">
                <label for="Agama">Agama</label>         
                <select required class="form-control" name="Agama" id="Agama">
                    <option value="">Pilih Agama</option>
                    <option value="Budha">Budha</option>
                    <option value="Hindu">Hindu</option>                    
                    <option value="Islam">Islam</option>                    
                    <option value="Kristen">Kristen</option>                    
                </select>                         
            </div>

            <div class="form-group">
                <label for="Nomor Telepon">Nomor Telepon</label>
                <input required type="text" class="form-control" name="Notelp" id="Notelp" placeholder="Nomor Telepon" maxlength="13" onkeypress="return onlyNumeric(event)">
            </div>

            <button type="submit" class="btn btn-success col-md-6"><i class="fa fa-plus"> Tambah</i></button>
            <a  href="UserController?proses=home" class="fa fa-close btn btn-danger col-md-6"> Batal</a>  
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
