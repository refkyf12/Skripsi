  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ asset('AdminLTE-3.2.0/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Dashboard Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('AdminLTE-3.2.0/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{\Auth::user()->name}}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
<nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header" style="font-weight: bold; font-size: 20px;">MENU</li>
          <li class="nav-item">
            <a href="/dashboard-admin" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Siswa
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/materi" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Materi
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/quiz" class="nav-link">
              <i class="nav-icon fa fa-pen"></i>
              <p>
                Quiz
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/soal" class="nav-link">
              <i class="nav-icon fa fa-question"></i>
              <p>
                Soal
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/jawaban" class="nav-link">
              <i class="nav-icon fa fa-exclamation"></i>
              <p>
                Jawaban
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/logout" class="nav-link">
              <i class="nav-icon fa fa-power-off"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>