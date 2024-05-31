<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Siswa | Eval</title>

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
                        <h1 class="m-0">Kegiatan Inti</h1>
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

                .jumbotron-scrollable {
                    max-height: calc(100vh - 80px); /* Sesuaikan nilai ketinggian dengan kebutuhan Anda */
                    overflow-y: auto;
                    border: 1px solid #ccc; /* Contoh gaya border, sesuaikan jika perlu */
                    padding: 10px; /* Contoh gaya padding, sesuaikan jika perlu */
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
                <p>Terima kasih atas pendapat anda. Namun jika anda masih bingung terhadap teks esai. Maka berikut adalah materi mengenai teks esai, silahkan baca agar anda dapat memahami materi ini dengan baik.</p>
                </div>
            </div>

            <hr>
                
            <div id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                aria-expanded="true" aria-controls="collapseOne">
                                Pengertian Esai
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <h2>Menurut Para Ahli</h2>
                            <ul>
                                <li>
                                    <strong>Parlindungan Pardede (2010)</strong>
                                    <p>Secara etimologis, kata esai berasal dari verba Prancis yang diadopsi dari kata Essayer, berarti mencoba, sedangkan dalam bahasa Inggris essay memiliki arti ‘upaya” atau “percobaan”. Berdasarkan penelusuran etimologis di atas, dapat dikatakan bahwa esai adalah sebuah upaya seorang penulis untuk mengungkapkan pikiran atau gagasannya dalam bahasa tertulis.</p>
                                </li>
                                <li>
                                    <strong>Rahayu (2007)</strong>
                                    <p>Esai adalah bentuk tulisan yang membahas sebuah permasalahan yang berawal dari penyajian masalah, sampai dengan pendapat pribadi penulis berdasarkan teori dan fakta di lapangan. Penyelesaian masalah dalam jenis tulisan ini memaparkan data dan informasi untuk diambil simpulan, dan unsur-unsur pembangunnya disusun secara urut, lengkap, dan utuh.</p>
                                </li>
                                <li>
                                    <strong>Wijayanti,dkk (2012)</strong>
                                    <p>Esai merupakan suatu karangan yang berbentuk tulisan, berisi lebih dari satu paragraf. Jenis tulisan ini berisi pendapat atau pandangan penulis mengenai suatu permasalahan tertentu yang bersifat subjektif dan argumentatif.</p>
                                </li>
                                <li>
                                    <strong>Kamus Besar Bahasa Indonesia (KBBI)</strong>
                                    <p>Esai adalah suatu karangan prosa yang membahas suatu masalah secara sepintas lalu dari sudut pandang pribadi penulis.</p>
                                </li>
                                <li>
                                    <strong>Soetomo</strong>
                                    <p>Esai adalah suatu uraian atau karangan pendek yang membahas mengenai permasalahan yang menarik perhatian untuk dipelajari atau diselidiki. Pada jenis tulisan ini, pengarang mengutarakan gagasan, pikiran, cita-cita, dan sikap mengenai permasalahan tersebut.</p>
                                </li>
                            </ul>
                            <hr>
                            <p>Berdasarkan pendapat para ahli di atas, esai adalah suatu karya terulis yang membahas mengenai suatu permasalah berdasarkan pandangan pribadi penulis. Secara umum, di dalam jenis tulisan ini menyajikan ide, argumen, ungkapan emosional, dan memancing suatu perdebatan atau diskusi pada para pembaca.</p>
                            <p>Esai adalah salah satu bentuk karya ilmiah. Penulis esai sangat dianjurkan mengemukakan pendapat, tetapi harus tetap memiliki alasan mengapa berpendapat seperti itu. Oleh karena itulah, pendapat atau argumen yang ada dalam esai biasanya adalah pendapat pribadi.</p>
                            <p>Esai merupakan sebuah tulisan yang terdiri atas beberapa paragraf yang membahas sebuah topik. Empat hal yang harus ada dalam esai adalah judul, pendahuluan, isi, dan simpulan. Faktor penting yang ada dalam esai antara lain analisis, interpretasi, dan refleksi. Karakter esai yang paling terlihat adalah unsur subjektivitas penulis.</p>
                            <p>Dalam teks esai, pendapat/tesis yang disampaikan adalah pandangan penulis terhadap objek atau fenomena yang disorotinya. Bagian ini memperlihatkan pokok permasalahan yang akan disampaikan oleh penulis esai. Selain itu, tesis bisa juga digunakan untuk menggiring pembaca agar mengetahui pokok esai kita.</p>
                            <p>Argumen yang disajikan berupa alasan yang logis yang subjektif. Pada bagian ini terdapat konteks. Konteks diartikan sebagai ruang lingkup tulisan secara eksplisit ataupun implisit. Konteks inilah yang membatasi pokok permasalahan agar fokus tidak keluar dari topik yang sedang dikaji. Selain terdapat konteks, pada bagian ini juga terdapat masalah. Masalah adalah kejadian atau peristiwa yang tidak sesuai dengan harapan atau keinginan. Sebuah karangan esai yang baik akan mengandung masalah yang aktual sehingga dapat memberikan sesuatu yang baru ke pembaca. Selain konteks dan masalah, bagian ini pun memperlihatkan adanya sebuah solusi. Solusi adalah usaha penulis untuk menyelesaikan masalah yang ditulis dalam esai karyanya. Penulis esai ingin meyakinkan pembaca agar ide dan gagasan yang dia sampaikan dapat menyelesaikan masalah. Selain itu, penulis juga ingin mengajak pembaca melaksanakan solusi yang disampaikan sehingga masalah dapat terpecahkan dan selesai. Penegasan ulang dalam esai dapat berupa ringkasan atau pengulangan kembali. Ringkasan dari pokok masalah dan solusi yang telah disampaikan. Akan lebih baik jika penegasan ulang ditulis dalam 3–5 kalimat yang menggambarkan pendapat kalian tentang topik yang ditulis. Namun, jangan tulis kembali apa yang sudah ditulis sebelumnya karena akan membuat pembaca bosan.</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                                aria-expanded="false" aria-controls="collapseTwo">
                                Tujuan Penulisan Esai
                            </button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            <ul>
                                <li>
                                    <strong>1.	Melakukan eksplorasi atas respon individu terhadap suatu peristiwa, keadaan, ataupun ide dan gagasan tertentu (personal essay)</strong>
                                </li>
                                <li>
                                    <strong>2.	Mengaja pembaca untuk meyakini opini penulis dan dapat juga untuk meyakinkan pembaca agar melakukan suatu aksi tertentu (persuasive essay).</strong>
                                </li>
                                <li>
                                    <strong>3.	Menjelaskan tentang bagaimana melakukan sesuatu hal ataupun menunjukkan bagaimana sesuatu bekerja (how to essay)</strong>
                                </li>
                                <li>
                                    <strong>4.	Membandingkan dan mengkontraskan dua atau lebih ide, peristiwa, literatur atau hal lainnya (compare and contrast essay)</strong>
                                </li>
                                <li>
                                    <strong>5.	Menunjukkan tentang bagaimana suatu sebab akan menimbulkan dampak tertentu (cause and effect essay)</strong>
                                </li>
                                <li>
                                    <strong>6.	Mendeskripsikan suatu permasalahan dan menawarkan solusinya (problem and solution essay)</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                                aria-expanded="false" aria-controls="collapseThree">
                                Ciri-ciri Esai
                            </button>
                        </h5>
                    </div>  
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            <h5>Suatu karya atau karangan bisa dikatakan sebagai sebuah esai jika memiliki ciri-ciri pada umumnya seperti di bawah ini.</h5>
                            <ul>
                                <li>
                                    <strong>Singkat</strong>
                                    <p>Ciri-ciri yang pertama yaitu singkat, maksudnya adalah isinya tidak panjang dan dapat dibaca dalam waktu yang singkat atau tidak banyak membutuhkan banyak waktu untuk membacanya.</p>
                                </li>
                                <li>
                                    <strong>Personal</strong>
                                    <p>Ciri-ciri yang kedua adalah esai bersifat personal, maksudnya adalah pada jenis tulisan ini terdapat gagasan penulis mengenai sikap, pandangan, dan argumentasi secara subjektif yang dipaparkan dalam jenis tulisan ini.</p>
                                </li>
                                <li>
                                    <strong>Gaya pembeda</strong>
                                    <p>Ciri-ciri yang ketiga adalah adanya gaya pembeda, maksudnya adalah setiap esai akan berbeda dengan jenis tulisan ini yang lain berdasarkan gaya pembeda dari penulisnya. Selain itu, setiap penulis akan berusaha membedakan tulisannya dengan penulis yang lain dengan ciri khasnya masing-masing, bisa berupa gaya bahasanya atau pilihan katanya.</p>
                                </li>
                                <li>
                                    <strong>Kebutuhan penulisan</strong>
                                    <p>Ciri-ciri keempat adalah menyesuaikan kebutuhan penulisan, maksudnya adalah suatu esai tersebut akan memenuhi persyaratan penulisan, yaitu dimulai dari pendahuluan dan diakhiri dengan simpulan dan penutup secara logis dan runtut.</p>
                                </li>
                                <li>
                                    <strong>Tidak selalu utuh</strong>
                                    <p>Ciri-ciri yang kelima adalah tidak selalu utuh, maksudnya adalah pada jenis tulisan ini tersebut hanya membahas poin-poin yang penting saja atau pembahasan detail mengenai suatu hal tertentu, sehingga tidak semua aspek dibahas dalam sebuah jenis tulisan ini.</p>
                                </li>
                                <li>
                                    <strong>Berbentuk Prosa</strong>
                                    <p>Ciri-ciri yang keenam adalah berbentuk prosa, maksudnya adalah esai atau karangan tersebut bersifat naratif dalam penjelasannya, sehingga dalam jenis tulisan iniitu penjelasannya dengan narasi-narasi atau berkaitan dengan pemberian informasi tertentu yang diungkapkan oleh penulis.</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingFour">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
                                aria-expanded="false" aria-controls="collapseFour">
                                Tipe Esai
                            </button>
                        </h5>
                    </div>  
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                        <div class="card-body">
                            <ul>
                                <li>
                                    <strong>Esai personal/pribadi</strong>
                                    <p>Esai pribadi adalah esai yang ditulis berdasarkan pribadi penulis, sehingga banyak menceritakan pandangan, sikap, dan pengalaman penulis secara langsung. Jenis tulisan ini hampir mirip dengan jenis tulisan ini cukilan watak, yang membedakan adalah siapa yang dibahas dalam jenis tulisan ini.</p>
                                </li>
                                <li>
                                    <strong>Esai deskriptif</strong>
                                    <p>Esai deskriptif adalah esai yang membahas mengenai deskripsi suatu subjek atau suatu hal dengan menggunakan lima indera. Maksudnya adalah pada jenis tulisan ini ini penulis mendeskripsikan suatu topik secara lengkap. Poin terpenting dalam jenis tulisan ini adalah tergantung pada detail-detail dan paragraf yang disusun oleh penulis, sehingga membuat pembaca lebih mudah untuk memahaminya.</p>
                                </li>
                                <li>
                                    <strong>Esai naratif</strong>
                                    <p>Esai naratif adalah</p>
                                </li>
                                <li>
                                    <strong>Esai persuasif/argumentasi</strong>
                                    <p>Esai argumentatif berfungsi meyakinkan para pembaca tentang suatu topik. Adanya argumen yang telah disusun dalam esai ini bertujuan agar pembaca dapat  menerima pandangan, sikap, dan kepercayaan penulis terhadap suatu isu yang dibahas. </p>
                                </li>
                                <li>
                                    <strong>Esai reflektif</strong>
                                    <p>Esai reflektif adalah esai yang ditulis dengan penuh kesungguhan dari penulis dan diutarakan dengan bahasa yang formal, penuh hati-hati, dan amat mendalam, sehingga jenis tulisan ini tersebut dapat dikatakan sebagai jenis tulisan yang serius. Jenis tulisan ini biasanya berkaitan dengan topik-topik tentang politik, pendidikan, dan sebagainya. Jenis tulisan ini ini ditujukan pada para akademisi atau cendekiawan yang mempunyai latar belakang dan bidang yang berkaitan.</p>
                                </li>
                                <li>
                                    <strong>Esai kritik</strong>
                                    <p>Esai kritik adalah esai yang membahas mengenai suatu hal berkaitan dengan karya, misalnya pada karya sastra, seni, musik dan sebagainya. Pada jenis tulisan ini berfokus pada tujuan penulis untuk membuat masyarakat sadar dan membuka mata dengan adanya suatu karya tersebut, sehingga penting untuk dipelajari untuk masyarakat umum. Salah satu bentuk jenis tulisan ini kritik dalam kesusastraan disebut dengan kritik sastra.</p>
                                </li>
                                <li>
                                    <strong>Esai cukilan watak</strong>
                                    <p>
                                    Esai cukilan watak adalah esai yang membahas mengenai cerita atau pengalam seseorang yang dicurahkan pada pembaca. Jenis tulisan inisendiri memiliki tujuan untuk menayangkan atau menyajikan kepribadian atau sikap seseorang supaya dapat dicontoh atau dapat diambil pelajaran atau manfaatnya. Pada jenis tulisan ini cukilan watak ini, penulis menceritakan seseorang, bukan dirinya sendiri, sehingga berbeda dengan jenis tulisan ini.
                                    </p>
                                </li>
                                <li>
                                    <strong>Esai ekspositoris</strong>
                                    <p>Esai ekspositoris adalah</p>
                                </li>
                                <li>
                                    <strong>Esai dokumentatif</strong>
                                    <p></p>
                                </li>
                                <li>
                                    <strong>Esai tajuk</strong>
                                    <p>Esai tajuk adalah esai yang membahas tentang suatu topik yang sedang hangat terjadi di masyarakat. Jenis tulisan ini dapat ditemukan pada surat kabar atau majalah. Selain membahas topik yang hangat, jenis tulisan ini bertujuan untuk mengungkapkan opini dari surat kabar tersebut pada pembaca, sehingga dapat membentuk opini pembaca. Pada jenis tulisan ini di surat kabar atau majalah, tidak selalu harus menyertakan nama dalam penulisannya.</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingFive">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive"
                                aria-expanded="false" aria-controls="collapseFive">
                                Kaidah Kebahasaan
                            </button>
                        </h5>
                    </div>  
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                        <div class="card-body">
                            <ul>
                            <li>
                                <strong>Menggunakan pernyataan-pernyataan persuasif.</strong>
                                <p>Contoh: a) Oleh karena itu, berhadapan dengan novel model ini, kita (pembaca) mesti memulainya tanpa prasangka dan menghindar dari jejalan pikiran yang berpretensi pada sejumlah horison harapan. Bukankah banyak pula novel kanon yang peristiwa-peristiwa awalnya dibangun melalui narasi yang lambat? b) Rangkaian kalimat panjang yang melelahkan itu, diolah dalam kemasan yang lain sebagai alat untuk membangun peristiwa. Wujudlah rangkai peristiwa dalam kalimat-kalimat yang tidak menjalar jauh berkepanjangan ke sana ke mari, tetapi cukup dengan penghadiran dua sampai empat peristiwa berikut berbagai macam latarnya.</p>
                            </li>
                            <li>
                                <strong>Menggunakan pernyataan yang menyatakan fakta untuk mendukung atau membuktikan kebenaran argumentasi penulis/penuturnya. Mungkin pula diperkuat oleh pendapat ahli yang dikutipnya ataupun pernyataan-pernyataan pendukung lainnya yang bersifat menguatkan.</strong>
                                <p></p>
                            </li>
                            <li>
                                <strong>Menggunakan pernyataan atau ungkapan yang bersifat menilai atau mengomentari.</strong>
                                <p>Contoh : Pemanfaatan –atau lebih tepat eksplorasi–setiap kata dan kalimat tampak begitu cermat dalam usahanya merangkai setiap peristiwa. Eka seperti hendak menunjukkan dirinya sebagai ”eksperimental” yang sukses bukan lantaran faktor kebetulan. Ada kesungguhan yang luar biasa dalam menata setiap peristiwa dan kemudian mengelindankannya menjadi struktur cerita. Di balik itu, tampak pula adanya semacam kekhawatiran untuk tidak melakukan kelalaian yang tidak perlu.</p>
                            </li>
                            <li>
                                <strong>Menggunakan istilah teknis berkaitan dengan topik yang dibahasnya.</strong>
                                <p>Topik contoh teks kritik adalah novel, dan istilah-istilah yang digunakan juga berkaitan dengan novel, misalnya narator, antologi, eksplorasi, eksperimen, mitos, biografi , dan alur. Topik pada teks esai adalah film, terutama film ”Batman”. Istilah-istilah film yang digunakan antara lain orisinalitas, trilog Nolan, planetary, remote control, alegori, dan candide.</p>
                            </li>
                            <li>
                                <strong>Menggunakan kata kerja mental.</strong>
                                <p>Hal ini terkait dengan karakteristik teks eksposisi yang bersifat argumentatif dan bertujuan mengemukakan sejumlah pendapat. Kata kerja yang dimaksud, antara lain, memendam, mengandalkan, mengidentifikasi, mengingatkan, menegaskan, dan menentukan. Teks kritik sastra dan esai juga memiliki karakter khas yaitu gaya bahasa berupa pilihan kata, struktur kalimat, dan gaya penulisannya merupakan hal yang berkaitan erat dengan penulis kritik sastra dan esai secara pribadi. Setiap penulis kritik sastra dan esai, memiliki gaya bahasa yang khas yang membedakannya dengan penulis kritik sastra dan esai yang lain. Sebagai contoh, esai yang ditulis Gunawan Muhammad pasti berbeda dengan gaya bahasa esai yang ditulis oleh A.S. Laksana, Bakdi Sumanto, dan Umar Kayam. Bahkan bagi penikmat esai, ketika membaca satu paragraf teks esai tanpa nama penulisnya, ia akan dapat menebak siapa penulisnya.</p>
                            </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingSix">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix"
                                aria-expanded="false" aria-controls="collapseSix">
                                Bahasa dalam Esai
                            </button>
                        </h5>
                    </div>  
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                        <div class="card-body">
                            <h5>Esai ditulis dengan memperhatikan tata bahasa. Bahasa-bahasa yang digunakan pada jenis tulisan ini secara umum hampir sama dengan penulisan karya ilmiah. Penjelasannya seperti di bawah ini.</h5>
                            <ul>
                                <li>
                                    <strong>
                                    Logis
                                    </strong>
                                    <p>
                                    Bahasa dalam jenis tulisan ini haruslah logis, maksudnya adalah kalimat atau paragraf yang ada pada jenis tulisan ini tersebut dijelaskan dan dapat diterima oleh akal atau rasional, sehingga pembaca tidak kesulitan dalam memahaminya. 
                                    </p>
                                </li>
                                <li>
                                    <strong>
                                    Baku
                                    </strong>
                                    <p>
                                    Bahasa dalam jenis tulisan ini harus baku, maksudnya adalah bahasa yang digunakan dalam jenis tulisan ini harus memperhatikan PUEBI (Pedoman Umum Ejaan Bahasa Indonesia).
                                    </p>
                                </li>
                                <li>
                                    <strong>
                                    Runtut
                                    </strong>
                                    <p>
                                    Bahasa dalam jenis tulisan ini harus runtut, maksudnya adalah kalimat atau paragraf pada jenis tulisan ini tersebut harus disusun secara runtut dan terstruktur, sehingga alur pikiran pembaca tidak rancu dalam memahami tulisan tersebut.
                                    </p>
                                </li>
                                <li>
                                    <strong>
                                        Ringkas
                                    </strong>
                                    <p>
                                    Bahasa dalam jenis tulisan ini harus ringkas, maksudnya kalimat atau paragraf dalam jenis tulisan ini tersebut disesuaikan dengan kebutuhan penulis, agar tidak berlebihan atau mubazir.
                                    </p>
                                </li>
                                <li>
                                    <strong>
                                    Denotatif
                                    </strong>
                                    <p>
                                    Bahasa dalam jenis tulisan ini itu denotatif, maksudnya adalah pilihan kata dalam jenis tulisan ini tersebut menunjukkan makna yang sesungguhnya, tidak bermakna konotasi, sehingga pembaca langsung bisa memahami tulisan tersebut dengan cermat.
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingSeven">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSeven"
                                aria-expanded="false" aria-controls="collapseSeven">
                                Langkah Pembuatan Esai
                            </button>
                        </h5>
                    </div>  
                    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                        <div class="card-body">
                            <h5>
                            Ada beberapa langkah yang wajib diperhatikan dalam membuat sebuah jenis tulisan ini. Langkah-langkahnya adalah sebagai berikut.
                            </h5>
                            <ul>
                                <li>
                                    <strong>Menentukan tema atau topik bahasan</strong>
                                    <p>Pertama, yaitu menentukan topik bahasan atau tema yang khusus supaya pembahasan lebih spesifik, menarik, dan mendalam. </p>
                                </li>
                                <li>
                                    <strong>Membuat kerangka atau garis besar ide (Outline)</strong>
                                    <p>Kedua, yaitu membuat kerangka atau poin-poin yang akan ditulis dengan memperhatikan topik yang akan dibahas. Kerangka ini nantinya akan mendasari pada jenis tulisan ini, sehingga poin-poin dalam kerangka ini harus sangat diperhatikan oleh penulis.</p>
                                </li>
                                <li>
                                    <strong>Menentukan atau mengumpulkan materi dan referensi</strong>
                                    <p>Ketiga, yaitu menentukan materi apa saja yang akan dimasukkan pada jenis tulisan ini, sehingga pembahasan tetap pada topik bahasan. Lalu, mengambil referensi-referensi yang valid supaya dapat mendukung argumen supaya dapat membuat opini penulis menjadi kuat.</p>
                                </li>
                                <li>
                                    <strong>Menguraikan isi</strong>
                                    <p>Keempat, menguraikan isi. Menguraikan isi materi maksudnya adalah menjelaskan atau menjabarkan materi-materi topik bahasan pada kerangka (outline) dengan kalimat sendiri, sehingga akan muncul opini dalam jenis tulisan ini tersebut.  </p>
                                </li>
                                <li>
                                    <strong>Menulis pendahuluan</strong>
                                    <p>Kelima yaitu menuliskan pendahuluan. Pada pendahuluan haruslah mengutarakan atau memaparkan alasan yang jelas mengenai topik tersebut kenapa penting untuk dibahas dan latar belakang topik tersebut seperti apa, supaya dapat membangun jenis tulisan ini tersebut menjadi lebih matang.</p>
                                </li>
                                <li>
                                    <strong>Menuliskan rangkuman atau simpulan</strong>
                                    <p>Keenam, menulis rangkuman atau simpulan. Simpulan pada esai tersebut haruslah berkaitan dengan topik-topik yang dibahas di awal, sehingga pembaca dapat menangkap maksud dan opini penulis tersebut secara jelas.</p>
                                </li>
                                <li>
                                    <strong>Sunting Ulang Essay yang Sudah Ditulis</strong>
                                    <p>Jika semua bagian essay sudah kamu tulis, tinggalkan tulisan tersebut selama beberapa jam atau beberapa hari. Lupakan semua argumen, poin, dan informasi yang sudah kamu tulis. Setelah benar-benar lupa, baca ulang essay tersebut dari awal sampai akhir dengan cermat.</p>
                                </li>
                            </ul>
                            <p>Dengan cara ini, kamu akan bisa menilai kualitas essay tersebut secara objektif dan menyeluruh. Kamu mungkin akan menemukan beberapa kalimat yang kurang pas, tidak menarik, atau kurang lengkap. Perbaiki semua kekurangan yang kamu temukan saat membaca ulang agar kamu mendapatkan hasil yang berkualitas baik.</p>
                            <p>Untuk membantu kamu membaca essay secara cermat, berikut ini ada beberapa pertanyaan yang bisa kamu tanyakan pada diri sendiri:</p>
                            <ul>
                                <li>
                                    <strong>Apakah essay yang saya tulis sudah lengkap semua bagian-bagiannya?</strong>
                                </li>
                                <li>
                                    <strong>Apakah setiap paragraf dan argumen berhubungan satu sama lain dan relevan?</strong>
                                </li>
                                <li>
                                    <strong>Apakah argumen-argumen saya seimbang?</strong>
                                </li>
                                <li>
                                    <strong>Apakah contoh dan data yang ada sudah relevan dengan topik dan gagasan utama?</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="button2">
                    <a href="/fordis" class="btn btn-primary btn-xs btn-plus" id="tambah"
                        style="align-items: center; display: row;   ">
                        <i class="fa fa-play"></i>
                            <p style="font-size:18px;">Mulai Diskusi</p>
                    </a>
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
