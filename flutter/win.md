- [起步: 配置编辑器](https://flutterchina.club/get-started/editor/#androidsstudio)

Android Studio/IntelliJ 安装
```
安装Flutter和Dart插件
需要安装两个插件:

Flutter插件： 支持Flutter开发工作流 (运行、调试、热重载等).
Dart插件： 提供代码分析 (输入代码时进行验证、代码补全等).
```

```
要安装这些:

启动Android Studio.
打开插件首选项 (Preferences>Plugins on macOS, File>Settings>Plugins on Windows & Linux).
选择 Browse repositories…, 选择 Flutter 插件并点击 install.
重启Android Studio后插件生效.
```


Visual Studio Code (VS Code) 安装


VS Code: 轻量级编辑器，支持Flutter运行和调试.

安装 VS Code, 安装1.20.1或更高版本.

安装Flutter插件
```
启动 VS Code
调用 View>Command Palette…
输入 ‘install’, 然后选择 Extensions: Install Extension action
在搜索框输入 flutter , 在搜索结果列表中选择 ‘Flutter’, 然后点击 Install
选择 ‘OK’ 重新启动 VS Code
通过Flutter Doctor验证您的设置
调用 View>Command Palette…
输入 ‘doctor’, 然后选择 ‘Flutter: Run Flutter Doctor’ action
查看“OUTPUT”窗口中的输出是否有问题
```
