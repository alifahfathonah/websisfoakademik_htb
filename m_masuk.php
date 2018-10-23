<?php
session_start();
if($_SESSION){
	header("Location: menu_utama.php");
}
?>
<html>
<?php include "atas.php"; ?>
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style>
		.row {
			margin:0px auto;
			width:300px;
			text-align:center;
			}
	</style>
	<!-- ISI -->
	<div class="container_12">
	<div class="module">
	<br>
	<h2><span>Silakan Masuk Untuk Melanjutkan!</span></h2>
	<div class="module-table-body">
	<table id="myTable" class="tablesorter">
		<tr>	
			<td>
			<br>
			<div align="center">
			<img src="images/kLogo.png" width="100" height="100">
			</div>
			<br>
			<div class="row">
			<?php include "p_masuk.php"; ?>
			<form role="form" action="" method="post">
			<div class="form-group">
					<input type="text" name="username" class="form-control" placeholder="Username" required autofocus />
			</div>
			<div class="form-group">
					<input type="password" name="password" class="form-control" placeholder="Password" required autofocus />
			</div>
			<div class="form-group">
				<select name="level" class="form-control" required>
					<option value="">Pilih Level User:</option>
					<option value="1">Administrator</option>
					<option value="2">Guru</option>
					<option value="3">Siswa / Siswi</option>
					<option value="4">Tata Usaha</option>
				</select>
			</div>
			<div class="form-group">
					<input type="submit" name="login" class="btn btn-primary btn-block" value="MASUK" />
			</div>
			</form>
					Copyright&copy; 2018 - MTs Jami'iyyah Islamiyyah
			</div>
			</div>
			</div>
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
					<script src="js/bootstrap.min.js"></script>
			</td>
		</tr>
	</div>
	</div>
	</div>
	</table>
	<!-- Akhir Isi -->
<?php include "bawah.php"; ?>	
</html>