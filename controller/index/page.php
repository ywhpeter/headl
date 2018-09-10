<?php
include '../core/db.php';

class page extends db
{

    const PER_PAGE = 6;

//首页
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


        include '../views/index/index.html';
    }

//分类页
    public function category()
    {
        //查两次
        //查默认的
        //查其他的
        $category = $this->pdo
            ->query('select * from  news_categor where is_default ="1"')->fetchAll();
        $a=$this->pdo->query('select * from  news_categor where is_default ="0"')->fetchAll();
        include '../views/index/category.html';
    }

//查询页
    public function search()
    {


        //总页数
        $num=null;
        $results= [];
        if(isset($_GET['wd'])){
            $wd=$_GET['wd'];
            $num = $this->pdo->query('select count(*) as  total  from news where title like "%'. $wd .'%"')->fetch()['total'];
            $results = $this->pdo->query('select * from news where title like "%'. $wd .'%" limit '.$this::PER_PAGE .' offset 0')->fetchAll();
        }

//        if (isset($_GET['s'])) {
//            $keyword = $_GET['s'];
//        } else {
//            $keyword = ' ';
//        }

        include '../views/index/search.html';
    }
//数据资源
    public function searchlist()
    {

        $wd = ' ';
        $page = 1;
        if (isset($_GET['page']) && isset($_GET['wd'])) {
            $page = $_GET['page'];
            $wd=$_GET['wd'];
            $results = $this->pdo->query('select * from news where title like "%' . $wd .'%" limit '.$this::PER_PAGE .' offset '.($page - 1) * $this::PER_PAGE)->fetchAll();
            echo json_encode($results);
        }else{
            echo json_encode('参数');
        }


    }
}
