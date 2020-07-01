<?php
class User_fe{
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
class SuperUser_fe extends User_fe{
    public $r;

    function __construct($username,$login,$password,$r){
        parent::__construct($username,$login,$password);
        $this->r = $r;
        echo "Создан объект класса '".__class__."'.
      role: '{$this->r}';
      <br>\n";
    }

    function showInfo(){
        echo "Объект класса '".__class__."'.
      name: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->r}';
      <br>\n";
    }
}



$user01 = new User_fe("Ivan","Ivanov",bin2hex(random_bytes(5)));
$user02 = new User_fe("Petrov","Petr",bin2hex(random_bytes(5)));
$user03 = new User_fe("Andrey","Andreev",bin2hex(random_bytes(5)));
echo "<br>\n";
$user04 = new SuperUser_fe("Kate","Nazarova",bin2hex(random_bytes(5)),"main");
echo "<br>\n";


$user04->showInfo();
echo "<br>\n";

unset($user01,$user02,$user03,$user04);

?>