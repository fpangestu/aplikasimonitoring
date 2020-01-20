@extends('admin.layout')

@section('header')
  <!-- DATATABLES-->
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection

@section('section')
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dokumen Kegiatan</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">DataTable with minimal features & hover style</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                    <tr style="vertical-align:middle" align=center>
                        <th>NAMA KEGIATAN</th>
                        @foreach($dokumen as $d)
                            <th>{{ $d->nama_dokumen }}</th>
                        @endforeach
                    </tr>
                </thead>
                <tbody>
                    @foreach($agenda_kegiatan as $agenda)
                        <tr>
                            <th>{{ $agenda->nama_kegiatan }}</th>
                            @foreach($dokumen as $d)
                              @foreach($dokumen_kegiatan as $dokumenkegiatan)
                                @if($dokumenkegiatan->id_agenda_kegiatan === $agenda->id_agenda_kegiatan)
                                  @if($dokumenkegiatan->id_dokumen === $d->id_dokumen)
                                    @php
                                      $alias = 1
                                    @endphp
                                    @break
                                  @endif
                                @endif
                              @endforeach
                              @if($alias === 1)
                                <td>1</td>
                              @else
                                <td>0</td>
                              @endif
                              @php
                                $alias = 0
                              @endphp
                            @endforeach
                        </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th>Nama Kegiatan</th>
                        @foreach($dokumen as $d)
                            <th>{{ $d->nama_dokumen }}</th>
                        @endforeach
                    </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
@endsection

@section('footer')
  <!-- DataTables -->
  <script src="{{ asset('plugins/datatables/jquery.dataTables.js') }}"></script>
  <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.js') }}"></script>

  <!-- page script -->
  <script>
    $(function () {
      $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": true,
        "ordering": false,
        "info": true,
        "autoWidth": false,
        "scrollX": true,
      });
    });
  </script>
@endsection