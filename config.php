<?php
// FRONTEND CONFIG

// HTTP
define('HTTP_SERVER', 'http://www.tiju.pl/');
define('HTTP_CATALOG', 'http://www.tiju.pl/');
define('HTTP_IMAGE', 'http://www.tiju.pl/image/');
define('HTTP_ADMIN', 'http://www.tiju.pl/admin/');

// HTTPS
define('HTTPS_SERVER', HTTP_SERVER);
define('HTTPS_IMAGE', HTTP_IMAGE);

// DIR
define('DIR_CATALOG', '/home/advernia/domains/tiju.pl/public_html/catalog/');
define('DIR_APPLICATION', DIR_CATALOG);
define('DIR_SYSTEM', '/home/advernia/domains/tiju.pl/public_html/system/');
define('DIR_DATABASE', DIR_SYSTEM.'database/');
define('DIR_LANGUAGE', DIR_APPLICATION.'language/');
define('DIR_TEMPLATE', DIR_APPLICATION.'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM.'config/');
define('DIR_IMAGE', '/home/advernia/domains/tiju.pl/public_html/image/');
define('DIR_CACHE', DIR_SYSTEM.'cache/');
define('DIR_DOWNLOAD', '/home/advernia/domains/tiju.pl/public_html/download/');
define('DIR_LOGS', DIR_SYSTEM.'logs/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'advernia_oc1');
define('DB_PASSWORD', 'N#[&KyFX^p#(9');
define('DB_DATABASE', 'advernia_oc1');
define('DB_PREFIX', 'oc_');
?>