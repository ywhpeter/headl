<?php

if(isset($_GET['c'])){
    $className = $_GET['c'];
}else{
    $className='page';
}
include '../controller/index/' . $className . '.php';
if(isset($_GET['m'])){
    $method = $_GET['m'];
}else{
    $method='index';
}

$page = new $className();
$page->$method();

