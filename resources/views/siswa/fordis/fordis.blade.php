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
            /* Add your CSS styles here */
            /* Style for posts and comments */
            .post {
                margin-bottom: 20px;
                border: 1px solid #ccc;
                padding: 10px;
            }

            .comment {
                margin-left: 20px;
                border: 1px solid #eee;
                padding: 5px;
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
                    Halo! Selamat datang pada bagian Forum Diskusi. Forum ini bertujuan bertujuan untuk meningkatkan pemahaman anda terhadap teks esai. Dengan berpartisipasi aktif, Anda dapat berbagi ide, memahami sudut pandang berbeda, dan saling mendukung untuk mengatasi kesulitan pemahaman. Tujuannya bukan hanya pertukaran informasi, tetapi juga kolaborasi yang memperkaya proses pembelajaran melalui dialog dan refleksi bersama.
                </div>
            </div>
            
            <div style="display: flex-start; justify-content: center;">

                <button type="button" class="btn btn-outline-primary mt-3 mb-3" id="addPostButton" data-toggle="modal"
                        data-target="#myModal" style="margin-left: auto;">
                    <i class="fa fa-plus" style="margin-right: 5px;"></i>
                    Add Post
                </button>

                <div class="button">
                    <a href="/start-quiz/{{ $materi[0]->quiz_id }}/{{ $soal[0]->id }}"
                        class="btn btn-outline-primary mt-3 mb-3" id="tambah">
                        <i class="fa fa-play"></i>
                        <p style="font-size:18px;">Start Quiz</p>
                    </a>
                </div>

            </div>
            
            <hr>
            @foreach($data as $e => $dt)
            <div class="card mb-3">
                <div class="card-body">
                    <!-- Post Section -->
                    <h2 class="card-text"><strong>{{ $dt->judul_konten }}</strong></h2>
                    <h7>Deskripsi : </h7>
                    <p class="card-text">{{ $dt->content }}</p>
                    <a href="{{ asset('storage/' . $dt->path_pdf) }}" target="_blank">Link ke PDF</a>
                    <p class="card-text"><small class="text-muted">Posted by: {{ $dt->user->name }} | Date: {{$dt->created_at}}</small></p>
                    <div class="pdf-viewer">
                        <canvas id="pdfViewer_{{ $e }}"></canvas>
                    </div>

                    <!-- Comments Section for the Post -->
                    @foreach($dt->comment as $comms)
                    <div class="card mb-2">
                        <div class="card-body">
                            <p class="card-text"><small class="text-muted">Comment by {{ $comms->user->name }} | Date:
                                    {{ $dt->created_at }}</small></p>
                            <p class="card-text">{{ $comms->content }}</p>
                        </div>
                    </div>
                    @endforeach

                    <div class="form-group">
                        <form action="/comments" method="POST">
                            @csrf
                            <input type="hidden" name="id_post" value="{{ $dt->id }}">
                            <label for="commentInput">Add Comments</label>
                            <input type="text" class="form-control mb-2" id="commentInput" placeholder="Enter comments"
                                name="komen">
                            <button type="submit" class="btn btn-outline-primary">Add Comment</button>
                        </form>
                    </div>
                </div>
            </div>
            @endforeach

            <div class="modal" tabindex="-1" role="dialog" id="myModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Tambah Postingan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="/post" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <div class="form-group">
                                        <label for="judul">Judul</label>
                                        <input type="text" class="form-control" id="judul" placeholder="Masukkan Judul"
                                            name="judul_konten">
                                    </div>

                                    <div class="form-group">
                                        <label for="pdf">Upload PDF</label>
                                        <input type="file" name="pdf" accept=".pdf" id="pdf">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">Content</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                                            name="content"></textarea>
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save changes</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                        </form>
                    </div>
                </div>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.min.js"></script>

    <!-- REQUIRED SCRIPTS -->
    @foreach($data as $e => $dt)
    <script>
        const pdfUrl_{{ $e }} = '{{ asset('storage/' . $dt->path_pdf) }}';

        const canvas_{{ $e }} = document.getElementById('pdfViewer_{{ $e }}');
        const context_{{ $e }} = canvas_{{ $e }}.getContext('2d');

        pdfjsLib.getDocument(pdfUrl_{{ $e }}).promise.then(pdf => {
        pdf.getPage(1).then(page => {
            const viewport = page.getViewport({ scale: 0.7 });
            canvas_{{ $e }}.width = viewport.width;
            canvas_{{ $e }}.height = viewport.height;

            const renderContext = {
                canvasContext: context_{{ $e }},
                viewport: viewport
            };
            page.render(renderContext);
        }).catch(error => {
            console.error('Error rendering page:', error);
            // Lakukan sesuatu di sini jika terjadi kesalahan saat merender halaman PDF
        });
    }).catch(error => {
        console.error('Error loading PDF:', error);
        // Lakukan sesuatu di sini jika terjadi kesalahan saat memuat file PDF
        });
    </script>
    @endforeach
    <script>
        $('#myModal').on('shown.bs.modal', function () {
            $('#addPostButton').trigger('focus')
        })
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
