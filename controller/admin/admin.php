<?php
include '../core/db.php';

class admin extends db
{
  public function index()
  {
    include '../views/admin/admin.html';
  }
  public function user(){

      include '../views/admin/admin.user.html';
  }
}