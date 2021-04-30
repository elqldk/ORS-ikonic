<!-- index.php -->
<?php include 'template/header.php'; ?>
  <body>
    
    <?php include 'template/nav-bar.php'; ?>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/main3.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate" style="font-size:40px";>
            
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->
<br>
<br>
<br>
<br><br>
<br><br>
    <div class="ftco-section-reservation">
      <div class="container">
        <div class="row">
          <div class="col-md-12 reservation pt-5 px-5">
              <center><p style="font-size: 30px; color: #000;font-weight: bold;margin-top: -30px">Make a Reservation</p></center><br>
            <div class="block-17" style="min-height: 100px;">
              
              <form action="restaurant-list.php" method="POST" class="d-block d-lg-flex">
                <div class="fields d-block d-lg-flex">
                  
                    <p style="font-size: 20px;color: #000; font-weight: bold">Select The Location</p>
                  <div class="select-wrap one-half">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select data-plugin-selectTwo class="form-control populate" name="area" required=""  style="cursor: pointer;">
                      <option value=""> Select location</option>
                      <?php 
                        include 'dbCon.php';
                        $con = connect();
                        $sql = "SELECT * FROM `locations`;";
                        $result = $con->query($sql);
                        foreach ($result as $r) {
                      ?>
                        <option value="<?php echo $r['id']; ?>"><?php echo $r['location_name']; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <input type="submit" class="search-submit btn btn-primary"  name="find" style="font-size: 20px;color: #000; font-weight: bold" value="Search">  
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
<br><br>

    <?php include 'template/font-menu.php'; ?>  
    <br><br>
      <div class="container"> 

        <h1 style="text-align: center; font-size: 30px;font-weight: bold;">OUR SPECIALTIES</h1>
       
             
        <p>
          <ul style="font-size: 18px">

          <li>When the customer wants to dine in a restaurant in which he wants to, the customer can easily find the 
          restaurant from the provided search bar according to the place.<br></li>
                        
          <li>Can view the cusines which are offered by our partnered restaurants. <br></li>
          <li>Can Reserve a table online, at a particular time for n number of people instead of waiting in a long queues.</li>
          </ul>

 </div>
    


  <?php include 'template/instagram.php'; ?>

  <?php include 'template/footer.php'; ?>


  <?php include 'template/script.php'; ?>
  
  <script src="dashboard/assets/vendor/jquery/jquery.js"></script>
  <script src="dashboard/assets/vendor/select2/select2.js"></script>
  <script src="dashboard/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
    
  </body>
</html>