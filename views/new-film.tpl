<h1 class="title-1">Добавить новый фильм</h1>

	<div class="panel-holder mt-30 mb-40">
		<div class="title-3 mt-0">Добавить фильм</div>
		<form enctype="multipart/form-data" action="new.php" method="POST">
		
		    <?php 	
				if(!empty($errors)){
					foreach ($errors as $key => $value){
						echo "<div class='notify notify--error mb-20'>$value</div>";
					}
				}
			?>
			
			<div class="form-group">
				<label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Такси 2" /></label>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="комедия" /></label></div>
				</div>
				<div class="col">
					<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="2000" /></label></div>
				</div>
			</div>
			<textarea name="description" placeholder="Введите описание фильма" class="textarea mb-20"></textarea>

			<div class="section-ui">
				<p class="label">Фотография фильма</p>
				<p>Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб. </p>
				<input id="file" type="file" class="inputfile" name="file">
				<label class="label-input-file" for="file">Выбрать файл</label>
				<span>Файл не выбран</span>
			</div>
			<input class="button" type="submit" name="newFilm" value="Добавить" />
		</form>
	</div>
