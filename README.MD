
一、mac 上 flutter 安装教程

1、安装flutter 包   百度网盘地址 。 链接:https://pan.baidu.com/s/1S5GB_sAWGnzHHKIo0fBtSw  密码:cqe6

2、解压到您想要安装的目录 。 如 /Users/zhagjianliu/flutter

3、配置环境变量 ,这里笔者使用命令行：

vim ~/.bash_profile


4、增加三行:
export PUB_HOSTED_URL=https://pub.flutter-io.cn 
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/Users/zhangjianliu/flutter/bin:$PATH


5、验证“flutter/bin”是否已在PATH中：

echo $PATH


6、保存完毕之后运行命令:
source ~/.bash_profile


7、检测flutter 是否添加成功

flutter -h



这个时候应该能够展示flutter 的一些命令



二、安装 android studio
百度网盘地址：



第一步：
rm -Rf /Applications/Android\ Studio.app
rm -Rf ~/Library/Preferences/AndroidStudio*
rm ~/Library/Preferences/com.google.android.studio.plist
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*


第二步：删除所有Projects

rm -Rf ~/AndroidStudioProjects


第三步：删除gradle相关文件

rm -Rf ~/.gradle


第四步：卸载所有Android Virtual Devices(AVDs) and *.keystore. note:

rm -Rf ~/.android


第五步：删除Android SDK tools，对应自己的sdk目录即可

rm -Rf ~/Library/Android*



三 、flutter doctor  检测命令

flutter doctor --android-licenses


四、创建 flutter 项目

使用 VS code 或者 android studio 创建 flutter 项目

1、vs code 创建方式 。 

2、android studio 创建方式

3、使用模拟器 创建虚拟 

4、flutter run 启动 flutter



🈚五、过程中遇到的问题及解决方式
1、刚建好一个demo 编译运行一个demo 控制台就出现如下情况

Launching lib/main.dart on Android SDK built for x86 in debug mode...
Initializing gradle...
Resolving dependencies...
* Error running Gradle:
ProcessException: Process "/Users/rabbit/develop/android/flutter_app/android/gradlew" exited abnormally:
Project evaluation failed including an error in afterEvaluate {}. Run with --stacktrace for details of the afterEvaluate {} error.
FAILURE: Build failed with an exception.
* Where:
Build file '/Users/rabbit/develop/android/flutter_app/android/app/build.gradle' line: 25
* What went wrong:
A problem occurred evaluating project ':app'.
> Could not resolve all files for configuration 'classpath'.
   > Could not find lint-gradle-api.jar (com.android.tools.lint:lint-gradle-api:26.1.2).
     Searched in the following locations:
         https://jcenter.bintray.com/com/android/tools/lint/lint-gradle-api/26.1.2/lint-gradle-api-26.1.2.jar
* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.
* Get more help at https://help.gradle.org、
  Command: /Users/rabbit/develop/android/flutter_app/android/gradlew app:properties
Finished with error: Please review your Gradle project setup in the android/ folder.


问题原因是由于 翻墙的问题 解决办法 ：https://segmentfault.com/q/1010000016775662

2、虽然能运行项目了但控制台报如下错误
Error connecting to the service protocol: HttpException: Connection closed before full header was received, uri = http://127.0.0.1:52787/ws


解决方式：问题已解决，是Aandroid版本太高，换8.1就好了
