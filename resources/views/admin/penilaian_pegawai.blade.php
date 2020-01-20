@extends('admin.layout')

@section('header')
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
@endsection

@section('section')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Pegawai</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Pegawai</li>
                </ol>
            </div>
            </div>
        </div><!-- /.container-fluid -->
        </section> 

        <!-- Main content -->
        <section class="content">

        <!-- Default box -->
        <div class="card card-solid">
            <div class="card-body pb-0">
                <div class="row d-flex align-items-stretch">
                    @foreach($pegawai as $p)
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0">
                                    Puslitbang Aptika &
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-5 text-center">
                                            @if($p->img === NULL)
                                                <img src="{{ asset('dist/img/anonymous.png') }}" alt="" class="img-circle img-fluid">
                                            @else
                                                <img src="{{ asset('dist/img/$p->img') }}" alt="" class="img-circle img-fluid">   
                                            @endif
                                        </div>
                                        <div class="col-7">
                                            <h2 class="lead"><b>{{ $p->nama }}</b></h2>
                                            <p class="text-muted text-sm"><b>{{ $p->jabatan }}</b></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        @if($value === '202001010120200101')
                                            @foreach($pointPenilaianPegawai as $ppp)
                                                    <div class="progress-group">
                                                        <span class="progress-text">{{ $ppp->point_penilaian }}</span>
                                                        @php
                                                            $nilai=0;
                                                            $responden=0;
                                                            
                                                            foreach($pointPenilaianPegawai as $pointPenilaianPegawaiArray){
                                                                foreach($penilaianPegawai as $penilaianPegawaiArray){
                                                                    if(($penilaianPegawaiArray->penerima_nilai == $p->nip) && ($penilaianPegawaiArray->id_point_penilaian == $ppp->id_point_penilaian)){
                                                                        $nilai += $penilaianPegawaiArray->point;
                                                                        $responden++;
                                                                    }
                                                                }
                                                            }
                                                            if($responden > 0){
                                                                $nilai = ($nilai*25)/$responden;
                                                            }
                                                        @endphp
                                                        <span class="float-right"><b>{{ round($nilai, 2) }}</b>/100</span>
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar bg-primary" style="width: {{ round($nilai, 2) }}%"></div>
                                                        </div>
                                                    </div>
                                            @endforeach
                                        @endif
                                    </div>
                                </div>
                                <div class="card-footer">
                                    @php $sudah=0; @endphp
                                    @foreach($penilaianPegawai as $penilaianPegawaiArray)
                                        @if(($penilaianPegawaiArray->pemberi_nilai === $value) && ($penilaianPegawaiArray->penerima_nilai === $p->nip))
                                            @php $sudah++; @endphp
                                        @endif
                                    @endforeach
                                    
                                    @if($sudah == 0 && $value != '202001010120200101')
                                        <div class="text-right">
                                            <a href="/admin/penilaian?id={{ $p->nip }}" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> Nilai
                                            </a>
                                        </div>  
                                    @elseif($value === '202001010120200101')
                                        <div class="text-right">
                                            <a href="/admin/profile?id={{ $p->nip }}" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> Info
                                            </a>
                                        </div>  
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            
            <!-- /.card-body -->
            <div class="card-footer">
                <nav aria-label="Contacts Page Navigation">
                    <ul class="pagination justify-content-center m-0">
                        {{ $pegawai->links() }}
                    </ul>
                </nav>
            </div>
            <!-- /.card-footer -->
        </div>
        <!-- /.card -->

        @php
            $nilais = array("1" => array(), 
                            "2" => array(), 
                            "3" => array(), 
                            "4" => array(), 
                            "5" => array());
            $nilaiTotals = array();
        @endphp
        
        @foreach($pegawai_total as $p)
            @foreach($pointPenilaianPegawai as $ppp)
                @php
                    $nilai=0;
                    $nilaiAsli = 0;
                    $responden=0;
                    
                    foreach($pointPenilaianPegawai as $pointPenilaianPegawaiArray){
                        foreach($penilaianPegawai as $penilaianPegawaiArray){
                            if(($penilaianPegawaiArray->penerima_nilai == $p->nip) && ($penilaianPegawaiArray->id_point_penilaian == $ppp->id_point_penilaian)){
                                $nilai += $penilaianPegawaiArray->point;
                                $responden++;
                            }
                        }
                    }
                    if($responden > 0){
                        $nilaiAsli = $nilai;
                        $nilai = ($nilai*25)/$responden;
                    }

                    $newdata = array(
                        "nip" => $p->nama,
                        "nilai" => $nilai,
                        "nilaiAsli" => $nilaiAsli
                    );
                    array_push($nilais["$ppp->id_point_penilaian"], $newdata);
                @endphp
            @endforeach
        @endforeach

        @if($value === '202001010120200101')
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                    <div class="card-header">
                        <h2 class="card-title"><a href="#" class="dropdown-item">Overall</a></h2>

                        <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-wrench"></i>
                            </button>
                        </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    @php
                        foreach($pegawai_total as $p){
                            $totalScore = 0;
                            foreach($penilaianPegawai as $pt){
                                if($p->nip == $pt->penerima_nilai){
                                    $totalScore += $pt->point;
                                }
                            }
                            $totalScore = $totalScore*25;
                            $newdata = array(
                                "nip" => $p->nama,
                                "nilai" => $totalScore
                            );
                            array_push($nilaiTotals, $newdata);
                        }
                            
                        array_multisort( array_column($nilaiTotals, "nilai"), SORT_DESC, $nilaiTotals);
                        $jumlahNilai = count($pegawai_total)*5*25;
                    @endphp
                    <!-- {{ print_r($nilaiTotals) }} -->
                    @for($row = 0; $row < 3; $row++)
                        <div class="card-body">
                            <!-- START LOCK SCREEN ITEM -->
                            <div class="lockscreen-item">
                                <!-- lockscreen image -->
                                <div class="lockscreen-image"><br>
                                    <img src="{{ asset('dist/img/anonymous.png') }}" alt="User Image">
                                </div>
                                <!-- /.lockscreen-image -->
                                <!-- lockscreen credentials (contains the form) -->
                                <form class="lockscreen-credentials">
                                    <div class="progress-group">
                                        <span class="progress-text"></span>{{ $nilaiTotals[$row]['nip'] }}<br>
                                        <span class="float-right"><b></b>{{ $nilaiTotals[$row]['nilai'] }}/{{ $jumlahNilai }}</span><br>
                                        <div class="progress progress-sm">
                                            <div class="progress-bar bg-primary" style="width: {{ ($nilaiTotals[$row]['nilai']/$jumlahNilai)*100 }}%"></div>
                                        </div>
                                    </div>
                                </form>
                                <!-- /.lockscreen credentials -->
                            </div>
                        </div>
                        <!-- ./card-body -->
                    @endfor
                    </div>
                    <!-- /.card -->
                </div>
                
                @foreach($pointPenilaianPegawai as $ppp)
                    <div class="col-md-4">
                        <div class="card">
                        <div class="card-header">
                            <h2 class="card-title"><a href="#" class="dropdown-item">{{ $ppp->point_penilaian }}</a></h2>

                            <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            <div class="btn-group">
                                <button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-wrench"></i>
                                </button>
                            </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        @php
                            array_multisort( array_column($nilais["$ppp->id_point_penilaian"], "nilai"), SORT_DESC, $nilais["$ppp->id_point_penilaian"] );
                        @endphp
                        <!-- {{print_r($nilais["$ppp->id_point_penilaian"])}} -->
                        @for($row = 0; $row < 3; $row++)
                            <div class="card-body">
                                <!-- START LOCK SCREEN ITEM -->
                                <div class="lockscreen-item">
                                    <!-- lockscreen image -->
                                    <div class="lockscreen-image"><br>
                                        <img src="{{ asset('dist/img/anonymous.png') }}" alt="User Image">
                                    </div>
                                    <!-- /.lockscreen-image -->
                                    <!-- lockscreen credentials (contains the form) -->
                                    <form class="lockscreen-credentials">
                                        <div class="progress-group">
                                            <span class="progress-text">{{ $nilais["$ppp->id_point_penilaian"][$row]['nip'] }}</span><br>
                                            <span class="float-right"><b>{{ round($nilais["$ppp->id_point_penilaian"][$row]['nilai'], 2) }}</b>/100</span><br>
                                            <div class="progress progress-sm">
                                                <div class="progress-bar bg-primary" style="width: {{ round($nilais[$ppp->id_point_penilaian][$row]['nilai'], 2) }}%"></div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- /.lockscreen credentials -->
                                </div>
                            </div>
                            <!-- ./card-body -->
                        @endfor
                        </div>
                        <!-- /.card -->
                    </div>
                @endforeach
            <!-- /.col -->
            </div>
        @endif
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection

@section('footer')

@endsection