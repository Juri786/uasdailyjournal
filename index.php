<?php
include "koneksi.php";
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daily Journal</title>
    <link rel="icon" href="img/logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" 
    crossorigin="anonymous">
  <style>
    .card-hover{
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }
    .card-hover:hover{
        transform: scale(1.02);
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        cursor: pointer;
    }
  </style>    
  </head>
  <body>
    <!--nav begin-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">My Daily Journal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-dark">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#article">Article</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#jadwal">Jadwal</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#profil">Profil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#gallery">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#chatbot">Chatbot</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php" target="_blank">Login</a>
                    </li>
                </ul>
            </div>
            <div class="d-flex gap-2">
                <button id="tombolL" class="btn btn-danger bi bi-star-fill"></button>
                <button id="tombolD" class="btn btn-info bi bi-moon-fill "></button>
            </div>
        </div>
    </nav>
    <!--nav end-->
    <!--hero begin-->
    <section id="hero" class="isi1 text-center p-5 bg-danger-subtle text-sm-start">
        <div class="container">
            <div class="d-sm-flex flex-sm-row-reverse align-item-center">
                <img src="img/banner.jpg" class="img-fluid" width="300">
                <div>
                    <h1 class="fw-bold display-4">
                        Create Memories, Save Memories, Everyday
                    </h1>
                    <h4 class="lead display-6">
                        Mencatat semua kegiatan sehari-hari yang ada tanpa terkecuali
                    </h4>
                    <h6>
                        <span id="tanggal"></span>
                        <span id="jam"></span>
                    </h6>
                </div>
            </div>
        </div>
    </section>
    <!--hero end-->
    <!-- article begin -->
    <section id="article" class="text-center p-5">
    <div class="container">
        <h1 class="fw-bold display-4 pb-3">article</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
        <?php
        $sql = "SELECT * FROM article ORDER BY tanggal DESC";
        $hasil = $conn->query($sql); 

        while($row = $hasil->fetch_assoc()){
        ?>
            <div class="col">
                <div class="card h-100">
                    <img src="img/<?= $row["gambar"]?>" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title"><?= $row["judul"]?></h5>
                        <p class="card-text">
                            <?= $row["isi"]?>
                        </p>
                    </div>
                    <div class="card-footer">
                        <small class="text-body-secondary">
                            <?= $row["tanggal"]?>
                        </small>
                    </div>
                </div>
            </div>
            <?php
        }
        ?> 
        </div>
    </div>
    </section>
    <!-- article end -->
    <!--jadwal begin-->
    <section id="jadwal" class="isi1 text-center p-5 bg-danger-subtle text-sm-center">
        <div class="container">
            <h1 class="fw-bold display-4 pb-3">Jadwal Kuliah & Kegiatan Mahasiswa </h1>
            <div class="row row-cols-1 row-cols-md-4 g-4 justify-content-center">
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-info">
                        <div class="card-header bg-info text-white fw-bold text-center">
                            Senin
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item">
                                <h6 class="mb-0 fw-semibold">09.30-12.00</h6>
                                <small>Logika Informatika</small><br>
                                <small>Ruang H.5.12</small><br><br>
                                <h6 class="mb-0 fw-semibold">14.10-15.50</h6>
                                <small>Basis Data</small><br>
                                <small>Ruang H.5.10</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-primary">
                        <div class="card-header bg-primary text-white fw-bold text-center">
                            Selasa
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item">
                                <h6 class="mb-0 fw-semibold">12.00-15.00</h6>
                                <small>Rekayasa Perangkat Lunak</small><br>
                                <small>Ruang H.5.10</small><br><br>
                                <h6 class="mb-0 fw-semibold">15.30-18.00</h6>
                                <small>Sistem Operasi</small><br>
                                <small>Ruang H.3.2</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-success">
                        <div class="card-header bg-success text-white fw-bold text-center">
                            Rabu
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item">
                                <h6 class="mb-0 fw-semibold">09.30-12.00</h6>
                                <small>Kriptografi</small><br>
                                <small>Ruang H.5.13</small><br><br>
                                <h6 class="mb-0 fw-semibold">12.30-14.10</h6>
                                <small>Pemrograman Berbasi Web</small><br>
                                <small>Ruang D.2.J</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-danger">
                        <div class="card-header bg-danger text-white fw-bold text-center">
                            Kamis
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item py-5">
                                <h6 class="mb-0 fw-semibold">14.10-15.50</h6>
                                <small>Basis Data</small><br>
                                <small>Ruang D.2.K</small>
                                <br>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-warning">
                        <div class="card-header bg-warning text-white fw-bold text-center">
                            Jumat
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item">
                                <h6 class="mb-0 fw-semibold">09.30-12.00</h6>
                                <small>Probabilitas dan Statistik</small><br>
                                <small>Ruang H.3.2</small><br><br>
                                <h6 class="mb-0 fw-semibold">12.30-15.00</h6>
                                <small>Penambangan Data</small><br>
                                <small>Ruang H.4.3</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-secondary">
                        <div class="card-header bg-secondary text-white fw-bold text-center">
                            Sabtu
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item py-5">
                                <small>Tidak Ada Jadwal</small>
                                <br><br><br>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card-hover h-100 shadow-sm border-dark">
                        <div class="card-header bg-dark text-white fw-bold text-center">
                            Minggu
                        </div>
                        <ul class="list-group list-group-flush text-start text-center">
                            <li class="list-group-item py-5">
                                <small>Tidak Ada Jadwal</small>
                                <br><br><br>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--jadwal end-->
    <!--profil begin-->
    <section id="profil" class="text-center p-5">
        <div class="container">
            <h1 class="fw-bold display-4 pb-4">Profil Mahasiswa</h1>
            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-8">
                    <div class="row align-item-center">
                        <div class="col-12 col-md-4 text-center">
                            <img src="img/profil.jpg" class="card-hover rounded-circle shadow mb-3 mb-md-0" style="width: 200px; height: 200px; object-fit: cover;">
                        </div>
                        <div class="col-12 col-md-8">
                            <div class="card-hover shadow-lg mx-auto">
                                <div class="card-body text-center">
                                    <h4 class="profile card-title fw-bold mb-4 text-dark">Bagas Vieri Surya Putra</h4>
                                    <h6 class="profile card-title mb-4 text-dark">Mahasiswa Teknik Informatika</h6>
                                    <div class="table-resposive">
                                        <table class="table table-borderless table-sm mx-auto text-center" style="max-width: 450px;">
                                            <tbody>
                                                <tr>
                                                    <td class="fw-semibold text-nowrap">NIM</td>
                                                    <td>:</td>
                                                    <td class="text-wrap text-start">A11.2024.15778</td>
                                                </tr>
                                                <tr>
                                                    <td class="fw-semibold text-nowrap">Program Studi</td>
                                                    <td>:</td>
                                                    <td class="text-wrap text-start">Teknik Informatika</td>
                                                </tr>
                                                <tr>
                                                    <td class="fw-semibold text-nowrap">E-Mail</td>
                                                    <td>:</td>
                                                    <td class="text-wrap text-start">111202415778@mhs.dinus.ac.id</td>
                                                </tr>   
                                                <tr>
                                                    <td class="fw-semibold text-nowrap">Telepon</td>
                                                    <td>:</td>
                                                    <td class="text-wrap text-start">+62 821 3744 4502</td>
                                                </tr> 
                                                <tr>
                                                    <td class="fw-semibold text-nowrap">Alamat</td>
                                                    <td>:</td>
                                                    <td class="text-wrap text-start">Jalan Durian Utara II No.15, RT01 / RW02,Semarang</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--profil end-->
    <!--gallery begin-->
    <section id="gallery" class="isi1 text-center p-5 bg-danger-subtle">
        <div class="container">
            <h1 class="fw-bold display-4 pb-3">gallery</h1>
            <div id="carouselExample" class="carousel slide">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/g1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/g2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/g3.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/g4.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/g5.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>
    <!--gallery end-->
    <!--chatbot begin-->
    <section id="chatbot" class="text-center p-5">
    <div class="container mt-5">
        <h1 class="fw-bold display-4 pb-3">Chatbot</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
            <h5>🤖 Chatbot Ide Kegiatan</h5>
            <p class="text-muted">
                *Chatbot ini menggunakan AI sebagai alat bantu ide kegiatan.*
            </p>

            <div id="chat-result" class="alert alert-light"></div>

            <div class="input-group">
                <input type="text" id="pesan" class="form-control" placeholder="Kegiatan hari ini apa ya?" short>
                <button class="btn btn-primary" id="kirim">Send</button>
            </div>
        </div>
    </div>
    </section>
    <!--chatbot end-->
    <!--footer begin-->
    <footer class="text-center p-5">
        <div>
            <a href="https://www.instagram.com/bagasvi7?igsh=a3lzZTMxeW1jbzY3"><i class="simbol bi bi-instagram h2 p-2 text-dark"></i></a>
            <a href="https://x.com/JuriFF7?t=tbMIqNGOj4tiarBvwEuElQ&s=09"><i class="simbol bi bi-twitter-x h2 p-2 text-dark"></i></a>
            <a href="https://wa.me/+6282137444502"><i class="simbol bi bi-whatsapp h2 p-2 text-dark"></i></a>
        </div>
        <div>
            Bagas Vieri Surya Putra © 2025
        </div>
    </footer class="text-center p-5">
    <!--footer end-->
    <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" 
    crossorigin="anonymous"></script>
    <script type="text/javascript">
        window.setTimeout("tampilWaktu()", 1000);

        function tampilWaktu() {
            var waktu = new Date();
            var bulan = waktu.getMonth() + 1;

            setTimeout("tampilWaktu()", 1000);
            document.getElementById("tanggal").innerHTML =
                waktu.getDate() + "/" + bulan + "/" + waktu.getFullYear();
            document.getElementById("jam").innerHTML =
                waktu.getHours() +
                ":" +
                waktu.getMinutes()+
                ":" +
                waktu.getSeconds();
        }  
    </script>

    <script type="text/javascript">
        document.getElementById("tombolD").onclick = function() {
            document.body.classList.add("bg-dark");
            document.body.classList.add("text-white");

            const collection = document.getElementsByClassName("isi1");
            for (let i = 0; i < collection.length; i++){
                collection[i].classList.remove("bg-danger-subtle");
                collection[i].classList.remove("text-dark");
                collection[i].classList.add("bg-danger");
                collection[i].classList.add("text-white");
            }

            const symbol = document.getElementsByClassName("simbol");
            for (let i=0; i < symbol.length; i++){
                symbol[i].classList.remove("text-dark");
                symbol[i].classList.add("text-white");
            }

            const pp = document.getElementsByClassName("profile");
            for (let i=0; i < pp.length; i++){
                pp[i].classList.remove("text-dark");
                pp[i].classList.add("text-white");
            }
        };
    </script>

    <script text="text/javascript">
        document.getElementById("tombolL").onclick = function() {
            document.body.classList.remove("bg-dark");
            document.body.classList.remove("text-white");

            const collection = document.getElementsByClassName("isi1");
            for (let i = 0; i < collection.length; i++){
                collection[i].classList.remove("bg-danger");
                collection[i].classList.remove("text-white");
                collection[i].classList.add("bg-danger-subtle");
                collection[i].classList.add("text-dark");
            }

            const symbol = document.getElementsByClassName("simbol");
            for (let i=0; i < symbol.length; i++){
                symbol[i].classList.remove("text-white");
                symbol[i].classList.add("text-dark");
            }

            const pp = document.getElementsByClassName("profile");
            for (let i=0; i < pp.length; i++){
                pp[i].classList.remove("text-white");
                pp[i].classList.add("text-dark");
            }
        };
    </script>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
    $("#kirim").click(function(){
        let pesan = $("#pesan").val();
        if(pesan === "") return;

    $.post("chatbot.php", {pesan: pesan}, function(res){
        $("#chat-result").html(res.reply);
    });

    });
    </script>
  </body>
</html>