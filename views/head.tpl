<!-- Разные миксины по одному, которые понадобятся. Для логотипа, бейджа, и т.д.-->
<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>Фильмотека</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" /><!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" /><!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="./css/main.css" /><!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>
<body class="index-page">
	
	
		<div class="header-admin__container">
			<nav class="header-nav pb-30">
				<ul>
					<li class="header-nav__item">
						<a class="header-nav__link" href="index.php">Все фильмы</a>
					</li>
					<?php 
						if ( isset( $_SESSION['user'] ) ) {
							if ( $_SESSION['user'] == 'admin') { 
					?>
						<li class="header-nav__item">
							<a class="header-nav__link" href="new.php">Добавить новый фильм</a>
						</li>
					<?php 
							}
						}
					?>
					<?php 	if ( !isAdmin() ){ 	?>
					<li class="header-nav__item">
						<a class="header-nav__link" href="request.php">Указать информацию</a>
					</li>
					<li class="header-nav__item">
						<a class="header-nav__link" href="login.php">Вход для админа</a>
					</li>
					<?php } ?>
				
					<?php 	if ( isAdmin() ){ 	?>
						<li class="header-nav__item">
							<a class="header-nav__link" href="logout.php">Выход</a>
						</li>
					<?php } ?>
					
				</ul>
				
			</nav>

			<?php if (isset($_COOKIE['user-name'])) { ?>
				<div class="title-3 mt-0 mb-1">
					<?php  if( isset($_COOKIE['user-city']) ) { ?>
						Привет, <?=$_COOKIE['user-name']?> из <?=$_COOKIE['user-city']?>!
					<?php } else { ?>
						Привет, <?=$_COOKIE['user-name']?>!
					<?php } ?>
				</div>
			<?php } ?>
		</div>

		<div class="container user-content section-page">
			
				
			
			