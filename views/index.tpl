<div class="title-1">Фильмотека</div>

<?php    
    foreach ($films as $key => $film) {   
?>
    <div class="card mb-20">
        <!-- row -->
        <div class="row">
            <!-- col-4 -->
            <div class="col-auto">
                <img src="<?=HOST?>data/films/min/<?=$film['photo']?>" alt="<?=$film['title']?>">
            </div>
            <!-- // col-4 -->
             <!-- col-4 -->
            <div class="col">
                <div class="card__header">
                    <h4 class="title-4"><?=$films[$key]['title']?></h4>
                    <div>
                        <a href="edit.php?id=<?=$films[$key]['id']?>" class="button button--edit">Редактировать</a>
                        <a href="?action=delete&id=<?=$films[$key]['id']?>" class="button button--remove">Удалить</a>
                    </div>
                    
                </div>
                <div class="badge"><?=$films[$key]['genre']?></div>
                <div class="badge"><?=$films[$key]['year']?></div>
                <div class="mt-20">
                    <a href="single.php?id=<?=$film['id']?>" class="button">Подробнее</a>
                </div>
            </div>
            <!-- // col-4 -->
        </div>
    	<!-- //row -->
    </div>
<?php
    }
?>					