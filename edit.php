<?php 
	// DB CONNECTION
	require('config.php');
	require('database.php');
	$link = db_connect();

	require('models/films.php');
	require('functions/login-functions.php');
	
	if (array_key_exists('update-film', $_POST)) {
	    // Обработка ошибок
		    if ($_POST['title'] == '') {
		        $errors[] = "<p>Необходимо ввести название фильма</p>";
		    }
		    
		    if ($_POST['genre'] == '') {
		        $errors[] = "<p>Необходимо ввести жанр фильма</p>";
		    }
		    
		    if ($_POST['year'] == '') {
		        $errors[] = "<p>Необходимо ввести год фильма</p>";
		    }
 
	    // Если ошибок нет - сохраняем фильм
	    	if (empty($errors)) {
		    	// Запись данных в БД
		    	$result = film_update($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_GET['id'], $_POST['description'], $_FILES['file']);
		        
			    if ( $result ) {
					$resultInfo = "<p>Фильм был успешно обновлен!</p>";
				} else { 
					$resultError = "<p>Что то пошло не так. Добавьте фильм еще раз!</p>";
				}
	   		}    
		}
		// Удаление фильма
		if ( @$_GET['action'] == 'delete') {
		$query = "DELETE FROM films WHERE id = ' " . mysqli_real_escape_string($link, $_GET['id'] ) . "' LIMIT 1";

		mysqli_query($link, $query);

		if ( mysqli_affected_rows($link) > 0 ) {
		 	$resultInfo = "<p>Фильм был удален!</p>";
		 } 
	}

	$film = get_film($link, $_GET['id']);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/edit-film.tpl');
include('views/footer.tpl');
	
?>
