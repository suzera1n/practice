<?php
abstract class UserAbstract_e8{
    abstract function showInfo();
}

class User_e8 extends  UserAbstract_e8{
    public $username;
    public $login;
    public $password;

    function __construct($username,$login,$password){  // Конструктор
        $this->username=$username;
        $this->l=$login;
        $this->p=$password;
        echo "Создан объект класса '".__class__."'.
      username: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }


    function __destruct(){  // Деструктор
        echo "Удалён объект класса '".__class__."'. name: {$this->n};<br>\n";
    }

    function showInfo(){
        echo "Объект класса '".__class__."'.
      username: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

}


class SuperUser_e8 extends User_e8{
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
      username: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->r}';
      <br>\n";
    }
}

$user01 = new User_e8("Ivanov","Ivan",bin2hex(random_bytes(5)));
$user02 = new User_e8("Petrov","Petr",bin2hex(random_bytes(5)));
$user03 = new User_e8("Andrey","Andreev",bin2hex(random_bytes(5)));
echo "<br>\n";

$user04 = new SuperUser_e8("Kate","Nazarova",bin2hex(random_bytes(5)),"main");
echo "<br>\n";

$user04->showInfo();
echo "<br>\n";

unset($user01,$user02,$user03,$user04);

?>