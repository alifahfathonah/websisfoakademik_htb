<?php
session_start();
if(empty($_SESSION['level'])){
header('location:index.php');
}
$level = $_SESSION['level'];
include 's_atas.php';
$sql = mysqli_query($koneksi, "select * from nilai");
$hasil = mysqli_fetch_array($sql);
?>
	<!-- ISI -->
	<div class="container_12">
	<div class="module">
	<br>
	<h2><span>TAMBAH NILAI SISWA ANDA, <?php echo $_SESSION['username']; ?> ! :</span></h2>
	<div class="module-table-body">
	<table id="" name="myTable" class="tablesorter">
	<tr>
	<td>
	<form method="post" action="up_nilai.php">
	<div class="form-group col-md-6">
		<label>Id Nilai: </label>
		<input type="text" class="form-control" value="<?php echo $hasil['id_nilai']; ?>" name="id_nilai" disabled=disabled><br>
		<label>Nama Guru :</label>
		<input type="text" class="form-control" value="<?php echo $hasil['id_guru']; ?>" name="id_guru" disabled=disabled><br>
		<label>Kelas: </label>
		<input type="text" class="form-control" value="<?php echo $hasil['id_kelas']; ?>" name="id_kelas" disabled=disabled><br>
		<label>Nama Siswa: </label>
		<input type="text" class="form-control" value="<?php echo $hasil['nis']; ?>" name="nis" disabled=disabled><br>
		<label>Mata Pelajaran: </label>
		<input type="text" class="form-control" value="<?php echo $hasil['id_matpel']; ?>" name="id_matpel" disabled=disabled><br>
	<br>
		<button class="btn-success btn" type="submit">Submit</button>
		<button class="btn-default btn" type="reset">Reset</button>
	</div>
	<div class="form-group col-md-6">
		<label>Tahun Ajaran: </label>
			<?php $ta = date("Y"); $ta2 = $ta+1; ?>
		<input type="text" class="form-control" id="TA" name="TA" value="<?php echo $ta."/".$ta2 ?>" disabled=disabled><br>
		<label>Semester: </label>
		<select class="form-control" id="periode" name="periode" required onchange="gantiJumlah()">
			<option value="Ganjil">Ganjil</option>
			<option value="Genap">Genap</option>
		</select><br>
		<label>Keterangan: </label>
		<input type="text" class="form-control" id="keterangan" value="<?php echo $hasil['keterangan']; ?>" name="keterangan"><br>
	<div class="form-group col-md-4">
		<label>Nilai Tugas: </label>
		<input type="text" class="form-control" id="tugas1" value="<?php echo $hasil['nilaitugas1']; ?>" name="tugas1" required maxlength="3" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="hitungNilai()">
	</div>
	<div class="form-group col-md-4">
		<label>Nilai Tugas 2: </label>
		<input type="text" class="form-control" id="tugas2" value="<?php echo $hasil['nilaitugas2']; ?>" name="tugas2" required maxlength="3" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="hitungNilai()">
	</div>
	<div class="form-group col-md-4">
		<label>Nilai UTS: </label>
		<input type="text" class="form-control" id="uts" value="<?php echo $hasil['nilai_uts']; ?>" name="uts" required maxlength="3" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="hitungNilai()">
	</div>
	<div class="form-group col-md-4">
		<label>Nilai UAS: </label>
		<input type="text" class="form-control" id="uas" value="<?php echo $hasil['nilai_uas']; ?>" name="uas" required maxlength="3" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="hitungNilai()">
	</div>
	<div class="form-group col-md-4">
		<label>Nilai Akhir: </label>
		<input type="text" class="form-control" id="akhir" value="<?php echo $hasil['nilai_akhir']; ?>" name="akhir" maxlength="3" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' disabled=disabled>
	</div>
	</div>
	</form>
<?php include "f_nilai-bayar.php"; ?>
	</td>
	</tr>
	</div>
	</div>
	</div>
	</table>
	<!-- Akhir Isi -->
<?php include "bawah.php"; ?>