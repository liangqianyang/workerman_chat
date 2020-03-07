<?php

namespace app\index\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        $from_id = input("from_id");
        $to_id = input("to_id");
        $this->assign('from_id', $from_id);
        $this->assign('to_id', $to_id);
        $this->assign('date', date('Y-m-d',time()));
        return view();
    }

    public function lists()
    {
        $from_id = input("from_id");
        $this->assign('from_id', $from_id);
        return view();
    }
}
