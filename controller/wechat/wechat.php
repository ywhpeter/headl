<?php
include "../core/db.php";
class wechat extends db
{
    public function feed()
    {
        $array = $this->pdo
            ->query('select * from feeds')
            ->fetchAll();
        echo json_encode($array);
    }

    public function insert()
    {
        $stmt = $this->pdo->prepare("insert into feeds(user_name,user_avater,content,pubtime,address,image)values(?,?,?,?,?,?)");
        $stmt->bindValue(1,$_GET['user_name']);
        $stmt->bindValue(2,$_GET['user_avater']);
        $stmt->bindValue(3,$_GET['content']);
        $stmt->bindValue(4,'2018.12.31');
        $stmt->bindValue(5,'凯通大厦');
        $stmt->bindValue(6,'');
        echo $stmt->execute();
    }
}
