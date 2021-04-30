<!-- signin.php -->
<?php include 'template/header.php'; ?>
  <body>
    
    <?php include 'template/nav-bar.php'; ?>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel" style="height: 400px;">
      <div class="slider-item" style="background-image: url('images/log1.jpg');" >
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light" >
      <div class="container" style="background-image: url('images/log3.jpg');" >

        <div class="row justify-content-center mb-5 pb-5">
        
          <div class="col-md-8 text-center heading-section ftco-animate">
            <span class="subheading">Login</span>
            <h2>Log In Our Site</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 dish-menu">

            

            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="row">
                  <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                    <div class="menus d-flex ftco-animate" style="background: #E6E6FA">
	                    <div class="row" style="width: 100%">
					        <div class="col-md-12">
					            <form action="" method="POST" enctype="multipart/form-data">
					              <div class="form-group">
					                <input type="email" name="email" class="form-control" required="" placeholder="Your Email">
					              </div>
					              <div class="form-group">
					                <input type="password" name="password" class="form-control" required="" placeholder="Your Password">
					              </div>
                        <center>
					              <div class="form-group">
					                <input type="submit" value="Login" name="login" class="btn btn-primary py-3 px-5">
					              </div>
                        </center>
					            </form>
                      <p class="text-center">For Register <a href="register.php">Click Here.</a> </p>
					        </div>
					    </div>
	                </div>
                  </div>
                </div>
              </div><!-- END -->

            </div>
          </div>
        </div>
      </div>
    </section>

    <?php include 'template/instagram.php'; ?>

    <?php include 'template/footer.php'; ?>
    
    <?php include 'template/script.php'; ?>


    
  </body>
</html>



<?php 
  if (isset($_POST['login'])) {
    
  $email = $_POST['email'];
  $password = $_POST['password'];

  

  include 'dbCon.php';
  $con = connect();

  $emailSQL = "SELECT * FROM restaurant_info WHERE email = '$email';";

  $passwordSQL = "SELECT * FROM restaurant_info WHERE email = '$email' And password = '$password';";

  $emailResult = $con->query($emailSQL);

  $passwordResult = $con->query($passwordSQL);

  if ($emailResult->num_rows <= 0) {
    echo '<script>alert("This Email Does Not Exist.")</script>';
    echo '<script>window.location="login.php"</script>';
  }else if ($passwordResult->num_rows <= 0) {
    echo '<script>alert("This Password is Incorrect.")</script>';
    echo '<script>window.location="login.php"</script>';
  }else{

    $_SESSION['isLoggedIn'] = TRUE;

    // $SQL = "SELECT * FROM restaurant_info WHERE email = '$email' And password = '$password' AND approve_status=1";

     $SQL = "SELECT * FROM restaurant_info WHERE email = '$email' And password = '$password'";

    $result = $con->query($SQL);

    foreach ($result as $r) {
      $_SESSION['id'] = $r['id'];
      $_SESSION['name'] = $r['restaurent_name'];   
      $_SESSION['phone'] = $r['phone'];
      $_SESSION['email'] = $r['email'];
      $_SESSION['password'] = $r['password'];
      $_SESSION['role'] = $r['role'];
    }

    if ($_SESSION['role'] == 1) {
       echo '<script>window.location="dashboard/index.php"</script>';
    }elseif ($_SESSION['role'] == 2) {
      echo '<script>window.location="index.php"</script>';
    } 
    // if ($_SESSION['role'] == 1) {
    //    echo '<script>window.location="dashboard/index.php"</script>';
    // }elseif ($_SESSION['role'] == 2) {
    //   echo '<script>window.location="index.php"</script>';
    // } 
    
  }

  }
?>