<?php
class User___{
    public $username;
    public $login;
    public $password;

    function __construct($username,$login,$password){  // Конструктор
        $this->username=$username;
        $this->login=$login;
        $this->password=$password;
        echo "Создан объект класса '".__class__."'.
      username: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __destruct(){  // Деструктор
        echo "Удалён объект класса '".__class__."'. name: {$this->username};<br>\n";
    }
    function showInfo(){
        echo "username: '{$this->username}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
    }

}



$user01 = new User___("Ivanov","Ivan",bin2hex(random_bytes(5)));
$user02 = new User___("Petrov","Petr",bin2hex(random_bytes(5)));
$user03 = new User___("Andrey","Andreev",bin2hex(random_bytes(5)));
unset($user01,$user02,$user03,$user04);
?>