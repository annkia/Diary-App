<?php 
include('server.php');

if(!isset($_SESSION['username']))
	{	$_SESSION['msg'] = "Muisz się zalogować";
		header('Location:index.php');
		exit();
	}
 include( 'edit_get.php' );

//echo "$id_record";

 
 ?>
<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8"/>
	<title>Dziennik</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <!-- CSS -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,700">
		<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" href="assets/css/media-queries.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	
	<!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
	<!-- Top menu 
	<nav class="navbar navbar-inverse" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Regy - Bootstrap Registration Landing Page</a>
				</div>
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="scroll-link" href="#features">Features</a></li>
						<li><a class="scroll-link" href="#how-it-works">How it works</a></li>
						<li><a class="scroll-link" href="#testimonials">Testimonials</a></li>
						<li><a class="scroll-link" href="#faq">FAQ</a></li>
					</ul>
				</div>
			</div>
	</nav>-->
				
	<!-- Top content -->
	<?php include('errors.php'); ?>
	<div class="top-content">
		<div class="container">
			<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1 class="wow fadeInLeftBig">Twój dziennik.</h1>
					</div> <!-- tu usunełam jednego diva <div class="description wow fadeInLeftBig"></div> -->
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 r-form-1-box wow fadeInUp">
					<div class="r-form-1-top">
						<div class="r-form-1-top-left">
							<h3>Podgląd wpisu</h3>
						</div>
						<div class="r-form-1-top-right">
							<i class="fa fa-pencil"></i>
						</div>
					</div>
					<div class="r-form-1-bottom"> 
					<!--FORM -->
						<form>
							<div class="form-group">
									<label class="sr-only" for="r-form-1-first-name" >Data</label>
									<input type="date" name="date"  class="r-form-1-first-name form-control" id="r-form-1-first-name" value="<?php echo $_SESSION['date']; ?>" readonly>
							</div>
							<div class="form-group">
									<label class="sr-only" for="r-form-1-first-name">Kategoria</label>
									<input type="text" name="category" placeholder="Kategoria..." class="r-form-1-first-name form-control" id="r-form-1-first-name" readonly>
								</div>
							<div class="form-group">
									<label class="sr-only" for="r-form-1-first-name">Temat</label>
									<input type="text" name="topic" placeholder="Temat..." class="r-form-1-first-name form-control" id="r-form-1-first-name" 
									value="<?php echo $_SESSION['topic']; ?>" readonly/>
							</div>
							<div class="form-group">
									<label class="sr-only" for="r-form-1-about-yourself">About yourself</label>
									<textarea name="content" placeholder="Treść..." 
									class="r-form-1-about-yourself form-control" id="r-form-1-about-yourself" readonly><?php echo htmlspecialchars($_SESSION['content']);?></textarea>
							</div>
						
						</form>
						<button type="submit" class="btn" name="back" onclick="window.location.href='http://localhost/registr_copy1/index.php'"  >Powrót do strony głównej</button><br><br>					
						</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
