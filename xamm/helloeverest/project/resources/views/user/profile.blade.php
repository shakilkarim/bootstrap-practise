@extends('layouts.front')
@section('content')      

<section class="user-dashbord">
    <div class="container">
      <div class="row">
        @include('includes.user-dashboard-sidebar')
<div class="col-lg-8">
                    <div class="user-profile-details">
                        <div class="account-info">
                            <div class="header-area">
                                <h4 class="title">
                                    Edit Profile
                                </h4>
                            </div>
                            <div class="edit-info-area">
                                
                                <div class="body">
                                        <div class="edit-info-area-form">
                                                <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                                                <form id="userform" action="{{route('user-profile-update')}}" method="POST" enctype="multipart/form-data">
                                                    
                                                    {{ csrf_field() }}

                                                    @include('includes.admin.form-both') 
                                                    <div class="upload-img">
                                                        @if($user->is_provider == 1)
                                                        <div class="img"><img src="{{ $user->photo ? asset($user->photo):asset('assets/images/noimage.png') }}"></div>
                                                        @else
                                                        <div class="img"><img src="{{ $user->photo ? asset('assets/images/users/'.$user->photo):asset('assets/images/noimage.png') }}"></div>
                                                        @endif
                                                        @if($user->is_provider != 1)
                                                        <div class="file-upload-area">
                                                            <div class="upload-file">
                                                                    <input type="file" name="photo" class="upload">
                                                                    <span>Upload</span>
                                                            </div>
                                                        </div>
                                                        @endif
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                                <input name="name" type="text" class="input-field" placeholder="User Name *" required="" value="{{ $user->name }}">
                                                        </div>
                                                        <div class="col-lg-6">
                                                                <input name="email" type="email" class="input-field" placeholder="Email Address *" required="" value="{{ $user->email }}" disabled>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                                <input name="phone" type="text" class="input-field" placeholder="Phone Number *" required="" value="{{ $user->phone }}">
                                                        </div>
                                                        <div class="col-lg-6">
                                                                <input name="fax" type="text" class="input-field" placeholder="Fax *" value="{{ $user->fax }}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                                <input name="city" type="text" class="input-field" placeholder="City *" value="{{ $user->city }}">
                                                        </div>
                                                        <div class="col-lg-6">
                                                                <input name="zip" type="text" class="input-field" placeholder="Zip *" value="{{ $user->zip }}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <textarea class="input-field" name="address" required="" placeholder="Address *">{{ $user->address }}</textarea>
                                                        </div>

                                                    </div>

                                                        <div class="form-links">
                                                            <button class="submit-btn" type="submit">Save</button>
                                                        </div>
                                                </form>
                                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
      </div>
    </div>
  </section>

@endsection