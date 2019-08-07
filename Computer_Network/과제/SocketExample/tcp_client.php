<?PHP

$address = "127.0.0.1";
$service_port = 5555;

$socket = socket_create(AF_INET, SOCK_STREAM, 0);
if($socket < 0)
	echo "create() failed: reason:" .socket_strerror($socket) ."<br>";

$result = socket_connect($socket, $address, $service_port);
if($result < 0)
	echo "connect() failed.\nReason : ($result) ". socket_strerror($result) ."<br>";

$in = "사과 오렌지 바나나 배";
$out = '';
socket_write($socket, $in, strlen($in));
echo "Send data : $in <br>";

$out = socket_read ($socket, 2048);
echo "Recieve data : $out <br>";
socket_close($socket);

?>