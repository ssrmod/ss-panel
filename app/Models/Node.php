<?php

namespace App\Models;

/**
 * Node Model
 */

use App\Utils\Tools;

class Node extends Model

{
    protected $table = "ss_node";


    public function getLastNodeInfoLog()
    {
        $id = $this->attributes['id'];
        $log = NodeInfoLog::where('node_id', $id)->orderBy('id', 'desc')->first();
        if ($log == null) {
            return null;
        }
        return $log;
    }

    public function getNodeUptime()
    {
        $log = $this->getLastNodeInfoLog();
        if ($log == null) {
            return "暂无数据";
        }
        return Tools::secondsToTime((int)$log->uptime);
    }

    public function getNodeLoad()
    {
        $log = $this->getLastNodeInfoLog();
        if ($log == null) {
            return "暂无数据";
        }
        return $log->load;
    }
    
    public function getNodeLogTime()
    {
        $log = $this->getLastNodeInfoLog();
        if ($log == null) {
            return "暂无数据";
        }
        return $log->log_time;
    }
    
    public function getLastNodeOnlineLog()
    {
        $id = $this->attributes['id'];
        $log = NodeOnlineLog::where('node_id', $id)->orderBy('id', 'desc')->first();
        if ($log == null) {
            return null;
        }
        return $log;
    }

    function getOnlineUserCount()
    {
        $log = $this->getLastNodeOnlineLog();
        if ($log == null) {
            return "暂无数据";
        }
        return $log->online_user;
    }


	
	function getSpeedtest(){
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
		
		
        return "电信延迟：".$log->telecomping." 下载：".$log->telecomeupload." 上传：".$log->telecomedownload."<br>
		联通延迟：".$log->unicomping." 下载：".$log->unicomupload." 上传：".$log->unicomdownload."<br>
		移动延迟：".$log->cmccping." 下载：".$log->cmccupload." 上传：".$log->cmccdownload."<br>定时测试，仅供参考";
    }
	
	
	function getSpeedtestResult(){
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('id', 'desc')->limit(48)->get();
        if($log == null){
            return "暂无数据";
        }
		
		
        return $log;
    }	
	function getTelecomPing(){
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
				
        return $log->telecomping;
    }	
	
	function getUnicomPing()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->unicomping;

    }
	
	function getCmccPing()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->cmccping;

    }
	

	function getTelecomUpload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->telecomeupload;

    }
	
	function getTelecomDownload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->telecomedownload;

    }
	
	function getUnicomUpload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->unicomupload;

    }
	
	function getUnicomDownload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->unicomdownload;

    }
	
	function getCmccDownload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->cmccdownload;

    }
	
	function getCmccUpload()
    {
        $id = $this->attributes['id'];
        $log = Speedtest::where('node_id',$id)->orderBy('datetime', 'desc')->first();
        if($log == null){
            return "暂无数据";
        }
        return $log->cmccupload;

    }
	
	
			
    function getTrafficFromLogs()
    {
        $id = $this->attributes['id'];
        $traffic = TrafficLog::where('node_id', $id)->sum('u') + TrafficLog::where('node_id', $id)->sum('d');
        if ($traffic == 0) {
            return "暂无数据";
        }
        return Tools::flowAutoShow($traffic);
    }

}
