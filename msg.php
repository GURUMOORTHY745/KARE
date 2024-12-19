<?php
require __DIR__ . '/vendor/autoload.php'; // Ensure Composer's autoloader is included

use Twilio\Rest\Client;

// Twilio credentials
$sid = 'AC1b643fe8e89419ad94b3332c8ad396c3'; // Replace with your Twilio Account SID
$token = '0321c66c56cb7546795d2451947d739e'; // Replace with your Twilio Auth Token

try {
    $twilio = new Client($sid, $token);
    echo "Twilio Client initialized successfully!";
} catch (\Throwable $e) {
    echo "Error: " . $e->getMessage();
}
?>
