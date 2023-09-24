<?php

// Get visitor IP address
$clientIp = '';
if(isset($_SERVER['HTTP_CLIENT_IP'])) {
  $clientIp = $_SERVER['HTTP_CLIENT_IP'];
} elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
  $clientIp = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
  $clientIp = $_SERVER['REMOTE_ADDR'];
}

// Validate and sanitize IP 
if(strpos($clientIp, ',') !== false) {
  $clientIp = explode(",", $clientIp)[0];
}
$clientIp = filter_var($clientIp, FILTER_VALIDATE_IP);

// Log request data to file
$logFile = 'ip_log.txt';

// Check that file can be opened
if(!$fh = fopen($logFile, 'a')) {
  die("Failed to open log file");
}

$userAgent = $_SERVER['HTTP_USER_AGENT'];
$timestamp = date('Y-m-d H:i:s'); 

// Write log entry 
$logEntry = "$timestamp | $clientIp | $userAgent\n";
fwrite($fh, $logEntry);
fclose($fh);

// Limit log size - e.g. 50 IPs
$logSizeLimit = 50; 
$logLines = file($logFile);
if(count($logLines) > $logSizeLimit) {
  
  // Delete oldest entries
  $linesToKeep = array_slice($logLines, -$logSizeLimit);
  file_put_contents($logFile, implode("", $linesToKeep)); 

}

?>
