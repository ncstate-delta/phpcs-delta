<?php
$paths = array(
	// Format: 'path' => 'appname',
);

$phpcs_dir = __DIR__;

$host = strtr(php_uname('n'), array('.delta.ncsu.edu' => ''));
foreach ($paths as $path => $app) {
	$filename = "$host-$app";
	if (file_exists($path)) {
		if (is_readable($path)) {
			echo $filename . PHP_EOL;
			passthru("phpcs -p --colors --standard=$phpcs_dir/phpcompatibility.xml --report=json --report-file=$phpcs_dir/output/$filename.json --basepath=$path $path");
		}
		else {
			echo 'ERROR: Folder not readable - ' . $path . PHP_EOL;
		}
	}
	else {
		//echo 'ERROR: Folder does not exist - ' . $path . PHP_EOL;
	}
}
