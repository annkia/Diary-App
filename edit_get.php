<?php
include( 'connectpdo.php' );
	
	$id_record = isSet( $_GET['id_record'] ) ? intval( $_GET['id_record'] ) : 0;
		if( $id_record > 0 ) {
		
			
			$query = $dbh->prepare( "SELECT date, category, topic, content FROM record WHERE id_record= :id_record");
			$query->bindParam( ':id_record', $id_record );
			$query->execute();
		
			
			if($details = $query -> fetch()) 
			{
				$_SESSION['date'] = $details['date'];
				$_SESSION['category'] = $details['category'];
				$_SESSION['topic'] = $details['topic'];
				$_SESSION['content'] = $details['content'];
			}
			else
			{
				echo "<p>Przepraszamy, podany rekord nie istnieje!</p>";
			}
			$query -> closeCursor();
		}
?>