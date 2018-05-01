## 民间空气质量数据共享计划

**自制一个PM2.5/10 监测仪，获取真实的 AQI 数据。**

### 部署
- 设备（华强北可买到）：
	- 树莓派（任何型号都可）
	- SDS011 颗粒物质传感器

详情请阅读博客：https://mdrights.github.io/os-observe

### 分享你的数据
- 本仓库里的脚本会把最新测量到的 PM2.5/PM10 值发送到：  
	- [Riot.im 上的频道：#aqi-data-share](https://riot.im/app/#/room/#aqi-data-share:matrix.org)  

- 访问数据  
下载安装 Riot.im 应用（电脑/手机），或   
电脑浏览器访问上面的网址。  
（无需注册）  


### 功能

- aqi: 修改自 @zefanja 的python 脚本，读取传感器的数据（每小时采集一次）；javascript 脚本呈现数据并计算AQI。  
- irc-client.py: 发送最新的值到 IRC 的频道。  
- aqi-send.sh: 解析数据（用`jq`），然后调用 `irc-client.py`。  
- aqi-keepalive.sh: （定期检查）aqi.py 是否在运行；如没有则启动之。

### 启动
- 克隆本仓库到树莓派（或任何一种单板/开发板）你的用户家目录下；  
- 安装 jq（apt/yum 安装，或从Github/别处下载）；  
- 先启动 `aqi/aqi.py` 放入后台，再使用 cron 定时执行 `aqi-end.sh` 即可。
