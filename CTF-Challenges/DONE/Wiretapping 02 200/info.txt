
    Challenge
    9 Solves

Wiretapping 02
200

Now we know who kidnapped professor Ben, but the evidence that we collected so
far can't justify an arrest. So we kept investigating and we managed to plant a
Lan Turtle in the on one of the internal network workstations of the company that
Steven Harvey owns. Turns out that their local web application doesn't use SSL/TLS,
can you find any credentials that can help us to gain access to their web server?


Frame 47: 678 bytes on wire (5424 bits), 678 bytes captured (5424 bits)
    Encapsulation type: Ethernet (1)
    Arrival Time: Dec 17, 2018 12:49:01.622375000 GMT
    [Time shift for this packet: 0.000000000 seconds]
    Epoch Time: 1545050941.622375000 seconds
    [Time delta from previous captured frame: 0.002237000 seconds]
    [Time delta from previous displayed frame: 0.002237000 seconds]
    [Time since reference or first frame: 13.718924000 seconds]
    Frame Number: 47
    Frame Length: 678 bytes (5424 bits)
    Capture Length: 678 bytes (5424 bits)
    [Frame is marked: False]
    [Frame is ignored: False]
    [Protocols in frame: eth:ethertype:ip:tcp:http:urlencoded-form]
    [Coloring Rule Name: HTTP]
    [Coloring Rule String: http || tcp.port == 80 || http2]
Ethernet II, Src: Vmware_0c:3c:6f (00:0c:29:0c:3c:6f), Dst: BelkinIn_4d:f7:9c (58:ef:68:4d:f7:9c)
Internet Protocol Version 4, Src: 192.168.1.115, Dst: 79.170.44.156
    0100 .... = Version: 4
    .... 0101 = Header Length: 20 bytes (5)
    Differentiated Services Field: 0x00 (DSCP: CS0, ECN: Not-ECT)
    Total Length: 664
    Identification: 0x7e1d (32285)
    Flags: 0x4000, Don't fragment
    Time to live: 64
    Protocol: TCP (6)
    Header checksum: 0x7be1 [validation disabled]
    [Header checksum status: Unverified]
    Source: 192.168.1.115
    Destination: 79.170.44.156
Transmission Control Protocol, Src Port: 41874, Dst Port: 80, Seq: 1, Ack: 1, Len: 612
    Source Port: 41874
    Destination Port: 80
    [Stream index: 13]
    [TCP Segment Len: 612]
    Sequence number: 1    (relative sequence number)
    [Next sequence number: 613    (relative sequence number)]
    Acknowledgment number: 1    (relative ack number)
    1000 .... = Header Length: 32 bytes (8)
    Flags: 0x018 (PSH, ACK)
    Window size value: 229
    [Calculated window size: 29312]
    [Window size scaling factor: 128]
    Checksum: 0x40ec [unverified]
    [Checksum Status: Unverified]
    Urgent pointer: 0
    Options: (12 bytes), No-Operation (NOP), No-Operation (NOP), Timestamps
    [SEQ/ACK analysis]
    [Timestamps]
    TCP payload (612 bytes)
Hypertext Transfer Protocol
    POST /wp-includes/done.php HTTP/1.1\r\n
    Host: incaremporium.com\r\n
    User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0\r\n
    Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n
    Accept-Language: en-US,en;q=0.5\r\n
    Accept-Encoding: gzip, deflate\r\n
    Referer: http://incaremporium.com/236391575/UoLm6/?sc=1&sc=1&sc=1&l=1&ppy=1400315\r\n
    Content-Type: application/x-www-form-urlencoded\r\n
    Content-Length: 121\r\n
    Connection: keep-alive\r\n
    Upgrade-Insecure-Requests: 1\r\n
    \r\n
    [Full request URI: http://incaremporium.com/wp-includes/done.php]
    [HTTP request 1/1]
    [Response in frame: 54]
    File Data: 121 bytes
HTML Form URL Encoded: application/x-www-form-urlencoded
    Form item: "email" = "Admin13"
    Form item: "pass" = "Flag{cyber47packets!dd}"
    Form item: "user_id_victim" = "MZzrGVVFZSUmQwMUVUWGhPVVQwOQ=="
    Form item: "user_ip" = ""
    Form item: "type" = "Facebook"

