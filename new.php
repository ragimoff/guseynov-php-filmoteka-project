<?php 
	// DB CONNECTION
	require('config.php');
	require('database.php');
	$link = db_connect();

	require('models/films.php');


	if (array_key_exists('newFilm', $_POST)) {
		// Обработка ошибок
	    if ( $_POST['title'] == '') {
	        $errors[] = "<p>Необходимо ввести название фильма</p>";
	    }
	    
	    if (  $_POST['genre'] == '') {
	        $errors[] = "<p>Необходимо ввести жанр фильма</p>";
	    }
	    
	    if ( $_POST['year'] == '') {
	        $errors[] = "<p>Необходимо ввести год фильма</p>";
	    }

	    // Если ошибок нет - сохраняем фильм
	    if ( empty($errors) ) {
	    	$result = films_new($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_POST['description'], $_POST['photo']);
	    	if ( $result) {
	    		$resultSuccess = "<p>Фильм был успешно добавлен!</p>";
	    		echo "<pre>";
	    		echo $_POST['photo'];
	    		echo "</pre>";
	    	}  else { 
				$resultError = "<p>Что то пошло не так. Добавьте фильм еще раз!</p>";
			}
	    }		    
	}


	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/new-film.tpl');
	include('views/footer.tpl');

?>