<h1 class="title-1">Редактировать фильм</h1>

	<div class="panel-holder mt-30 mb-40">
			<form enctype="multipart/form-data" action="edit.php?id=<?=$film['id']?>" method="POST">
			
			    <?php 	
					if(!empty($errors)){
						foreach ($errors as $key => $value){
							echo "<div class='notify notify--error mb-20'>$value</div>";
						}
					}
				?>
				
				<div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Такси 2"value="<?=$film['title']?>" /></label></div>
				<div class="row">
					<div class="col">
						<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="комедия" value="<?=$film['genre']?>" /></label></div>
					</div>
					<div class="col">
						<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="2000" value="<?=$film['year']?>" /></label></div>
					</div>
				</div>
				
				<textarea name="description" placeholder="Введите описание фильма" class="textarea mb-20"><?=$film['description']?></textarea>
				<div class="section-ui">
					<p class="label">Фотографии</p>
					<p>Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб. </p>
					<input id="file" type="file" class="inputfile" name="file">
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
				</div>
				<!--<div class="section-ui">
					<div class="formInput-image">
						<div class="formInput-image__delete-button">
							<img src="" alt="">
							<a class="button button--small button--removesmall" href="">Удалить</a>
						</div>
					</div>
				</div>
			-->
					
				
				
				<input class="button" type="submit" name="update-film" value="Обновить" />
			</form>
		</div>
		<div class="mb-100">
			<a href="index.php" class="button">На главную</a>
		</div>
