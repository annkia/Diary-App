<?php
session_start();
include( 'connectpdo.php' );

if( isSet( $_POST['update_record'] ) ) {
	
		$date = $_POST['date'];
		$category = $_POST['category'];
		$topic = $_POST['topic'];
		$content = $_POST['content'];
		$id_record=$_SESSION['id_record'];
		
		$query = $dbh->prepare("UPDATE record SET date = :date, category = :category, topic =  :topic, content =  :content WHERE id_record ='".$_SESSION['id_record']."'");
		$query->bindParam( ':date', $date );
		$query->bindParam(':category', $category, PDO::PARAM_STR);
		$query->bindParam(':topic', $topic, PDO::PARAM_STR);
		$query->bindParam(':content', $content, PDO::PARAM_STR);
			
		// wykonujemy zapytanie
		$result = $query->execute();

			if($result !== false)
			{
			echo "Zaktualizowano";
	
			} else { 
			echo "Wystąpił błąd";
			
			}
	
		header( 'location: index.php' );

	
}

?>