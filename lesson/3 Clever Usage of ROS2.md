## ROS2简介
ROS2是在ROS(Robot Operating System)的基础上设计开发的第二代机器人操作系统<br>
ROS本身并不是一个操作系统，而是可以安装在现在已有的操作系统上（Linux、Windows、Mac）上的软件库和工具集<br>
ROS出生于2007年，ROS的出现解决了机器人各个组件之间的通信问题，同时基于ROS的完善的通信机制，越来越多的优秀的机器人算法集成到了ROS中来<br>
现在的ROS功能已经变得非常的丰富和强大。但随着对ROS功能上要求越来越多，一些原始的架构和设计不能够满足目前的使用需求，这也是ROS2出现的原因<br>
ROS2继承了ROS原有的优秀之处，同时又带来了很多新的功能,ROS2相对于ROS更加的强大
> **参考文章**<br>
> [ROS的前世今生](https://fishros.com/d2lros2foxy/#/chapt1/1.1ROS2%E7%9A%84%E5%89%8D%E4%B8%96%E4%BB%8A%E7%94%9F)<br>
> [ROS与ROS2对比](https://fishros.com/d2lros2foxy/#/chapt1/1.2ROS%E4%B8%8EROS2%E5%AF%B9%E6%AF%94)<br>
> [ROS扩展阅读](https://fishros.com/d2lros2foxy/#/chapt1/%E6%89%A9%E5%B1%95%E9%98%85%E8%AF%BB1-ROS2%E4%B8%AD%E9%97%B4%E4%BB%B6)
## 安装ROS2
#### 手动安装
##### 添加下载源
```shell
echo "deb [arch=$(dpkg --print-architecture)] https://repo.huaweicloud.com/ros2/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
```
##### 添加源对应的密钥
```shell
sudo apt install curl gnupg2 -y
curl -s https://gitee.com/ohhuo/rosdistro/raw/master/ros.asc | sudo apt-key add -
```
##### 更新软件列表
```shell
sudo apt update    
```
##### 安装ROS2
```shell
sudo apt install ros-humble-desktop
```
##### 配置环境变量
现在可以尝试在终端中输入`ros2`命令，如果出现命令not found，可以执行下面命令后再试一次<br>
```shell
source /opt/ros/foxy/setup.bash
```
这是因为虽然安装好了ros2,但ros2并没有加入到系统默认的环境中来，因此每次使用前需要执行`source`命令，将ros2加入系统环境
##### 永久生效环境变量
现在可以尝试关闭当前终端，再次打开，执行`ros2`命令，你会发现再次出现命令not found，这是因为`source`命令执行后只在当前终端生效，关闭后就会失效<br>
为了加载你的配置， Linux的默认终端 bash 在每次启动时都会加载 `.bashrc` 文件的内容。每个用户的 home 目录都有 `.bashrc` 文件，它用来存储并加载你的终端配置和环境变量。每次启动终端时，都会自动执行写在 `.bashrc` 中的命令<br>

因此我们可以通过修改 `.bashrc` 文件，将命令```source /opt/ros/foxy/setup.bash```加入到`.bashrc` 文件中

你可以通过以下命令实现
```shell
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
```
这个指令的意思是向 `~/.bashrc` 文件写入字符串`"source /opt/ros/foxy/setup.bash"`<br>
其中 `>>` 是重定向符号，意思是将输出重定向到 `~/.bashrc` 文件<br>

你也可以直接使用文本编辑器 `nano` 或 `vim` 或 `gedit` 来向 `~/.bashrc` 文件添加命令```source /opt/ros/foxy/setup.bash```<br>
这三款文本编辑器各有不同，其中 `gedit` 最简单易用，和Windows下记事本的用法没什么差别。另两款文本编辑器可参考教程:
[nano使用教程](https://cloud.tencent.com/developer/article/1935086)
[vim使用教程](https://zhuanlan.zhihu.com/p/149515175)

设置完成后，每次打开终端都能直接用 `ros2` 命令了

#### 通过鱼香ROS一键安装
除手动方法之外还可以使用鱼香ROS一行命令安装
```shell
wget http://fishros.com/install -O fishros && bash fishros
```
> **参考文章**<br>
> [什么是 .bashrc，为什么要编辑 .bashrc？ | Linux 中国](https://zhuanlan.zhihu.com/p/33546077)<br>
> [Linux常用命令13 - echo](https://zhuanlan.zhihu.com/p/122562302)<br>
> [安装ROS2](https://fishros.com/d2lros2/#/humble/chapt1/get_started/3.%E5%8A%A8%E6%89%8B%E5%AE%89%E8%A3%85ROS2?id=_1%e4%b8%80%e9%94%ae%e5%ae%89%e8%a3%85ros2)

## ROS2通信机制