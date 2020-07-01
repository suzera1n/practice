<?php
class User_dd{
    public $username;
    public $login;
    public $password;

    function showInfo(){
        echo "username: '{$this->username}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
    }
}

$user01 = new User_dd;
$user01 -> username = "Ivanov";
$user01 -> login = "Ivan";
$user01 -> password =  "7355608" ;

$user02 = new User_dd;
$user02 -> username = "Petrov";
$user02 -> login = "Petr";
$user02 -> password = "7355609";

$user03 = new User_dd;
$user03 -> username = "Andrey";
$user03 -> login = "Andreev";
$user03 -> password = "1337228";

$content.=$user01 -> showInfo();
$content.=$user02 -> showInfo();
$content.=$user03 -> showInfo();