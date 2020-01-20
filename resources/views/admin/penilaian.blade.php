@extends('admin.layout')

@section('header')
    <!-- Ionicons -->
@endsection

@section('section')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Penilaian</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Penilaian</li>
                </ol>
            </div>
            </div>
        </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
        <div class="container-fluid">
            <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Penilaian Peneliti</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form method="POST" action="/admin/penilaian/store">
                        {{ csrf_field() }}
                        <div class="card-body">
                            @foreach($pointPenilaianPegawai as $ppp)
                                <div class="form-group">
                                    <label for="exampleInputEmail1">{{ $ppp->point_penilaian }}</label>
                                    <input type="hidden" name="penerimaNilai" value="{{ $penerimaNilai }}">
                                    <input type="hidden" name="pemberiNilai" value="{{ $value }}">
                                    <div class="form-group">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="defaultInline{{ $ppp->point_penilaian }}1" name="{{ preg_replace('/\s+/', '_', $ppp->point_penilaian) }}" value="1">
                                            <label style="font-weight: normal !important;" class="custom-control-label" for="defaultInline{{ $ppp->point_penilaian }}1">Tidak Baik</label>
                                        </div>

                                        <!-- Default inline 2-->
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="defaultInline{{ $ppp->point_penilaian }}2" name="{{ preg_replace('/\s+/', '_', $ppp->point_penilaian) }}" value="2">
                                            <label style="font-weight: normal !important;" class="custom-control-label" for="defaultInline{{ $ppp->point_penilaian }}2">Kurang Baik</label>
                                        </div>

                                        <!-- Default inline 3-->
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="defaultInline{{ $ppp->point_penilaian }}3" name="{{ preg_replace('/\s+/', '_', $ppp->point_penilaian) }}" value="3">
                                            <label style="font-weight: normal !important;" class="custom-control-label" for="defaultInline{{ $ppp->point_penilaian }}3">Baik</label>
                                        </div>

                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="defaultInline{{ $ppp->point_penilaian }}4" name="{{ preg_replace('/\s+/', '_', $ppp->point_penilaian) }}" value="4">
                                            <label style="font-weight: normal !important;" class="custom-control-label" for="defaultInline{{ $ppp->point_penilaian }}4">Sangat Baik</label>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <div class="form-group">
                                <label for="exampleInputEmail1">Catatan</label>
                                <textarea class="form-control" rows="3" placeholder="Enter ..."  name="Catatan" required></textarea>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
                <!-- /.card -->

            </div>
            <!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-6">
                <div class="card card-primary card-outline">
                @foreach($pegawai as $p)
                    <div class="card-body box-profile">
                        <div class="text-center">
                            @if($p->img === NULL)
                                <img src="{{ asset('dist/img/anonymous.png') }}" alt="" class="img-circle img-fluid profile-user-img">
                            @else
                                <img src="{{ asset('dist/img/$p->img') }}" alt="" class="img-circle img-fluid">   
                            @endif
                        </div>
                        <h3 class="profile-username text-center">{{ $p->nama }}</h3>
                        <p class="text-muted text-center">{{ $p->jabatan }}</p>
                        <ul class="list-group list-group-unbordered mb-3">
                            @foreach($peranPenelitian as $peran)
                                @php
                                    $hitung=0;
                                    foreach($timPenelitian as $tp){
                                        if($tp->peran == $peran->peran){
                                            $hitung++;
                                        }
                                    }
                                @endphp
                                <li class="list-group-item">
                                    {{ $peran->peran }} <a class="float-right">{{ $hitung }}</a>
                                </li>
                            @endforeach
                            <li class="list-group-item">
                                <b>Total Penelitian</b> <a class="float-right">{{ count($timPenelitian) }}</a>
                            </li>
                        </ul>

                        <!-- <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a> -->
                    </div>
                    <!-- /.card-body -->
                @endforeach
                </div>
                <!-- /.card -->
            </div>
            <!--/.col (right) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection

@section('footer')

@endsection