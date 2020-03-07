<?php
/**
 * Created by PhpStorm.
 * User: dell
 * Date: 2018/2/6
 * Time: 11:29
 */

namespace app\api\controller;

use think\Controller;
use think\Db;
use think\Request;

class Chat extends Controller
{

    /**
     *文本消息的数据持久化
     */
    public function save_message()
    {
        if (Request::instance()->isAjax()) {
            $message = input("post.");

            $datas['from_id'] = $message['from_id'];
            $datas['from_name'] = $this->getName($datas['from_id']);
            $datas['to_id'] = $message['to_id'];
            $datas['to_name'] = $this->getName($datas['to_id']);
            $datas['content'] = $message['data'];
            $datas['time'] = $message['time'];
//            $datas['is_read'] = $message['is_read'];
            $datas['is_read'] = 0;
            $datas['type'] = 1;
            Db::name("communication")->insert($datas);
        }
    }

    /**
     * 根据用户id返回用户姓名
     */
    public function getName($uid)
    {

        $userinfo = Db::name("user")->where('id', $uid)->field('nickname')->find();

        return $userinfo['nickname'];
    }

    /**
     * 获取用户头像
     * @return array
     */
    public function getHeadImg()
    {
        if (Request::instance()->isAjax()) {
            $from_id = input('from_id');
            $to_id = input('to_id');

            $from_info = Db::name('user')->field('headimgurl')->where('id', $from_id)->find();
            $to_info = Db::name('user')->field('headimgurl')->where('id', $to_id)->find();

            return [
                'from_headimg' => $from_info['headimgurl'],
                'to_headimg' => $to_info['headimgurl'],
            ];
        }
    }

    /**
     * 获取用户昵称
     * @return array
     */
    public function getNickname()
    {
        if (Request::instance()->isAjax()) {
            $uid = input('uid');

            $to_info = Db::name('user')->field('nickname')->where('id', $uid)->find();

            return [
                'nickname' => $to_info['nickname'],
            ];
        }
    }

    /**
     * 加载信息
     * @return array|false|mixed|\PDOStatement|string|\think\Collection
     */
    public function load_message()
    {
        if (Request::instance()->isAjax()) {
            $from_id = input('from_id');
            $to_id = input('to_id');

            $count = Db::name('communication')
                ->where('(from_id=:from_id and to_id =:to_id )||(from_id=:to_id1 and to_id =:from_id1)',
                    ['from_id' => $from_id, 'to_id' => $to_id, 'to_id1' => $to_id, 'from_id1' => $from_id])
                ->count();

            if ($count >= 10) {
                $data = Db::name('communication')
                    ->where('(from_id=:from_id and to_id =:to_id )||(from_id=:to_id1 and to_id =:from_id1)',
                        ['from_id' => $from_id, 'to_id' => $to_id, 'to_id1' => $to_id, 'from_id1' => $from_id])
                    ->limit($count - 10, 10)->order('id')
                    ->select();
            } else {
                $data = Db::name('communication')
                    ->where('(from_id=:from_id and to_id =:to_id )||(from_id=:to_id1 and to_id =:from_id1)',
                        ['from_id' => $from_id, 'to_id' => $to_id, 'to_id1' => $to_id, 'from_id1' => $from_id])
                    ->order('id')
                    ->select();
            }


            return $data;
        }
    }

    /**
     * 上传图片
     * @return array
     */
    public function upload_img()
    {
        $file = $_FILES['file'];
        $from_id = input('from_id');
        $to_id = input('to_id');
        $is_online = input('is_online');
        $extension = substr($file['name'], strpos($file['name'], '.') + 1);
        $type = ['jpg', 'jpeg', 'png', 'gif'];
        if (!in_array($extension, $type)) {
            return ['status' => 'image type error'];
        }
        if ($file['size'] / 1024 > 5120) {
            return ['status' => 'image size is too long'];
        }
        $filename = uniqid('chat_img', false);
        $upload_path = ROOT_PATH . 'public\\uploads\\';
        $file_up = $upload_path . $filename . '.' . $extension;
        $rs = move_uploaded_file($file['tmp_name'], $file_up);
        if ($rs) {
            $name = $filename . '.' . $extension;
            $datas['from_id'] = $from_id;
            $datas['from_name'] = $this->getName($datas['from_id']);
            $datas['to_id'] = $to_id;
            $datas['to_name'] = $this->getName($datas['to_id']);
            $datas['content'] = $name;
            $datas['time'] = time();
//            $datas['is_read'] = $is_online;
            $datas['is_read'] = 0;
            $datas['type'] = 2;
            $message_id = Db::name("communication")->insertGetId($datas);
            if ($message_id) {
                return ['status' => 'success', 'name' => $name];
            } else {
                return ['status' => 'error'];
            }
        }
    }

    /**
     * 根据uid来获取它的头像
     * @param $uid
     * @return mixed
     */
    public function get_head_one($uid){

        $fromhead = Db::name('user')->where('id',$uid)->field('headimgurl')->find();

        return $fromhead['headimgurl'];
    }

    /**
     * 根据from_id来获取from_id同toid发送的未读消息。
     * @param $from_id
     * @param $to_id
     * @return float|int|string
     */
    public function getCountNoRead($from_id,$to_id){

        return Db::name('communication')->where(['from_id'=>$from_id,'to_id'=>$to_id,'is_read'=>0])->count('id');

    }

    /**
     * 根据from_id和to_id来获取他们聊天的最后一条数据
     * @param $from_id
     * @param $to_id
     * @return array|false|mixed|null|\PDOStatement|string|\think\Model
     */
    public function getLastMessage($from_id,$to_id){
        $info = Db::name('communication')->where('(from_id=:from_id&&to_id=:to_id)||(from_id=:from_id2&&to_id=:to_id2)',['from_id'=>$from_id,'to_id'=>$to_id,'from_id2'=>$to_id,'to_id2'=>$from_id])->order('id DESC')->limit(1)->find();
        return $info;
    }


    /**
     * 获取聊天列表
     * @return array
     */
    public function get_list()
    {
        if (Request::instance()->isAjax()) {
            $from_id = input('id');
            $info = Db::name('communication')->field(['from_id', 'to_id', 'from_name'])->where('to_id', $from_id)->group('from_id,to_id,from_name')->select();

            $rows = array_map(function ($res) {
                return [
                    'head_url' => $this->get_head_one($res['from_id']),
                    'username' => $res['from_name'],
                    'countNoRead' => $this->getCountNoRead($res['from_id'], $res['to_id']),
                    'last_message' => $this->getLastMessage($res['from_id'], $res['to_id']),
                    'chat_page' => "http://chat.com/index/index/index?from_id={$res['to_id']}&to_id={$res['from_id']}"
                ];

            }, $info);

            return $rows;
        }
    }

    /**
     * 改变消息状态
     */
    public function changeNoRead(){
        if(Request::instance()->isAjax()){
            $from_id = input('to_id');
            $to_id = input('from_id');
            Db::name('communication')->where(['from_id'=>$from_id,"to_id"=>$to_id])->update(['is_read'=>1]);
        }

    }
}