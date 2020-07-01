<?php

spl_autoload_register(function ($class) {
    include_once('classes/' . $class . '.class.php');
});

header("content-type:text/plain");


$user1 = new User("Ivanov","Ivan","7355608");
$user2 = new User("Petrov","Petr","7355609");
$user3 = new User("Andrey","Andreev","1337228");
$user4 = new SuperUser("Chelovekov","Chelovek","2281422","Spectator");
$user5 = new SuperUser("Aleksey","Alekseev","2222","Spectator");

echo "Всего обычных userov: " . (User::$counter - SuperUser::$counter) .PHP_EOL;
echo "Всего root-userov: " . SuperUser::$counter .PHP_EOL;

$user1->showInfo();
$user2->showInfo();
$user3->showInfo();
$user4->showInfo();

print_r($user4->getInfo());

var_dump($user5->auth("Lol","323232323232"));





?>