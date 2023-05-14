<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesanan.aspx.cs" Inherits="Project_Nusantara_Resto.pesanan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nusantara Resto || Pesanan</title>
    <link rel="icon" href="image/logo.ico" />
    <!-- Link CSS -->
    <link rel="stylesheet" href="css/pesanan.css" />

    <!-- CDN Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <!-- CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
</head>

<body>
    <!-- JS Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Navbar -->
    <section>
        <nav class="p-lg-3 shadow-lg navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container-fluid">
                <!-- Toggler -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Logo / Brand -->
                <a style="color: rgb(1, 32, 65)" class="navbar-brand mx-auto mx-lg-5" href="index.aspx">
                    <i style="color: green" class="fas fa-utensils"></i>Nusantara Resto
                </a>

                <!-- Menu -->
                <div class="collapse navbar-collapse justify-content-center me-5" id="navbarNav">
                    <ul class="navbar-nav ">
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-kategori="ayam">Ayam</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-kategori="daging">Daging</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-kategori="gulai">Gulai</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-kategori="minuman">Minuman</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-kategori="tambahan">Tambahan</a>
                        </li>
                    </ul>
                </div>

                <!-- Cart Icon -->
                <div class="carticon justify-content-end mx-lg-5">
                    <button class="btn btn-success" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar">
                        <i class="fa-solid fa-cart-shopping"></i>(0)
                    </button>
                </div>
            </div>
        </nav>

        <!-- Sidebar -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="sidebar" aria-labelledby="sidebarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="sidebarLabel">Keranjang</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <p>Some text in the sidebar.</p>
            </div>
        </div>
    </section>

    <!-- Menu Title and search -->
    <section>
        <div style="margin-top: 100px;" class="container-fluid">
            <div class="row">
                <div class="d-flex col-sm-12 justify-content-center">
                    <div class="circle menutitle">
                        <span>Ayam</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Card Menu -->
    <section>
        <div style="margin-top: 60px;" class="container">
            <div id="konten-makanan" class="row">
            </div>
        </div>

    </section>

    <!-- Footer -->
    <section>
        <footer style="background-color: #223522;" class="shadow-lg text-white pt-5 mt-5 pb-4">
            <div class="container text-center">
                <div class="row text-center">


                    <div class="col-sm-4 mx-auto mt-3">
                        <h5 services class="mb-4 font-weight-bold" style="color: rgb(0, 252, 96)">Services </h5>
                        <p class="Judul2">
                            <a href="#" style="text-decoration: none; color: #fff">Fast Delivery</a>
                        </p>
                        <p class="Judul2">
                            <a href="#" style="text-decoration: none; color: #fff">Best Quality</a>
                        </p>
                        <p class="Judul2">
                            <a href="#" style="text-decoration: none; color: #fff">Fresh Food</a>
                        </p>
                        <p class="Judul2">
                            <a href="#" style="text-decoration: none; color: #ffff">Nusantara Food</a>
                        </p>
                    </div>

                    <div class="col-sm-4 mx-auto mt-3">
                        <h5 class="mb-4 font-weight-bold" style="color: rgb(0, 252, 96)">Opening Hours</h5>
                        <p>Monday: 8:00am to 11:00pm</p>
                        <p>Tuesday: 8:00am to 11:00pm</p>
                        <p>Wednesday: 8:00am to 11:00pm</p>
                        <p>Thursday: 8:00am to 11:00pm</p>
                        <p>Friday: 8:00am to 11:00pm</p>
                        <p>Saturday and Sunday: Closed</p>

                    </div>
                    <div class="col-sm-4 mx-auto mt-3">
                        <h5 class="mb-4 font-weight-bold" style="color: rgb(0, 252, 96)">Food & Drinks</h5>
                        <div class="description2">
                            <p class="Judul2">
                                <a href="#" style="text-decoration: none; color: #ffff">Ayam</a>
                            </p>
                            <p class="Judul2">
                                <a href="#" style="text-decoration: none; color: #fff">Daging</a>
                            </p>
                            <p class="Judul2">
                                <a href="#" style="text-decoration: none; color: #ffff">Gulai</a>
                            </p>
                            <p class="Judul2">
                                <a href="#" style="text-decoration: none; color: #ffff">Juice</a>
                            </p>
                        </div>
                    </div>
                </div>

                <hr class="mb-4">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <p>
                            &copy; Copyright 2023 All right reserved by

              <strong>Nusantara<span> Resto</span></strong>
                        </p>
                    </div>
                    <div class="col-sm-12 text-center">
                        <ul class="list-unstyled list-inline">
                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px; border-radius: 50%;"><i
                                    class="fab fa-facebook"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i
                                    class="fab fa-twitter"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i
                                    class="fab fa-google-plus"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i
                                    class="fab fa-youtube"></i></a>
                            </li>

                        </ul>

                    </div>
                </div>


            </div>

        </footer>
    </section>

    <!-- JS biar langsung ada konten tentang makanan kategori ayam -->
    <script>
        window.onload = function () {
            var ayamLink = document.querySelector('[data-kategori="ayam"]');
            ayamLink.click();
        }
    </script>

    <!-- JS gambar menu(bulat) -->
    <script>$(document).ready(function () {
            var images = {
                "ayam": "https://resepkoki.id/wp-content/uploads/2017/11/Resep-Ayam-Bakar-Padang-1.jpg",
                "daging": "https://cdn-brilio-net.akamaized.net/news/2020/05/21/185022/1234835-1000xauto-resep-daging-padang.jpg",
                "gulai": "https://cdn-brilio-net.akamaized.net/news/2020/05/21/185022/1234835-1000xauto-resep-daging-padang.jpg",
                "minuman": "https://cdn-brilio-net.akamaized.net/news/2020/05/21/185022/1234835-1000xauto-resep-daging-padang.jpg",
                "tambahan": "https://cdn-brilio-net.akamaized.net/news/2020/05/21/185022/1234835-1000xauto-resep-daging-padang.jpg",
            };

            // Ketika link navbar diklik
            $('a[data-kategori]').click(function (e) {
                e.preventDefault();

                // Ambil data kategori dari atribut data-kategori pada link navbar
                var kategori = $(this).data('kategori');

                // Ubah gambar pada kelas circle sesuai dengan kategori yang dipilih
                $('.circle').css('background', 'url(' + images[kategori] + ') no-repeat center center/cover');

                // Ubah teks pada elemen <span> sesuai dengan kategori yang dipilih
                $('.circle span').text(kategori);
            });
        });


    </script>

    <!-- JS query ajax -->
    <script>
        $(document).ready(function () {
            // Ketika link navbar diklik
            $('a[data-kategori]').click(function (e) {
                e.preventDefault();

                // Ambil data kategori dari atribut data-kategori pada link navbar
                var kategori = $(this).data('kategori');

                // Buat request Ajax untuk mengambil data makanan sesuai kategori
                $.ajax({
                    url: 'getDataMakanan.aspx',
                    type: 'POST',
                    data: {
                        kategori: kategori
                    },
                    success: function (response) {
                        // Isi konten makanan dengan data yang diterima dari server
                        $('#konten-makanan').html(response);
                    },
                    error: function () {
                        alert('Terjadi kesalahan saat mengambil data makanan!');
                    }
                });
            });
        });
    </script>



    <!-- JS Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
</body>

</html>
