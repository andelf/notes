<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="60" left="552" height="600" width="802"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20090811130147.1254" str_leo_pos="1,1"><vh>@chapters</vh></v>
<v t="andelf.20090811130147.1253" a="E"><vh>Cisco</vh>
<v t="andelf.20090811130147.1255"><vh>CCNA 学习指南中文版</vh>
<v t="andelf.20090812080449.1236"><vh>网际互联</vh>
<v t="andelf.20090812080449.1237"><vh>网际互联模型</vh></v>
</v>
</v>
<v t="andelf.20090813161714.1240"><vh>Tips</vh>
<v t="andelf.20090813161714.1241"><vh>DHCP服务设置</vh>
<v t="andelf.20090813161714.1242"><vh>DHCP 中继</vh></v>
<v t="andelf.20090813161714.1243"><vh>DHCP 客户端</vh></v>
<v t="andelf.20090813161714.1244" a="E"><vh>DHCP 服务器</vh>
<v t="andelf.20090813161714.1245"><vh>配置DHCP服务器的各种选项</vh></v>
<v t="andelf.20090813161714.1246"><vh>关于DHCP的租期相关讨论和配置</vh></v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20090811130147.1253"></t>
<t tx="andelf.20090811130147.1254"></t>
<t tx="andelf.20090811130147.1255">@nocolor

第六版</t>
<t tx="andelf.20090812080449.1236">将一个很大的网络划分为小一些的网络 -- 称为网络分段, 可以使用路由器, 交换机和网桥来实现网络分段.

交换机每个端口都是一个冲突域. (定义? 两台不同设备不可同时收发数据包, 同一时刻只能有一台设备发送)
默认不能分隔广播域. 只有一个广播域. 不隔离广播和组播数据包.
工作在第二层, 转发或过滤帧.
使用桥接技术. (网桥和交换机功能基本相同: 在 LAN 中分隔冲突域)
大多情况下, 网桥只有 2-4 个端口, 而交换机端口很多.

集线器(Hub)不分隔冲突域.

即使有了交换网络, 仍然需要路由提供 VLAN 之间通信, 或是实现 Internet.


引起 LAN 通信量出现阻塞的通常原因如下:
    在一个广播域中有太多的主机
    广播风暴
    低带宽
    为连接到网络中添加了集线器
    大量 ARP 或 IPX 流量(Novell 网的路由协议)

路由分隔广播域. (网段上所有设备的集合, 这些设备监听送往这个网段的所有广播.)
路由器也用来提供 WAN 连接服务, 通常使用串口(尤其是 V.35 物理接口)来提供 WAN 连接.
路由器接受到广播包使, 会发送确认信息, 并丢弃广播包. 不进行转发.
路由也用来分隔冲突域.

使用路由的好处: 默认不转发广播; 根据第三层(网络层)信息(例如 IP 地址)对网络进行过滤.

路由的功能: 数据包转发, 数据包过滤, 网络间通信, 路径选择.

路由是工作在第三层的交换机. 对数据包进行交换(转发). 使用路由表进行路径选择.

全是集线器的网络只有一个冲突域, 交换机的每个端口都是一个冲突域. 只有路由器分隔冲突域.

</t>
<t tx="andelf.20090812080449.1237">Open Systems Interconnection, OSI 参考模型

应用层: Application layer, 文件, 打印, 数据库和应用服务
    - 提供用户接口
表示层: Presentation layer, 数据加密, 压缩和转换
    - 表示数据
    - 处理数据(加密, 等)
会话层: Session layer, 会话控制
    - 维持不同应用程序的数据分隔
传输层: Transport layer, 端到端连接
    - 提供可靠或不可靠的传输
    - 在重传前执行错误纠正
网络层: Network layer, 路由选择
    - 提供逻辑寻址, 以便路由进行选择
数据链路层: Data Link layer, 组帧
    - 将数据包组合为字节, 字节组合为帧
    - 使用 MAC 地址提供对介质的访问
    - 执行差错检测, 但不纠正
