<?php
date_default_timezone_set("Asia/Jakarta");
$koneksi = mysqli_connect("localhost","root","","skripsiwildan");
// Cek Koneksi
if (mysqli_connect_errno()){
	echo "Koneksi Database Gagal/Database Tidak Ada!" . mysqli_connect_error();
} 
?>