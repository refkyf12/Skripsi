  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4" style="position: fixed;">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ asset('AdminLTE-3.2.0/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Dashboard Siswa</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('AdminLTE-3.2.0/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="/dashboard-siswa" class="d-block">{{\Auth::user()->name}}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
<nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header" style="font-weight: bold; font-size: 20px;">MENU</li>
          <li class="nav-item">
            <a href="/logout" class="nav-link">
              <i class="nav-icon fa fa-power-off"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/fordis" class="nav-link">
              <i class="nav-icon fa fa-power-off"></i>
              <p>
                Fordis
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>