物理层: Physical layer, 物理拓扑
    - 在设备之间传输比特流
    - 指定电压大小, 线路速率和电缆的引脚

---------------------------------------------------

应用层
用户与计算机进行实际通信的地方.
是实际应用程序之间的接口.

表示层
为应用层提供数据, 并负责数据转换和编码格式化. 一些标准还包含多媒体操作.

会话层
负责建立, 管理和终止表示层实体之间的会话连接. 在设备节点之间提供会话控制.
在系统之间协调通信过程, 提供三种方式来组织它们的通信: 单工, 半双工和全双工.
使不同应用程序的数据和其他应用程序的数据保持隔离.

传输层
将数据分段并重组为数据流. 例如 TCP, UDP.
对高层隐藏了任何与网络有关的细节信息.
传输层可以是无连接或是面向连接的(可靠的).
-流量控制:
    防止另侧接受主机的缓冲区产生溢出而导致丢失数据
    * 根据所传送数据段的接受情况, 对发送方做出确认
    * 重传没有收到确认的数据段
    * 根据到达接受方的情况, 对数据段进行排序, 以得到正确的顺序
    * 维持可管理的数据流量, 以避免拥塞, 过载和数据丢失
    : 为接受方提供一种方法, 以管理由发送方发送的数据量
-面向连接的通信:
    面向连接的会话(三方握手)步骤:
        * 第一个数据段, "同意连接", 用来请求同步
        * 第二个和第三个数据段用来确认请求并在主机间建立连接参数
        * 最后一个数据段也用来进行确认. 它通知目的主机已同意建立连接(并且已经建立了实际的连接). 可以开始传输数据了.
一台机器收到大量数据报而来不及处理时, 会将它们存在缓冲区. 如果内存即将耗尽, 流量控制系统将发出"未准备好"信号给发送方.
接收方处理完其在缓冲区的数据后, 会发送"已经准备好"的传输提示. 恢复数据传输. 
在可靠的面向连接的传输中, 数据报到接收方的顺序与他们发送时的顺序是一致的, 如果顺序被破坏, 传输就失败了.
面向连接服务的特征:
    建立了一条虚电路(比如三方握手)
    使用了排序
    使用了确认
    使用了流量控制(缓冲, 窗口机制, 拥塞避免)
-窗口机制:
    在从接收方收到确认之前, 利用时间间隔发送更多的数据. (允许发送的数据段的数量称为"窗口", 以字节计)
    窗口用来控制未被确认的数据段的数量.(实际中计算的是可以发送的字节数量)
    如果接受方不能收到应当确认的所有数据段, 它将自动减小窗口尺寸, 以改进通信会话质量.
-确认:
    接收方在收到数据时, 通过向发送方回送一个确认信息, 与发送方机器保持通信.
    发送方会启动一个计时器, 如果收到确认前计时器到期, 则重传数据段.
例如发送方发送数据段1,2,3, 接受方发送请求发送数据段4确认收到这三个数据段. 
收到确认后发送方发送数据段4,5,6, 如果5没有到达目的地, 接收方就请求重传数据段5, 发送方将重新发送丢失的数据段并等待确认, 确认后, 继续发送数据段7.

网络层
也叫第3层, 负责设备的寻址, 跟踪网络中设备的位置, 并决定传送数据的最佳路径.
路由器工作在网络层, 在互联网络中提供路由选择服务.
它的工作过程: 首先当它的端口接受到一个包时, 路由器就检查其目的 IP 地址. 如果不是发给它的, 
它就在路由表中查找目的网络地址. 找到对应外部出口时, 包就被送到那个网络接口上并封装成帧, 送出本地网络.
如果在路由表中找不到对应包的目的网络表项, 它就丢弃该包.
在网络层中有两种类型的包: 数据包和路由更新包.
数据包:
    用来在互联网络中传送用户数据.
    用来支持数据传送的协议叫被动路由协议. 例如 IP, IPv6.
