<?php
class Default_Model_Ajax extends Zend_Db_Table{
	
	protected $_name = 'users';
	protected $_primary = 'id';
	protected $_ids;
	
	public function saveItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'permission-add'){
			
			$table 	= 'privileges';
			$bind	= array(
						'name' 		 => stripslashes($arrParam['name']),
						'module'	 => stripslashes($arrParam['p_module']),
						'controller' => stripslashes($arrParam['p_controller']),
						'action'	 => stripslashes($arrParam['p_action'])
					);
			$db->insert($table, $bind);
		}
		
		if($options['task'] == 'update-online'){
			$table 	= 'user_online';
			
			$select = $db	->	select()
							->	from('user_online AS uo')
							->	where('uo.id_user = ?', $arrParam['adminInfo']['id']);
			$result = $db	->	fetchRow($select);
			
			if(empty($result)) {
				$bind	= array(
						'id_user' 	=> $arrParam['adminInfo']['id'],
						'name' 		=> $arrParam['adminInfo']['name'],
						'time'		=> @date('U'),
						'url'		=> '',
						'phanloai'	=> $arrParam['adminInfo']['phanloai']
				);
				$db->insert($table, $bind);
			} else {
				$bind	= array(
						'name' 		=> $arrParam['adminInfo']['name'],
						'time'		=> @date('U'),
						'url'		=> '',
						'phanloai'	=> $arrParam['adminInfo']['phanloai']
				);
				$where = ' id_user = ' . $arrParam['adminInfo']['id'];
				$db->update($table, $bind, $where);
			}
		}
	}
	
	public function system($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'public-logs'){
			$select = $db	->	select()
							->	from('nam_system AS s')
							->	order('s.date DESC')
							->	limit(10,0);
			$result = $db	->	fetchAll($select);
		}
		
		return $result;
	}
	
	public function listItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'admin-online'){
			$table = 'user_online';
			
			$time = time();
			$time_check = $time - 600; // set thời gian kiểm tra là 10 phút
			
			$where = ' time < ' . $time_check;
			$db->delete($table, $where);
			
			$select = $db	->	select()
							->	from('users AS u', array('id', 'name', 'alias'))
							->	joinLeft('user_online AS uo', 'u.id = uo.id_user', array('time'))
							->	where('u.phanloai = ?', 0)
							->	where('u.id != ?', $arrParam['adminInfo']['id'])
							->	order('uo.time DESC');
			$result = $db	->	fetchAll($select);
		}
		
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'lesson-category'){
			$select = $db	->	select()
							->	from('lesson_category AS lc', array('COUNT(lc.id) AS totalItem'))
							->	where('lc.status != ?', 2);
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'lesson'){
			$select = $db	->	select()
							->	from('lesson AS l', array('COUNT(l.id) AS totalItem'))
							->	where('l.status != ?', 2);
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'lesson-type'){
			$select = $db	->	select()
							->	from('lesson_type AS lt', array('COUNT(lt.id) AS totalItem'))
							->	where('lt.status != ?', 2);
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'exercises'){
			$select = $db	->	select()
							->	from('lesson_map_exercises AS lme', array('COUNT(lme.id_type_lesson) AS totalItem'));
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'thanhvien-dangky'){
			$select = $db	->	select()
							->	from('users AS u', array('COUNT(u.id) AS totalItem'))
							->	where('u.phanloai = ?', 1);
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'hoidap'){
			$select = $db	->	select()
							->	from('hoidap AS hd', array('COUNT(hd.id) AS totalItem'));
			$result = $db	->	fetchOne($select);
		}
		
		if($options['task'] == 'gop-y'){
			$select = $db	->	select()
							->	from('gop_y AS gy', array('COUNT(gy.id) AS totalItem'));
			$result = $db	->	fetchOne($select);
		}
	
		return $result;
	}
	
	public function saveLike($arrParam = null, $table = null,$field=null,$id=null){
		//echo $field;
		//var_dump($arrParam);die;
		
		$db = Zend_Registry::get('connectDb');
		$data = array(
				'like_fb'     => $arrParam['like_count'],
				'comment_fb'     => $arrParam['comment_count']
		);
		$where['0'] = "id = ".$id."";
		// 		var_dump($where);
		// 		echo $table;
		// 		var_dump($data);
		// 		die;
		$db->update($table, $data, $where);
	
		// 	echo '<pre>';
		// 	print_r($arrParam);
		// 	echo '</pre>';
		// 	echo $table;
		// 	echo $field;
		// 	die();
			
	}
	 
}