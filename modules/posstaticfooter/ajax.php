<?php
require_once(dirname(__FILE__).'../../../config/config.inc.php');
require_once(dirname(__FILE__).'../../../init.php');
include(dirname(__FILE__).'/posstaticfooter.php');

 $pos = new posstaticfooter();
 $name_module = $_POST['module_id'];
 $module = Module::getInstanceByName($name_module);
 $id_module = $module->id;
 $hooks = $pos->getHooksByModuleId($id_module);
 $hookArrays = array();
 foreach($hooks as $key => $hook) {
	$hookArrays[$key] = array('id_hook'=>$hook, 'name' => $hook);
 }
 //echo "<pre>"; print_r($hookArrays); die('eeee');
 $json = json_encode($hookArrays); 
die(json_encode($json));

?>
