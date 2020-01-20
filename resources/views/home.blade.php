Selamat datang {{ Auth::guard('pegawais')->user()->nama }}
<br>
<a href="{{ route('logout') }}"> Logout</a>