路由更新包:
    向相邻路由器通告连接到网络的所有路由器的更新信息.
    发送路由更新包的协议叫主动路由协议. 例如 RIP, RIPv2, EIGRP, OSPF.
    用于帮助构建和维护路由表.
路由表包含下列信息:
    网络地址, Network address (与特定协议有关的网络地址, 各种主动路由协议单独维护一张路由表, 每个主动路由协议都采用不同的寻址方案, 如 IP, IPv6, IPX)
    接口, Interface (出口)
    度量, Metric (指远程网络的距离)




</t>
<t tx="andelf.20090813161714.1240"></t>
<t tx="andelf.20090813161714.1241">DHCP协议在RFC2131种定义，使用udp协议进行数据报传递，使用的端口是67以及68.

DHCP服务的系统最基本的构架是 client/server模式，并且如果client 和server不再同一个2层网络内（即广播可以到达的网络范围），则必须要有能够透过广播报文的中继设备，或者能把广播报文转化成单播报文的设备（cisco的ios就引经了这种功能）

CISCO的路由器（IOS12.0 T1以后），可以配置为dhcp的中继设备，DHCP的客户端设备，也可以配置为DHCP的服务器。

同一个网段DHCP服务器可以有多个，这不会影响终端设备从服务器获取配置信息，终端设备以接受到的第一组配置信息为准。以后又服务器段返回的DHCP配置信息被抛弃。

DHCP 服务器往往遵守先来先服务的规则（first-come, first-served），或者说他能够建立一个IP地址和终端设备MAC地址之间的映射表（或者叫做database）,由此可以保证特定的终端（也就是特定的MAC）每次开机后都能够获得此相同的ip地址。

</t>
<t tx="andelf.20090813161714.1242">Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#interface Ethernet0
Router1(config-if)#ip helper-address 172.25.1.1 /*指定dhcp服务器的地址，表示通过Ethernet0向该服务器发送DHCP请求包*/
Router1(config-if)#ip helper-address 172.25.10.7 /*作用同上*/
Router1(config-if)#end
Router1# 


关于以上配置的讨论
     1 在客户端设备和DHCP服务器不再同一广播域内的时候，中间设备即路有器（路有功能的设备）必须要能够转发这种广播包，具体到 cisco 的设备上，则启用ip helper-address命令，来实现这种中继。
     2 DHCP服务器要给终端设备分配地址则需要掌握两个重要的信息，第一，该客户端设备所在网络的子网掩码，DHCP服务器依据子网掩码的信息来判断，服务器该分配哪个IP地址，以使得该ip地址在那个子网内，第二，DHCP服务器必须知道客户端的MAC地址，以维护DHCP服务器的ip 地址和MAC之间的映射关系，由此保证同样一台客户机，每次启动后能获得和前一次相同的ip地址。Www.GongWu.Com.Cn 2007-1-19 4:58:01
     3 配置了ip helper-address命令之后的路由器在中继DHCP请求时的工作过程如下

     a,DHCP客户端发送请求，由于没有ip地址，所以自己的源IP地址为0.0.0.0，而且也不知道目的DHCP服务器的地址，所以为广播255.255.255.255。该数据报中当然还包含其他信息，比如二层的信息，源mac地址，和目的mac地址FFFFFFFFFFFF。

     b，当路由器接收到该数据报的时候，他就用自己的接口地址（接收到数据报的接口）来取代源地址0.0.0.0，并且用ip help-address 命令中指定的地址（上例中为172.25.1.1以及172.25.10.7）来取代目的地址255.255.255.255

     c 当DHCP服务器接收到路有器转发过来的DHCP请求包时，他有了足够的信息，（由源IP地址中的地址，确定客户机所在的子网掩马，由此分配相应地址池中的空闲地址，并且知道了客户记得MAC地址，把它写入自己的数据库，建立IP地址和MAC的映射关系）然后DHCP服务器做出响应，并且由路有器把数据报转发会客户端。（整个过程应该在客户机和服务器之间还有一次会话，由于这不是路由器DHCP配置的讨论重点，这里不谈）
     4 例子中配置了两个DHCP服务器，我们必须分别用ip helper-address 命令指明，路有器会转发DHCP请求包到所有的DHCP服务器上。很多企业的做法都是至少有两台DHCP服务器，有提高冗余和可靠性的作用。此时，如果客户端受到几个来自不同DHCP服务器的应答，则只选择最先接收到的应答数据报。

     5 必须要注意的是；ip helper-address 命令不仅仅是只转发DHCP请求包，事实上，在默认情况下，他还转发其他的UDP报（比如DNS请求）到ip helper-address命令所指定的服务器上，所以这种额外的数据流量可能会增加DHCP服务器链路的负担以及服务器CPU负担，可能会引起问题，关于解决办法，将在后面讨论。
     
     最后 用show ip interface 显示相关的ip help-address配置信息:

