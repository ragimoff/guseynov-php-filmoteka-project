<?php 
	require('config.php');

	require('database.php');
	$link = db_connect();

	require('functions/login-functions.php');


		// Вход в систему / Проверка пользователя
	if ( isset($_POST['enter']) ) {
		// name = "admin";
		// password = "11111";
		$query = "SELECT * FROM `users`";
		$result = mysqli_query($link,$query);
		if (!empty($result) && !mysqli_error($link)) {
			
			$isUserExist = false;
			
			while ($row = mysqli_fetch_array($result)) {
				
				if ( $_POST['login'] == $row['name'] ) {
					$isUserExist = true;
					if ( $_POST['password'] == $row['password'] ) {
						// Добавляем пользователя в сессию
						$_SESSION['user'] = $_POST['login'];
						header('location:' . HOST . 'index.php');	
					} else {
						$resultError =  "Вы не ввели пароль или пароль неверный!";
					}
				}
			}
			if ( !$isUserExist ) $resultError = "Вы не ввели имя пользователя или имя пользователя неверно!";
		} else {
			$resultError =  "Ошибка при загрузке данных о пользователях." . mysqli_error($link);
		}
	}

	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/login.tpl');
	include('views/footer.tpl');


 ?>