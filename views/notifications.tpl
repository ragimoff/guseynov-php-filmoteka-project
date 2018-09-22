<?php if (@$resultSuccess !=''){?><!-- @ символ edd чтоб phph не ругался на ошибки -->
    <div class="notify--success notify"><?=$resultSuccess?></div>
<?php } ?>

<?php if (@$resultInfo != '') {?>
	<div class="notify--notification notify"><?=$resultInfo?></div>
<?php } ?>	

<?php if(@$resultError !=''){?>
		<div class="notify--error notify"><?=$resultError?></div>
<?php } ?>