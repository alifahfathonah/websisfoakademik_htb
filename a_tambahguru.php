<?php
session_start();
if(empty($_SESSION['level'])){
header('location:index.php');
}
$level = $_SESSION['level'];
include 's_atas.php';
?>
	<!-- ISI -->
	<div class="container_12">
	<div class="module">
	<br>
	<h2><span>TAMBAH GURU ANDA:</span></h2>
	<div class="module-table-body">
	<table id="myTable" class="tablesorter">
	<tr>
	<td>
	<form method="post" action="ap_guru.php">
	<div class="form-group col-md-6">
	<label>NIK: </label>
		<input type="text" class="form-control" placeholder="Isi Dengan NIK Guru" name="nik"><br>
	<label>Nama Guru: </label>
		<input type="text" class="form-control" placeholder="Isi Dengan Nama Guru" name="nama_guru"><br>
	<label>Password: </label>
		<input type="text" class="form-control" placeholder="Isi Dengan Password Guru" name="password"><br>
	<label>Alamat: </label>
		<textarea name="alamat" cols="50" rows="4" placeholder="Isi Dengan Alamat Guru" class="form-control"></textarea><br>
	</div>
	<div class="form-group col-md-6">
	<label>Tempat Lahir: </label>
		<input type="text" class="form-control" placeholder="Isi Dengan Tempat Lahir Guru" name="tmp_lahir"><br>
	<label>Tanggal Lahir: </label>
	<input type="text" id="form-control" class="tanggal" placeholder="Isi Dengan Tanggal Lahir Guru" name="tgl_lahir">
	<script type="text/javascript">
		$(document).ready(function(){
			$('.tanggal').datepicker();		
		});
	</script><br>
	<label>Agama: </label>
	<select class="form-control" name="agama">
		<option value="">- Agama -</option>
		<option value="Islam">Islam</option>
		<option value="Kristen">Kristen</option>
		<option value="Katolik">Katolik</option>
		<option value="Hindu">Hindu</option>
		<option value="Buddha">Buddha</option>
		<option value="Konghucu">Konghucu</option>
	</select><br>
	<label>Jenis Kelamin: </label>
	<br>
		<input type="radio" value="Laki-Laki" checked="" name="jk"> Perempuan</label> /
		<input type="radio" value="Perempuan" checked="" name="jk"> Laki-Laki</label>
	<br><br>
	<label>Nomor Telepon: </label>
		<input type="text" class="form-control" placeholder="Isi Dengan No. HP Guru, Format 0 Di depan Dihilangkan" name="no_tlp" maxlength="20"><br>
	<label>Foto: </label>
		<input type="file" name="foto"><br>
		<button class="btn-success btn" type="submit">Submit</button>
		<button class="btn-default btn" type="reset">Reset</a></button>
</form>
	</tr>
	</td>
	</div>
	</div>
	</div>
	</table>
	<!-- Akhir Isi -->
<?php include "bawah.php"; ?>