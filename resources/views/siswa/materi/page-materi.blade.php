<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Siswa | Baca Materi</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- IonIcons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link href="{{ asset('AdminLTE-3.2.0/dist/css/adminlte.css') }}" rel="stylesheet">
    <!-- DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />
</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->

<body class="hold-transition sidebar-mini">

    @extends('layouts.sidebar-siswa')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Materi</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Materi</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <div class="content">
            <style>
                .pa {
                    position: sticky;
                    top: 20px;
                    /* Atur posisi dari atas layar sesuai kebutuhan Anda */
                    z-index: 100;
                    /* Atur indeks z jika diperlukan untuk menentukan tumpukan elemen */
                    /* Atur gaya lainnya sesuai kebutuhan Anda */
                }

                .scrollable-box {
                    height: 400px;
                    /* Ganti ketinggian sesuai kebutuhan */
                    overflow-y: auto;
                    /* Membuat box menjadi scrollable di sumbu Y (vertikal) jika konten melebihi ketinggian yang ditentukan */
                    border: 1px solid #ccc;
                    /* Contoh gaya border, sesuaikan jika perlu */
                    padding: 10px;
                    /* Contoh gaya padding, sesuaikan jika perlu */
                }

                .button {
                    margin-top: 20px;
                    align: center;
                    /* Contoh gaya padding, sesuaikan jika perlu */
                }

            </style>
            <div class="toast align-items-center text-white bg-gray border-0" role="alert" aria-live="assertive"
                aria-atomic="true" id="myToast" data-bs-autohide="false"
                style="position: absolute; top: 0; right: 0; width: 400px; z-index: 9999;">
                <div class="toast-header">
                    <div class="d-flex align-items-center">
                        <img src="{{ asset('AdminLTE-3.2.0/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo"
                            class="brand-image img-circle elevation-3"
                            style="opacity: .8; width: 40px; height: 40px; margin-right: 10px">
                        <strong class="mr-auto" style="font-size: 24px;">Pedagogical Agent</strong> <!-- Text -->
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="toast-body" style="font-size: 20px;">
                    Sekarang, mari kita lihat bagaimana bahan bacaan dan tujuan kursus berkaitan dengan tugas yang akan
                    kita kerjakan. Dengan memahami ini, Anda akan dapat melihat pentingnya koneksi antara materi yang
                    dipelajari dan apa yang diharapkan dari Anda dalam menulis Karya Tulis Ilmiah.
                </div>
            </div>

            <div id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                aria-expanded="true" aria-controls="collapseOne">
                                Materi apa yang akan dibahas
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
                            nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft
                            beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice
                            lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you
                            probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                                aria-expanded="false" aria-controls="collapseTwo">
                                Tujuan
                            </button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
                            nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft
                            beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice
                            lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you
                            probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                                aria-expanded="false" aria-controls="collapseThree">
                                Outcome
                            </button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
                            nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft
                            beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice
                            lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you
                            probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
            </div>
            <div style="display: flex; justify-content: space-between; margin: 10px;">
                <div class="button">
                    <a href="/start-quiz/{{ $data[0]->quiz_id }}/{{ $data2[0]->id }}"
                        class="btn btn-warning btn-xs btn-plus" id="tambah" style="align-items: center; display: flex;">
                        <i class="fa fa-play" style="width: 200px; margin: auto;">
                            <p style="font-size:18px;">Start Quiz</p>
                        </i>
                    </a>
                </div>
                <div class="button2">
                    <a href="/fordis" class="btn btn-warning btn-xs btn-plus" id="tambah"
                        style="align-items: center; display: flex;">
                        <i class="fa fa-play" style="width: 200px; margin: auto;">
                            <p style="font-size:18px;">Mulai Diskusi</p>
                        </i>
                    </a>
                </div>
            </div>


            <!-- <div class="card-body">
                <h5 class="card-title" style="align: center;">Special title treatment</h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <div class="button">
                    <a href="/start-quiz/{{ $data[0]->quiz_id }}/{{ $data2[0]->id }}"
                        class="btn btn-warning btn-xs btn-plus" id="tambah" style="align-items:center;">
                        <i class="fa fa-play" style="width: 200px; height: 30px; margin: top 20%;">
                            <p style="font-size:18px;">Start Quiz</p>
                        </i>
                    </a>
                </div>
            </div>
            <div class="card-footer text-muted">
                2 days ago
            </div>
        </div> -->
            <!-- <div class="materi">
                <h3>{{ $data[0]->judul }}</h3>
                <div class="scrollable-box">
                    <p>{{ $data[0]->konten }}</p>
                </div>
            </div> -->

        </div>


        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- ./wrapper --
    <!-- jQuery -->
    <script src="{{ asset('AdminLTE-3.2.0/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset('AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE -->
    <script src="{{ asset('AdminLTE-3.2.0/dist/js/adminlte.js') }}"></script>
    <!-- DataTables -->
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>

    <!-- OPTIONAL SCRIPTS -->
    <script src="{{ asset('AdminLTE-3.2.0/plugins/chart.js/Chart.min.js') }}"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{ asset('AdminLTE-3.2.0/dist/js/dashboard3.js') }}"></script>

    <!-- REQUIRED SCRIPTS -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var myToast = new bootstrap.Toast(document.getElementById('myToast'), {
                autohide: false // Nonaktifkan perilaku auto hide
            });

            // Event listener untuk tombol close
            document.querySelector('#myToast .btn-close').addEventListener('click', function () {
                myToast.hide(); // Sembunyikan toast saat tombol close diklik
            });

            myToast.show(); // Tampilkan toast saat halaman dimuat
        });

    </script>
</body>

</html>
