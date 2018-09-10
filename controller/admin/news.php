<?php
include '../core/db.php';

class news extends db
{
    const PER_PAGE = 8;
  public function index()
  {
      //接受分类id
      if (isset($_GET['cid'])) {
          $cid = $_GET['cid'];
      } else {
          $cid = 1;
      }
      //接受page
      if (isset($_GET['page'])) {
          $page = $_GET['page'];
      } else {
          $page = 1;
      }
//分类
      $array = $this->pdo
          ->query('select * from  news_categor where is_default ="1" ')
          ->fetchAll();

//总条数
      $num = $this->pdo->query('select count(*) as  total  from news where cid =' . $cid)->fetch()['total'];

      //总页数
      $page_total = ceil($num / $this::PER_PAGE);
//新闻
      $course = $this->pdo
          ->query('select * from news where cid =' . $cid . ' limit ' . $this::PER_PAGE . ' offset  ' . ($page - 1) * $this::PER_PAGE)
          ->fetchAll();


      include '../views/admin/admin.news.html';
  }


  public function delete()
    {
//        sleep (1);
        $count = $this->pdo->exec("delete from  news where id = " . $_GET['id']);
        echo $count;
    }
  public function lists()
  {


  }

    public function add()
    {
        sleep (1);
        $stmt = $this->pdo->prepare("insert into news (cid,title,dsc,image,url,create_time,content,mold)values(?,?,?,?,?,?,?,?)" );
        $stmt->bindValue(1, '1');
        $stmt->bindValue(2, '');
        $stmt->bindValue(3, '');
        $stmt->bindValue(4, '');
        $stmt->bindValue(5, '');
        $stmt->bindValue(6, '');
        $stmt->bindValue(7, '');
        $stmt->bindValue(8, '0');

        echo $stmt->execute();
    }

    public function update()
    {
        sleep (1);
        $stmt = $this->pdo->prepare('update news set ' .$_GET['k']. '= ?  where id = ?');
        $stmt->bindValue(1, $_GET['v']);
        $stmt->bindValue(2, $_GET['id']);
        $stmt->execute();

        echo $stmt->execute();
    }
}