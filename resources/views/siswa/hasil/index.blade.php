<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Siswa | Skor</title>

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
                        <h1 class="m-0">Skor</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Skor</li>
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
                .button {
                    margin-top: 20px;
                    align: center;
                    /* Contoh gaya padding, sesuaikan jika perlu */
                }

                .marks {
                    text-align: center;
                    margin: 0 auto;
                    margin-top: 20px;
                    /* Menambah jarak dari atas */
                }

                .marks h1 {
                    font-size: 24px;
                    margin: 0;
                    /* Menghilangkan margin default */
                }

            </style>

            <div class="toast align-items-center text-white bg-gray border-0" role="alert" aria-live="assertive"
                aria-atomic="true" id="myToast" data-bs-autohide="false"
                style="position: absolute; top: 0; right: 0; width: 400px; z-index: 9999;">
                <div class="toast-header">
                    <div class="d-flex align-items-center">
                        <img src="{{ asset('AdminLTE-3.2.0/dist/img/woman.png') }}" alt="AdminLTE Logo"
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
                    @if(session('pa_response'))
                    <h4 class="text-center" id="pa-text">{{ session('pa_response') }}</h4>
                    @endif
                </div>
            </div>

            <hr>

            <div class="jumbotron">
                <h1 class="display-4">Hello!</h1>
                <p class="lead">Selamat atas dedikasi dan kerja kerasmu dalam mengerjakan kuis! Pekerjaanmu sungguh luar biasa, semoga hasilnya memuaskan.</p>
                <hr class="my-4">
                <p>Untuk melihat hasil evaluasi kuismu. Silahkan klik button di bawah ini.
                </p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="/eval/{{$data->id}}" role="button">Hasil Evaluasi</a>
                </p>
            </div>

            <div class="score-container">
                <h2>Skor Anda:</h2>
                <div class="score">
                    <span>{{ $data->poin }}</span>
                </div>
            </div>

            <style>
                /* Gaya untuk Score Container */
                .score-container {
                    text-align: center;
                    margin-top: 20px;
                }

                /* Gaya untuk Skor */
                .score {
                    font-size: 48px;
                    background-color: #f5f5f5;
                    border: 2px solid #ddd;
                    padding: 10px 20px;
                    border-radius: 10px;
                    display: inline-block;
                }

                .score span {
                    font-weight: bold;
                    color: #333;
                }

            </style>
        </div>

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
