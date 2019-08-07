<?PHP

$address = "127.0.0.1";
$port = 5555;

if(($sock = socket_create(AF_INET, SOCK_STREAM, 0)) < 0)
	echo "create() failed: reason:" .socket_strerror($sock) ."<br>";
if(($ret = socket_bind($sock, $address, $port)) < 0)
	echo "bind() failed: reason:" .strerror($ret) ."<br>";
if(($ret = socket_listen($sock, 0)) < 0)
	echo "listen() failed: reason:" .strerror($ret) ."<br>";
if(($msgsock = socket_accept($sock)) < 0)
	echo "accpet() failed: reason:" .strerror($msgsock) ."<br>";

$buf = '';
$ret = socket_read($msgsock, 2048);
echo "Receive data : $ret <br>";

$temp = preg_split("/\s+/", $ret);
sort($temp);

for($i = count($temp) - 1; $i >= 0; $i--)
{
	$talkback .= $temp[$i]." ";
}
socket_write($msgsock, $talkback, strlen($talkback));
echo "Send data : $talkback <br>";
socket_close($msgsock);
socket_close($sock);

?>