Router1#show ip interface Ethernet0
Ethernet0 is up, line protocol is up
Internet address is 192.168.30.1/24
Broadcast address is 255.255.255.255
Address determined by setup command
MTU is 1500 bytes
Helper addresses are 172.25.1.3
172.25.1.1
Directed broadcast forwarding is disabled

Router1#


在配置了dhcp中继的路由器上，禁止无意义udp广播报的转发


     正如前面章节说描述的那样，路由器上配置IP helper addresses命令后，默认情况下路由器不仅转发dhcp请求，同时也转发其他的udp报，这样很可能会增加DHCP 服务器所在链路的负担，同时也增加了DHCP 服务器的CPU利用率，这可能会引起很严重的网络通信问题。
所以cisco 的ios 提供了限制ip helpe-address 命令所带来的负面影响的方法。

解决实例；
CISCO路由器允许用no ip forward-protocol udp 命令来禁止对所无意义的UDP`数据报的转发

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#no ip forward-protocol udp tftp 
//禁止转发tftp请求数据报文
Router1(config)#no ip forward-protocol udp nameserver
//禁止转发nameserver请求数据报文
Router1(config)#no ip forward-protocol udp domain
//禁止转发domain请求数据报文
Router1(config)#no ip forward-protocol udp time
//禁止转发time请求数据报文
Router1(config)#no ip forward-protocol udp netbios-ns
//禁止转发netbios-ns请求数据报文
Router1(config)#no ip forward-protocol udp netbios-dgm
//禁止转发netbios-dgm请求数据报文
Router1(config)#no ip forward-protocol udp tacacs
//禁止转发tacacs请求数据报文
Router1(config)#end
Router1# 

关于配置的相关讨论；
     1 配置了DHCP中继的路由器，默认情况下也转发下列udp 广播报文.

     2 尤其是在windows的网络环境中，在没有配置no ip forward-protocol udp 的情况下，DHCP 服务器会接受到来自各个不同网段的大量的NetBIOS 请求报文，这通常是引起网络拥挤，阻塞的一个很大的原因，所以作为一个基本的配置准则，我们推荐你使用no ip forward-protocol udp netbios-ns 和 no ip forward-protocol udp netbios-dgm 这两条配置命令来限制路由器向DHCP服务器转发NetBIOS请求报文。

     3 上面的实例中禁止了所有不必要的协议的转发，在实际的应用中，很多大公司通常只禁止NetBIOS 请求报文的转发，这主要是因为NetBIOS 报文是引起网络问题的关键原因所在。

     4 必须认识到，配置了udp中继（ip hlpe-address x.x.x.x.）的路由器并没有实现针对不同协议，转发到不同的（或者说指定的服务器上）的功能。她会傻傻的，一古脑儿的把所有的协议(上表中所列的协议)，义无反顾的发往所有的服务器。
例如，有server1 为dhcp 服务器（1.1.1.1 ） server2 为dns服务器（2.2.2.2）

在路由器上 配置如下后
Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#interface Ethernet0
Router1(config-if)#ip helper-address 1.1.1.1
Router1(config-if)#ip helper-address 2.2.2.2
Router1(config-if)#end
Router1#

</t>
<t tx="andelf.20090813161714.1243">配置路由器为DHCP客户端，使之动态获取ip地址

问题的提出:
     有时候，你会希望自己的网络中的路由器动态获取ip地址（即配置路由器作为dhcp服务的客户端），这种情况通常是不多见的，我们也强烈不建议这么做，因为路由器作为网络中间设备需要有高度的可管理性以及可靠性，而动态地址是我们的路由器管理变得更加复杂和不稳定。
但是，有一种情况比较适合配置路由器为dhcp客户端，那就是路由器作为局域网（或者说内部网）的边界连接到isp的时候。

解决实例；
     用ip address dhcp client-id 命令来配置路由器为DHCP的客户端，由此动态获取ip地址

Router1#configure terminal
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#interface Ethernet0
Router1(config-if)#ip address dhcp client-id Ethernet0 //开启DHCP的客户端，以使得该接口动态的从DHCP服务器端获得IP地址
Router1(config-if)#end
Router1#
Interface Ethernet0 assigned DHCP address 172.25.1.57, mask 255.255.255.0
Router1#

关于配置的相关讨论；
     1 CISCO的IOS在版本12.1(2)T之后，加入了DHCP客户端以及DHCP服务器端功能，也就是说，在这之前的IOS只能配置DHCP的中继功能（ip helper-address）。

     2 和普通的DHCP客户端一样，路由器配置为DHCP客户端后，也可以自动获得除ip地址以外的相关配置信息，例如网络掩码，默认网关，域名，DNS SERVER的ip地址。但是，要记住如果路由器本身用命令静态配置了域名，则路由器自身静态配置的域名为最终配置结果，而对于DNS SERVER 的信息，则是把动态获取的DNS SERVER ip 地址以追加的方式加入到静态配置表中去。

     3 下面的输出是路由器动态获得默认路由的情况下的输出，输出显示由DHCP动态获得的路由条目为S（静态）,AD（管理距离为254）,这里值得注意的是AD自动被设置为254，由此保证由DHCP获得的路由是作为最后路由被路由器选择的，也就是说只有在静态路由，以及其他动态路由协议的路由表中不存在相应的路由条目的时候才被选择。



Router1#show ip route
Codes: C - connected, S - static, I - IGRP, R - RIP, M - mobile, B - BGP
D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
E1 - OSPF external type 1, E2 - OSPF external type 2, E - EGP
i - IS-IS, L1 - IS-IS level-1, L2 - IS-IS level-2, ia - IS-IS inter area
* - candidate default, U - per-user static route, o - ODR
P - periodic downloaded static route

Gateway of last resort is 172.25.1.1 to network 0.0.0.0

172.25.0.0/24 is subnetted, 1 subnets
C 172.25.1.0 is directly connected, Ethernet0
S* 0.0.0.0/0 [254/0] via 172.25.1.1
Router1#

     4 在ISP的解决方案中，一般都会给路由器分配域名以及DNS server地址等信息。
可用show host命令来查看相关的信息；下面的例子显示了通过dhcp获得域名，以及DNS server地址等信息；

Router1#show host
Default domain is oreilly.com
Name/address lookup uses domain service
Name servers are 255.255.255.255, 172.25.1.1

Host Port Flags Age Type Address(es)
None (temp, OK) 0 IP 192.168.22.57
Router1#

     5 一般可以用show ip interface命令来查看路由器通过dhcp获得的ip地址等相关信息，看下面的例子

Router1#show ip interface
Ethernet0 is up, line protocol is up
Internet address is 172.25.1.57/24
Broadcast address is 255.255.255.255
Address determined by DHCP
MTU is 1500 bytes

     6 最后，再次强调不推荐把路由器配置为dhcp的客户端。当然下面两种情况除外，
■　就是当路由器作为网络边界设备连接进isp的时候，可以考虑（比如现在很流行的adsl服务，往往就采用动态获取地址，这是不是一个很迷你的应用呢？）

■ 作为funs的娱乐手段，如果你却是觉得这个技术很有意思，想在其中遨游一番，你不妨躲进实验室好好的享受享受。

     7 很遗憾，到现在为止cisco的路由器在配置为dhcp客户端的时候，并没有提供一种指定所要获取的信息的方法，也没有提供如何察看现有的动态获得的ip地址的所剩租期。相信，CISCO马上会在这方面有所改进。


</t>
<t tx="andelf.20090813161714.1244">配置路由器为DHCP服务器，使之给dhcp客户端动态分配ip地址

问题的提出:
把路由器配置为dhcp的服务器端，以对路由器下所连接的客户工作站进行ip地址的分配。
（这可真是一个了不起的改进！路由器从此腰身一变，看上去更加多姿多彩了）

解决实例；
下面的配置命令，可以配置路由器为DHCP服务器，用以给DHCP客户端动态分配ip地址。

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#service dhcp //开启 DHCP 服务
Router1(config)#ip dhcp pool 172.25.1.0/24 //定义DHCP地址池
Router1(dhcp-config)#network 172.25.1.0 255.255.255.0 // 用network 命令来定义网络地址的范围
Router1(dhcp-config)#default-router 172.25.1.1 //定义要分配的网关地址
Router1(dhcp-config)#exit
Router1(config)#ip dhcp excluded-address 172.25.1.1 172.25.1.50 //该范围内的ip地址不能分配给客户端
Router1(config)#ip dhcp excluded-address 172.25.1.200 172.25.1.255 //该范围内的ip地址不能分配给客户端
Router1(config)#end
Router1#

关于配置的相关讨论；

1 CISCO路由器的dhcp服务器功能也是在ios 12.0(1)T.以后才出现的，这一功能的出现，使我们没有必要在专门网络的中心（或者说企业本部）另外配置一台DHCP server，从而降低了网络构建成本。

2 在路由器上直接配置dhcp服务器相比于传统的在专门服务器上实现dhcp有其独到的优点。
比如 

A 由于传统的构建方法是，在企业的总部设立DHCP服务器，各分支机构通过路有器去获取ip地址，所以当dhcp服务器出现问题的时候，整个企业的网络都会受到影响，而如果把dhcp 服务器功能设在各个分支机构的路由器上实现，则某个分支机构的路由器DHCP出现问题，就只能影响该分支机构的网络本身，而其他分支机构则不受任何影响。从而可见，实现了问题的局部化。

B 在各分支机构的路由器上实现DHCP服务器功能后，大量的DHCP UDP请求报文将不会通过wan link 转发到 中心机构上去，由此，相比于传统的方式，它有减少广域网负荷的优点。

C 同样的道理，在各分支机构的路由器上实现DHCP服务器功能后，如果某条广域网连路坏了，本地的局域网依然能够正常运行

D基于路由器的DHCP 具有很高的可管理性，它通过ios的命令界面是比较容易配置的。



3 上边的配置例子，我们用ip dhcp exclude-address 命令来指定不能用来被分配的ip地址,这种配置往往是很需要的（甚至说是必需的，几乎所有的；路有其DHCP 服务器配置中都会有），因为往往有一些地址我们会用来作为其他的用途，比如，我们至少应该保留路有器本身的地址不被分配给dhcp客户端，还有一些比如说网络服务器，打印机等等，我们也往往会给他指定静态的地址，所以这一部分地址。我们不允许路有其分配出去，上例中的172.25.1.1 到172.25.1.50 之间，172.25.1.200 到172.25.1.255的地址就做了保留。

4 当路由器给客户端动态分配地址后，就会绑定（binding）分配的ip地址以及客户端设备的mac地址信息，保存在路由器的配置中，以便下一次相同的mac地址请求dhcp服务也能够获得同样的ip地址。下面给出的例子是，用show ip dhcp binding 命令显示的 ip binding的信息。其中Lease expiration 表示该ip 地址，客户端还能占有的时间，（当然客户端可以在期满之前再次发送dhcp请求报，事实上dhcp的规范也是有这样的规定的，即在租期还有一半时间的时候就会发出dhcp请求，如果租期更新失败，那么再过省下时间的一半的时候，他还会发出dhcp的请求，依此类推。）

Router1#show ip dhcp binding
IP address Hardware address Lease expiration Type
172.25.1.51 0100.0103.85e9.87 Apr 10 2003 08:55 PM Automatic
172.25.1.52 0100.50da.2a5e.a2 Apr 10 2003 09:00 PM Automatic
172.25.1.53 0100.0103.ea1b.ed Apr 10 2003 08:58 PM Automatic
Router1#


</t>
<t tx="andelf.20090813161714.1245">配置DHCP服务器的各种选项


问题的提出；
你希望在dhcp服务器中配置各种参数，已用来动态分配给dhcp客户端。

解决方案；
你可以通过下面的命令来配置各种dhcp参数。

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool ORAserver
Router1(dhcp-config)#host 172.25.1.34 255.255.255.0
Router1(dhcp-config)#client-name bigserver
Router1(dhcp-config)#default-router 172.25.1.1 172.25.1.3
Router1(dhcp-config)#domain-name oreilly.com
Router1(dhcp-config)#dns-server 172.25.1.1 10.1.2.3
Router1(dhcp-config)#netbios-name-server 172.25.1.1 
Router1(dhcp-config)#netbios-node-type h-node
Router1(dhcp-config)#option 66 ip 10.1.1.1 
Router1(dhcp-config)#option 33 ip 24.10.1.1 172.25.1.3 
Router1(dhcp-config)#option 31 hex 01
Router1(dhcp-config)#lease 2
Router1(dhcp-config)#end
Router1#

关于配置的相关讨论；

1 dhcp可以动态分配除ip 地址以外的默认路由，域名，域名服务器的地址，wins 服务器的地址等信息给客户端。在RFC2132种定义了大量的标准配置选项，可以在那里阅读到更加详细的信息。但是大部分的DHCP配置往往只是用到其中规定的很小的一部分常用选项。

2 为了配置的简单化和易于理解，cisco提供了一些人类易于理解的别名来代替RFC2132种规定的配置选项.

然你既可以使用cisco提供的用户友好的别名来配置，也可以用option number命令来配置，这两种方式cisco的ios都是可接受的。
比如说 
RFC 2132 中的option 6是表示域名服务器的地址，则以下的两种命令行结果一样；
Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool 172.25.2.0/24
Router1(dhcp-config)#dns-server 172.25.1.1
Router1(dhcp-config)#end
Router1#
配置方式一
Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool 172.25.2.0/24
Router1(dhcp-config)#option 6 ip 172.25.1.1
Router1(dhcp-config)#end
Router1#
配置方式二

值得注意的是，你配置路由器的时候敲入的是配置2的命令，但是show runining configuration 命令得到则是他的用户友好的别名，这可能会使你有些疑惑，但是实际上其结果是一样的，请你放心。

3 有些配置选项可以接受多个配置参数，例如默认路由以及域名服务器都可以接受最多八个地址的配置，上面例子中就分别配置了两个默认路由器（默认网关）和两个域名服务器的地址。

4 为了配置的方便，你也可以采用继承的方法来配置各种参数。如下实例，首先配置父亲的dhcp地址池 ROOT (172.25.0.0/16)，其次我们又配置了两个子地址池172.25.1.0/24 和172.25.2.0/24。这两个子地址池，能够自动继承父亲地址池的配置信息。当然，如果子地址池的配置信息和父亲地址池的配置信息重复，则孩子地址池的信息覆盖父亲地址池的配置信息。

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool ROOT
Router1(dhcp-config)#network 172.25.0.0 255.255.0.0
Router1(dhcp-config)#domain-name oreilly.com
Router1(dhcp-config)#dns-server 172.25.1.1 10.1.2.3
Router1(dhcp-config)#lease 2
Router1(dhcp-config)#exit
Router1(dhcp)#ip dhcp pool 172.25.1.0/24
Router1(dhcp-config)#network 172.25.1.0 255.255.255.0
Router1(dhcp-config)#default-router 172.25.1.1 
Router1(dhcp-config)#exit
Router1(dhcp)#ip dhcp pool 172.25.2.0/24
Router1(dhcp-config)#network 172.25.2.0 255.255.255.0
Router1(dhcp-config)#default-router 172.25.2.1
Router1(dhcp-config)#lease 0 0 10
Router1(dhcp-config)#end
Router1#
必须说明的是，dhcp租期配置信息是唯一不能继承的dhcp配置选项，也就是说，你必须为每个孩子地址池显式配置dhcp租期。如果该地址池没有配置dhcp租期。则路由器使用默认的租期（24小时）。

5 上面的实例中有几个用option配置的命令，其配置的意义为；
Router1(dhcp-config)#option 66 ip 10.1.1.1 
Router1(dhcp-config)#option 33 ip 192.0.2.1 172.25.1.3 
Router1(dhcp-config)#option 31 hex 01
option 66 ip 定义了tftp 服务器。
Option 33 ip 定义了静态路由，他告诉所有的终端设备将发往目的地192.0.2.1的数据报，首先发送到172.25.1.3。
Option 31 规定了客户端使用ICMP Router Discovery Protocol（IRDP）.使用这个协议，客户端可以定期从本地路由器获得更新信息，用以决定自己的最新的默认网关地址。

</t>
<t tx="andelf.20090813161714.1246">问题的提出:
DHCP的租期（DHCP Lease Periods）是DHCP相关知识中，一个比较重要的该概念，这里单独列出来进行说明。

基本的配置如下；

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool 172.25.2.0/24
Router1(dhcp-config)#lease 2 12 30 
Router1(dhcp-config)#end
Router1#

关于配置的讨论；
1 lease 命令的基本格式是 lease [days] [hours] [minutes]
上面的例子，表示设定DHCP租约为2天12小时30分。 你可以配置最大值为365天23小时59秒，也可以设置最小值1秒。默认的DHCP租约是1天。

2 一般的规则是，对于那种dhcp客户端数量比较大，并且客户端联入网络，断开网络比较频繁的场合，一般把租约的时间配置的比较短，这样子使得ip地址很快被收回，可以供另外的dhcp请求客户使用。比较经典的场合时比如飞机场的无线网络。但是越短的租约，也使得dhcp请求包过多，增加了网络的负担。

3 相反的，在一个相对稳定的网络环境中，比如小型的办公室网络，由于客户端的数量往往变化不大，所以可以考虑适当的增加dhcp的租约。这样做的主要好处是，可以减少dhcp服务器的负担。

4 记住，客户端在自己的租约还有一半的时候，就会向服务器发出更新租约的请求，如果成功，则租约从新恢复为完整的租期，如果失败，则又过剩下的一半租约后，再发出更新请求，如此规律，直到成功更新为止。

5 在很多场合，默认的一天的租约是比较合理的，一般很少作修改。

5 一种比较极端的配置是，你可以规定租约为永久，即一旦客户端获得了ip地址后，只要他不物理断网，以后就再也不会向服务器发送dhcp租约更新请求了。这种配置在现实中就更加少见了。
配置命令如下；

Router1#configure terminal 
Enter configuration commands, one per line. End with CNTL/Z.
Router1(config)#ip dhcp pool COOKBOOK
Router1(dhcp-config)#lease infinite //规定租约为无限制
Router1(dhcp-config)#end
Router1#

6 你可以用show ip dhcp binding 命令察看dhcp租约。
Router1#show ip dhcp binding 
IP address Hardware address Lease expiration Type
172.25.1.33 0100.0103.85e9.87 Infinite Manual
172.25.1.53 0100.0103.ea1b.ed Apr 11 2003 08:58 PM Automatic
172.25.1.57 0100.6047.6c41.a4 Apr 11 2003 09:17 PM Automatic
Router1#
</t>
</tnodes>
</leo_file>
