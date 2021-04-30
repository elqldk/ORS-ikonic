<!-- nav-bar.php -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
  	<div class="container">
	   
	    <div class="collapse navbar-collapse" id="ftco-nav">
	      <ul class="navbar-nav ml-auto">
	        <li class="nav-item"><a href="index.php" class="nav-link" style="font-size: 25px;">Home</a></li>
	        <?php if(!isset($_SESSION['isLoggedIn'])){ ?>
	         <li class="nav-item"><a href="register.php" class="nav-link" style="font-size: 25px;">Register</a></li>
	       	 <li class="nav-item"><a href="login.php" class="nav-link" style="font-size: 25px;">Login</a></li>
	        <?php }elseif (isset($_SESSION['isLoggedIn'])) { ?>
	        <li class="nav-item"><a href="logout.php" class="nav-link"><?php echo $_SESSION['name']; ?>(Logout)</a></li>
	        <?php } ?>
			<li>
				
			<div id="google_translate_element"></div>
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en', 
        layout:     google.translate.TranslateElement.InlineLayout.SIMPLE,
        autoDisplay: false, 
        includedLanguages: ''}, 'google_translate_element');}
</script>
<script type="text/javascript" src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			</li>
	      </ul>
	    </div>
  	</div>
</nav>