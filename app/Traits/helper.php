<?php
namespace App\Traits;
trait Helper{
    public function respond($error=false, $status=200, $msg=null, $data=null){
        return [
            'error'=>$error,
            'status' => $status,
            'msg' => $msg,
            'data' =>$data
        ];
    }
}
