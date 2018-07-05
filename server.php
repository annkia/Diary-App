<?php 
	session_start();

	// variable declaration
	$username = "";
	$email    = "";
	$content="";
	$errors = array(); 
	$_SESSION['success'] = "";

	// connect to database
	$db = mysqli_connect('localhost', 'root', '', 'diary') or die;
	
	mysql_query("SET CHARSET utf8");
	mysql_query("SET NAMES `utf8` COLLATE `utf8_polish_ci`"); 
	mysql_set_charset("utf8");

	
	// Check connection
	if (mysqli_connect_errno()) {
	echo "Nie udało się połaczyć z bazą: " . mysqli_connect_error();
	}

	

		
if ($db){
	// REGISTER USER
	if (isset($_POST['reg_user'])) {
		// receive all input values from the form
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
		$password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
		
			//tu coś kurwa nie działa, wyspiuje ze jest juz taki uzytkownik ale nie zapisuje nowego !!!!

			// 
			// Checking to see if email exists in db
			//
			// form validation: ensure that the form is correctly filled
			if (empty($username)) { array_push($errors, "Login jest wymagany"); }
			if (empty($email)) { array_push($errors, "Email jest wymagany"); }
			if (empty($password_1)) { array_push($errors, "Hasło jest wymagane"); }	
			//checking if the passwors are the same
			if ($password_1 != $password_2) {
				array_push($errors, "Hasła nie pasują do siebie");
			}

			$query = "SELECT username FROM users WHERE username LIKE '" .mysqli_real_escape_string($db, $_POST['username'])."'";
  
			$result = mysqli_query($db, $query);
			if (mysqli_num_rows($result) > 0){
				echo "Niestety użytkownik o tej nazwie istnieje już w bazie";
				$result = "<div class='alert alert-danger col-md-4 col-md-offset-4 text-align-center' id='result'></div>";
			
			}
		
			else{
			
			// register user if there are no errors in the form
			if (count($errors) == 0) {
				$password = md5($password_1);//encrypt the password before saving in the database
				$query = "INSERT INTO users (username, email, password) 
						  VALUES('$username', '$email', '$password')";
				mysqli_query($db, $query);

				$_SESSION['username'] = $username;
				$_SESSION['success'] = "Zalogowałeś się";
				header('location: index.php');
			}
		}
		
	}
	
}
	// LOGIN USER
	if (isset($_POST['login_user'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username)) {
			array_push($errors, "Login jest wymagany");
		}
		if (empty($password)) {
			array_push($errors, "Hasło jest wymagane");
		}

		if (count($errors) == 0) {
			$password = md5($password);
			$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username'] = $username;

				$_SESSION['success'];
				header('location: index.php');
			}else {
				array_push($errors, "Zły login lub hasło");
			}
		}
	}

	// SAVING NEW RECORD
	
	if (isset($_POST['save_record'])) {
		$content = mysqli_real_escape_string($db, $_POST['content']);
		$category = mysqli_real_escape_string($db, $_POST['category']);
		$topic = mysqli_real_escape_string($db, $_POST['topic']);
		$date = $_POST['date'];
	
		if (count($errors) == 0) {
				
				$query = "INSERT INTO record (content, category, topic,date,username, user_id) 
						  VALUES('$content', '$category', '$topic', '$date', '".$_SESSION['username']."')";
				
				
				
				if(mysqli_query($conn, $query)) $successResult = "<div class='alert alert-success col-md-8 col-md-offset-2'>Success your diary has been updated</div>";
			
				mysqli_query($db, $query) or die ('Błąd zapisu');
				
			mysqli_close($db);

		}

		header('location: index.php');
	
	}
?>