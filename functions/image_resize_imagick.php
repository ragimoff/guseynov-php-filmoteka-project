<?php 
	// создает миниатюру      путь к картинке  обрезка картинки по ширине и высоте
	function createThumbnail($imagePath, $cropWidth = 100, $cropHeight = 100) {

		/* Чтение изображения */
		$imagick = new Imagick($imagePath);// библиотека imageck для работы с картинками
		$width = $imagick->getImageWidth();
		$height = $imagick->getImageHeight();

		/* Проверить корректно ли это изображение, проверка на тип файла  */
		// Сделать проверку

		// Изменение размера
		//if ( $width > $height ) {
		//	$imagick->thumbnailImage(0, $cropHeight);
		//} else {
		//	$imagick->thumbnailImage($cropWidth, 0);
		//}

		$imagick->thumbnailImage($cropWidth, $cropHeight);

		// Кодрирование - обрезка, crop

		// Определение размера полученной миниатюрю
		$width = $imagick->getImageWidth();
		$height = $imagick->getImageHeight();

		//Определяем центр изображения 
		$centreX = round($width / 2); // 300
		$centreY = round($height / 2);

		// Определяем точку для обрезки по цетнру
		$cropWidthHalf = round($cropWidth / 2);
		$cropHeightHalf = round($cropHeight / 2);

		// Координаты для старта отбрезки
		$startX = max(0, $centreX - $cropWidthHalf);
		$startY = max(0, $centreY - $cropHeightHalf);

		$imagick->cropImage($cropWidth, $cropHeight, $startX, $startY);

		//Возвращает готовое изображение
		return $imagick;

	}

	/* 
	Usage Example
	// Define full path to the image
	$imagePath = 'D:\OpenServer\domains\php-school-all\php-imagick\flat.jpg';

	// or with ROOT constant
	define('ROOT', dirname(__FILE__).'/');

	$imagePath = ROOT . 'flat.jpg';
	$img = createThumbnail($imagePath);
	header('Content-type: image/jpeg');
	echo $img;
	*/



?>