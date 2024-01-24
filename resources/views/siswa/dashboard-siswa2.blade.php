<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Siswa | Pembelajaran</title>

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
                        <h1 class="m-0">Pembelajaran</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <style>
            .image-container {
                width: 100px;
                /* Atur lebar gambar sesuai kebutuhan */
                height: 100px;
                /* Atur tinggi gambar sesuai kebutuhan */
                overflow: hidden;
            }

            .image-container img {
                width: 100%;
                /* Gunakan lebar 100% untuk mengisi kontainer */
                height: auto;
                /* Biarkan tinggi otomatis sesuai proporsi gambar */
            }

            .card-header {
                min-height: 150px;
                /* Sesuaikan ketinggian card header agar konten berada di tengah */
            }

            .card-title {
                line-height: 1.5;
                /* Sesuaikan dengan kebutuhan */
                height: 3rem;
                /* Sesuaikan dengan kebutuhan */
            }

        </style>
        <div class="modal fade" id="modalReminder" tabindex="-1" role="dialog" aria-labelledby="modalReminderLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalReminderLabel">Pemberitahuan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Anda belum menyelesaikan kuis.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
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
                    Halo! Selamat datang ke modul Karya Tulis Ilmiah. Dalam modul ini, kita akan belajar tentang
                    bagaimana menulis karya tulis ilmiah yang berkualitas. Tujuan dari modul ini adalah membantu Anda
                    memahami langkah-langkah penting dalam menulis karya tulis ilmiah sehingga Anda dapat menyusunnya
                    dengan lebih baik.

                </div>
            </div>
            @foreach($data as $e=>$dt)
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card text-center">
                            <div class="card-header d-flex flex-column align-items-center justify-content-center">
                                <div class="image-container" style="border: 2px solid #000;">
                                    <img class="card-img-top" src="{{ asset('AdminLTE-3.2.0/dist/img/bahasa.jpg') }}"
                                        alt="Card image cap">
                                </div>
                                <strong style="font-size: 30px;">{{ $dt->nama_quiz }}</strong>
                            </div>
                            <div class="card-body">
                                <h5 class="card-text">Jumlah Soal : {{$dt->jumlah_soal}}</h5>
                                <p class="card-text">{{ $dt->created_at }}</p>
                                <a href="/read-materi/{{$dt->id}}" class="btn btn-primary btn-xs btn-plus" id="tambah">
                                    Lihat Detail
                                </a>
                                <a href="/eval/{{$user->id}}" class="btn btn-success btn-xs btn-plus" id="tambah">
                                    Lihat Evaluasi
                                </a>
                            </div>
                            <div class="card-footer text-muted">
                                {{$dt->updated_at}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            @endforeach
            <!-- <div class="table-responsive">
                <table class="table table-hover myTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Quiz</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data as $e=>$dt)
                        <tr>
                            <td>{{ $e+1 }}</td>
                            <td>{{ $dt->nama_quiz }}</td>
                            <td>
                                <div style="width:90px">
                                    <a href="/read-materi/{{$dt ->id}}" class="btn btn-warning btn-xs btn-plus"
                                        id="tambah"><i class="fa fa-play" style="width: 30px; height: auto;"></i></a>
                                </div>
                            </td>

                        </tr>
                        @endforeach
                    </tbody>
                </table>
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

    <!-- ./wrapper -->

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

    </script>
</body>

</html>
