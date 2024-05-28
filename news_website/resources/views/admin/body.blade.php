<h2 class="h5 no-margin-bottom">Dashboard</h2>
</div>
</div>

<section class="no-padding-bottom">
  <div class="container-fluid">
    <div class="col-lg-12 col-md-12">
      <div class="block">
        <div class="title"><strong>Users</strong></div>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>User Password</th>
                <th>User Email</th>
                <th>Create At</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>

              @foreach ($users as $user)
              <tr>
                <td>{{$user->id}}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->password}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->created_at}}</td>
                <td><a href="{{url('delete_user',$user->id)}}" class="btn btn-danger" onclick="return confirmDelete(event, this)">Delete</a></td>
              </tr>
              @endforeach

            </tbody>
          </table>
          <div class="d-flex justify-content-center my-3 pt-4">
            {{$users->onEachSide(2)->links()}}
          </div>
        </div>
      </div>
    </div>







  </div>
</section>

<footer class="footer">
  <div class="footer__block block no-margin-bottom">
    <div class="container-fluid text-center">
      <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
      <p class="no-margin-bottom">2024 &copy; Your company.</p>
    </div>
  </div>
</footer>