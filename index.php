<?php 

	require('config.php');
	require('database.php');
	$link = db_connect();

	require('models/films.php');
	require('functions/login-functions.php');

	// Delete film
		if ( @$_GET['action'] == 'delete' ) { // @$_GET
			//echo "Delete fail";
			$result = film_delete($link, $_GET['id']);

			if ( $result ) { // функция принимает в себя один параметр к подключению базы данных и возвращает кол-во рядов которые были затронуты при выполнения последнего запроса который был
				$resultInfo = "<p>Фильм был удален!</p>";
			} else {
				$resultError = "<p>Что то пошло не так.</p>";
			}
		}

	$films = films_all($link);

	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/index.tpl');
	include('views/footer.tpl');


?>
		