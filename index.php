<?php
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Etc/GMT-3');
	
$dblocation = 'localhost';
$dbname = 'test-tv-torg';
$dbuser = 'root';
$dbpasswd = '';

$params = array();
$req = '';
$goods = array();
$specialField = array('id', 'price', 'model', 'description');

$mysqli = new mysqli($dblocation, $dbuser, $dbpasswd, $dbname);

if($mysqli->connect_error) {
	die('Сервис не доступен, повторите запрос позже');
}

# Get list of fields from table of goods to $params
$query = $mysqli->query('SHOW COLUMNS FROM `goods`');

while($temp = $query->fetch_object()) {
	if(!in_array($temp->Field, $specialField)) {
		$params[$temp->Field] = new stdClass();
		$params[$temp->Field]->header = $temp->Field;
	}
}

# Get human description of the table fields
$query = $mysqli->query('SELECT `db_name`, `human_name` FROM `goods_params_names`');

while(!$mysqli->error and $temp = $query->fetch_object()) {
	if(isset($params[$temp->db_name]) and $temp->human_name) {
		$params[$temp->db_name]->header = $temp->human_name;
	}
}

# Get item names of the table fields
foreach($params as $db_name => $human_name) {
	$params[$db_name]->items = array();
	$query = $mysqli->query("SELECT `id`, `name` FROM `goods_param_$db_name`");

	while(!$mysqli->error and $temp = $query->fetch_object()) {
		$temp->count = 0;
		$params[$db_name]->items[(int)$temp->id] = $temp;
	}
}

# Prepare SQL request to filter goods
foreach($params as $db_name => $param) {
	if(!empty($_GET[$db_name])) {
		$temp = '';
		foreach($_GET[$db_name] as $value) {
			if((int)$value) {
				$params[$db_name]->items[(int)$value]->checked = true;
				if($temp) {
					$temp .= ' OR ';
				}
				$temp .= "`$db_name` = ".((int)$value);
			}
		}
		if($temp) {
			$req .= " AND ($temp)";
		}
	}
}

# Request goods with filter
$query = $mysqli->query('SELECT * FROM `goods` WHERE TRUE '.$req);
while(!$mysqli->error and $temp = $query->fetch_object()) {
	$goods[] = $temp;

	$params_keys = array_keys($params);
	foreach((array)$temp as $key => $value) {
		if(in_array($key, $params_keys)) {
			$params[$key]->items[(int)$value]->count++;
		}
	}
}

?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Параметрический поиск</title>
	<style>
		.params__line { width: 50%; margin: 0 auto 15px; text-align: center; }
		.params__header { font-size: 21px; font-weight: bold; }
		.params__item { display: inline-block; }
		.params__item_not-found { color: red; }
		.params__form-submit { text-align: center; }
		.goods__wrapper { width: 50%; margin: 0 auto; }
		.goods__item { margin-bottom: 15px; }
		.goods__item:hover { background-color: #EEE; }
		.goods__item-header { font-weight: bold; }
	</style>
</head>
<body>
	<div class="params">
		<form method="GET">
			<?foreach($params as $db_name => $param):?>
				<div class="params__line">
					<div class="params__header"><?=$param->header?></div>
					<?foreach($param->items as $key => $item):?>
						<div class="params__item <?=($item->count or !empty($_GET[$db_name]))?'':'params__item_not-found'?>">
							<input type="checkbox" name="<?=$db_name?>[]" value="<?=$key?>" id="<?=$db_name.$key?>" <?=isset($item->checked)?'checked':''?>>
							<label for="<?=$db_name.$key?>"><?=$item->name?></label>
						</div>
					<?endforeach;?>
				</div>
			<?endforeach;?>
			<div class="params__form-submit">
				<input type="submit" value="Искать">
			</div>
		</form>
	</div>
	<div class="goods">
		<ul class="goods__wrapper">
			<?foreach($goods as $item):?>
				<li class="goods__item">
					<div class="goods__item-header">
						<?=$params['brand']->items[(int)$item->brand]->name?> <?=$item->model?> <?=$params['color']->items[(int)$item->color]->name?>
					</div>
					<div class="goods__item-description">
						<?=$item->price?> Руб., 
						<?foreach($params as $key => $param):?>
							<?=($key != 'brand') ? $param->items[$item->$key]->name : ''?>
						<?endforeach;?>
					</div>
				</li>
			<?endforeach;?>
		</ul>
	</div>
</body>
</html>