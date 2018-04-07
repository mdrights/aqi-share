## 民间空气质量数据共享计划

**自制一个PM2.5/10 监测仪，获取真实的 AQI 数据。**

### 设备
（华强北可买到）：
- 树莓派（任何型号都可）
- SDS011 颗粒物质传感器

详情请阅读博客：https://mdrights.github.io/os-observe

### 分享你的数据
- 本仓库里的脚本（) 会把最新测量到的 PM2.5/PM10 值发送到：  
	- [Riot.im 上的频道：#aqi-data-share](https://riot.im/app/#/room/#aqi-data-share:matrix.org)  
	- （同时同步到）IRC(OFTC) 上的频道：#aqi-data-share

- 访问数据  
下载安装 Riot.im 应用（电脑/手机），或  
电脑浏览器访问上面的网址。  
（无需注册）  


### 功能

- aqi: 修改自 @zefanja 的python 脚本，读取传感器的数据（每小时采集一次）；javascript 脚本呈现数据并计算AQI。  
- irc-client.py: 发送最新的值到 IRC 的频道。  
- aqi-start.sh: 解析数据（用`jq`），然后调用 `irc-client.py`。  

### 启动
先启动 `aqi/aqi.py` 放入后台，再使用 cron 定时执行 `aqi-start.sh` 即可。
