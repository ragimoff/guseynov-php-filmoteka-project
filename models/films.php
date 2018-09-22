<?php 
	// Getting films from DB
	// функция показывает все фильмы и выводит их
	function films_all($link){
		$query = "SELECT * FROM filmoteka";
		$films = array();

			if ( $result = mysqli_query($link, $query) ){
		    while ( $row = mysqli_fetch_array($result) ) {
		        $films[] = $row;
		    }
		}

		return $films;
	}

	//Функця добавляет фильмы
	function films_new($link, $title, $genre, $year, $description){
   		// Запись данных в БД


        $query = "INSERT INTO `filmoteka` (`title`, `genre`, `year`, `description`, `photo`) VALUES (
        '". mysqli_real_escape_string($link, $title) ."',
        '". mysqli_real_escape_string($link, $genre) ."',
        '". mysqli_real_escape_string($link, $year) ."',
        '". mysqli_real_escape_string($link, $description) ."',
        '". mysqli_real_escape_string($link, $db_file_name) ."'
        )";

        if ( mysqli_query($link, $query ) ) {
        	$result = true;
        } else {
        	$result = false;
        }

        return $result;
    }    

    function get_film ($link, $id) {
		// Getting film from DB
		$query = "SELECT * FROM filmoteka WHERE id = ' " . mysqli_real_escape_string($link, $id ) . "' LIMIT 1";
		$result = mysqli_query($link, $query);
		if ( $result = mysqli_query($link, $query) ) {
			$film = mysqli_fetch_array($result);
		}

		return $film;
    }

    function film_update($link, $title, $genre, $year, $id, $description) {

    	if ( isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != "" ) {
    		$fileName = $_FILES['file']['name'];
    		$fileTmploc = $_FILES['file']['tmp_name'];
    		$fileType = $_FILES['file']['type'];
    		$fileSize = $_FILES['file']['size'];
    		$fileErrorMsg = $_FILES['file']['error'];
    		$kaboom = explode(".", $fileName); // разбивает строку с именем файла FileNmae на два элемента до точки и после точки
    		$fileExt = end($kaboom); // берем последний элемент массива то что идет после точки и записываем в переменную filext. Запишется jpeg без точки

    		list($width, $height) = getimagesize($fileTmploc);

    		if($width < 10 || $height < 10) {
    			$errors[] = 'That image has no dimension';
    		}
    		// рондомное имя
    		$db_file_name = rand(10000000, 99999999) . "." . $fileExt;
    		// проверка размера
    		if($fileSize > 10485760) {
    			$errors[] = 'Your image file was larger than 10mb';
    		} else if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName) ) {
    			$errors[] = 'Your image file was not jpg, jpeg, gif or png type';
    		} else if ($fileErrorMsg == 1) {
    			$errors[] = 'An unknown error occurred';
    		}
    		// путь куда он будет сохранен картинка
    		$photoFolderLocation = ROOT . 'data/films/full/';
    		$photoFolderLocationMin = ROOT . 'data/films/min/';
    	//	$photoFolderLocationFull = ROOT . 'data/films/full';

    		// полный путь изображения
    		$uploadfile = $photoFolderLocation . $db_file_name;
    		// переменящаем из пременного хранилища в нашу папку с изоб
    		$moveResult = move_uploaded_file($fileTmploc, $uploadfile);

    		if ( $moveResult != true) {
    			$errors[] = 'File upload failed';
    		}

    		require_once(ROOT . "/functions/image_resize_imagick.php");
    		$target_file = $photoFolderLocation . $db_file_name;
    		$resized_file = $photoFolderLocationMin . $db_file_name;
    		$wmax = 137;
    		$hmax = 200;
    		$img = createThumbnail($target_file, $wmax, $hmax);
    		$img->writeImage($resized_file);

    		// Код для сжимания картинки

    	}

    	$query = "	UPDATE filmoteka
	        			SET title = '". mysqli_real_escape_string($link, $title) ."',
	        				genre = '". mysqli_real_escape_string($link, $genre) ."',
	        				year = '". mysqli_real_escape_string($link, $year) ."',
	        				description = '". mysqli_real_escape_string($link, $description) ."',
	        				photo = '". mysqli_real_escape_string($link, $db_file_name) ."',
	        				WHERE id = ".mysqli_real_escape_string($link, $id) ." LIMIT 1";

        if ( mysqli_query($link, $query) ) {
			$result = true;
		} else { 
			$result = false;
		}

		return $result;
    }

    function film_delete($link, $id) {
    	$query = "DELETE FROM filmoteka WHERE id = ' " . mysqli_real_escape_string($link, $id ) . "'LIMIT 1";
			mysqli_query($link, $query);

		if (mysqli_affected_rows($link) > 0 ) { // функция принимает в себя один параметр к подключению базы данных и возвращает кол-во рядов которые были затронуты при выполнения последнего запроса который был
			$result = true;
		} else {
			$result = false;
		}
		return $result;
    }

?>