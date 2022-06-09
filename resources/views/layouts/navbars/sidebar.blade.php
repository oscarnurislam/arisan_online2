<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Brand -->
        <a class="navbar-brand pt-0" href="{{ route('home') }}">
            <img src="{{ asset('argon') }}/img/brand/blue.png" class="navbar-brand-img" alt="...">
        </a>
        <!-- User -->
        <ul class="nav align-items-center d-md-none">
            <li class="nav-item dropdown">
                <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="media align-items-center">
                        <span class="avatar avatar-sm rounded-circle">
                        <img alt="Image placeholder" src="{{ asset('argon') }}/img/theme/team-1-800x800.jpg">
                        </span>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                    <div class=" dropdown-header noti-title">
                        <h6 class="text-overflow m-0">{{ __('Welcome!') }}</h6>
                    </div>
                    <a href="{{ route('profile.edit') }}" class="dropdown-item">
                        <i class="ni ni-single-02"></i>
                        <span>{{ __('My profile') }}</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="{{ route('logout') }}" class="dropdown-item" onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                        <i class="ni ni-user-run"></i>
                        <span>{{ __('Logout') }}</span>
                    </a>
                </div>
            </li>
        </ul>
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
            <!-- Collapse header -->
            <div class="navbar-collapse-header d-md-none">
                <div class="row">
                    <div class="col-6 collapse-brand">
                        <a href="{{ route('home') }}">
                            <img src="{{ asset('argon') }}/img/brand/blue.png">
                        </a>
                    </div>
                    <div class="col-6 collapse-close">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
            <!-- Navigation -->
            @if(auth()->user()->role == "user")
            <ul class="navbar-nav">
               <li class="nav-item">
                   <a class="nav-link" href="{{ route('user_arisan.index') }}">
                     <i class="ni ni-bullet-list-67 text-default"></i>
                     <span class="nav-link-text">Arisan</span>
                   </a>
               </li>
               
               <li class="nav-item">
                   <a class="nav-link" href="/showHistory/"{{auth()->user()->id}}>
                     <i class="ni ni-bullet-list-67 text-default"></i>
                     <span class="nav-link-text">Pembayaran Arisan</span>
                   </a>
               </li>
            </ul>
            @endif
            
            @if(auth()->user()->role == "admin") 
            <ul class="navbar-nav">
               <li class="nav-item">
                   <a class="nav-link" href="{{ route('home') }}">
                       <i class="ni ni-tv-2 text-primary"></i> {{ __('Dashboard') }}
                   </a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="{{ route('peserta.index') }}">
                     <i class="ni ni-bullet-list-67 text-default"></i>
                     <span class="nav-link-text">Peserta</span>
                   </a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="{{ route('arisan.index') }}">
                     <i class="ni ni-bullet-list-67 text-default"></i>
                     <span class="nav-link-text">Arisan</span>
                   </a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="{{ route('kelompok_arisan.index') }}">
                     <i class="ni ni-bullet-list-67 text-default"></i>
                     <span class="nav-link-text">Kelompok Arisan</span>
                   </a>
               </li>
            </ul>
            @endif
            <!-- Divider -->
            <hr class="my-3">
           
        </div>
    </div>
</nav>
