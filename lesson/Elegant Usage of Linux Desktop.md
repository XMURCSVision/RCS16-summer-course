## linux终端快捷键
- **`Ctrl + Alt + t` 新建终端**
- `Shift + Ctrl + t` 在已有终端上打开新的tab
- `Ctrl + d` 关闭当前tab，若只有一个tab则关闭终端
- `Shift + Ctrl + q` 关闭当前终端，无论终端有几个tab
- `F11` 切换全屏/退出全屏
- `Ctrl + Shift + =` 放大终端字体
- `Ctrl + -` 缩小终端字体
- **`Ctrl + Shift + C` 复制**
- **`Ctrl + Shift + V` 粘贴**
- `鼠标滚轮` 如果用鼠标选中一段连续的文本，直接点击鼠标滚轮即可完成复制、粘贴的功能，粘贴位置在当前活动光标处
- `Alt + b`或`Alt + 键盘左键` 向前移动一个词的距离。如果shell终端配置启用了可以通过快捷键打开菜单，会发生冲突，解决办法是禁用这个功能或者和Shift键一起使用
- `Alt + f`或`Alt + 键盘右键` 向后移动一个词的距离。如果shell终端配置启用了可以通过快捷键打开菜单，会发生冲突，解决办法是禁用这个功能或者和Shift键一起使用
- `Esc + b`或`Esc + 键盘左键` 移动到当前单词的开头
- `Esc + f`或`Esc + 键盘右键`移动到当前单词的结尾 
- **`Ctrl + a` 移动光标到命令行首**
- **`Ctrl + e` 移动光标到命令行尾**
- **`Tab` 自动补全**
- **`Ctrl + w` 删除光标之前的一个词**
- **`Alt + d` 删除光标之后的一个词**
- **`Ctrl + u` 从当前光标所在位置向左全部删除**
- **`Ctrl + k` 从当前光标所在位置向右全部删除**
- [参考文章](https://zhuanlan.zhihu.com/p/29538650)
## linux常用指令
- `ls` 列出当前目录下文件和文件夹
- `pwd` 显示当前目录的绝对路径
- `mkdir` 
  - 语法`mkdir [-p] dirname`
  - 添加`-p`选项可以直接创建完整目录
- `whoami` 显示当前用户名
- `file filename` 显示指定
- 文件的属性。
- `type -p commandname`
      显示命令 `commandname` 所在的地方。
      `which commandname` 也可以用来做这个
- `type commandname`
      显示命令 `commandname` 的信息。
  apropos key-word
      找到和 key-word相关的命令。
      man -k key-word也可以做到
  whatis commandname
      显示该命令的一句话帮助。 commandname.
  man -a commandname
      显示命令的解释信息。 commandname. (Unix style)
  info commandname
      显示很长的命令解释 commandname. (GNU style)

ls

      列出目录内容 (非以.开始的文件和目录) 
  ls -a
      列出目录内容（所有的文件和目录）
  ls -A
      列出目录内容。（几乎所有的文件和目录，略去".." and "."）
  ls -la
      列出目录所有文件和目录的详细信息。查看 Ubuntu 中的文件系统概念, 第 4.5.2 节。
  ls -d *
      列出当前目录下的目录名称，而不是目录下的内容。
  lsof foo
      显示文件foo的打开状态。
  mkdir foo
      在当前目录下创建一个新的目录foo。
  cd foo
      切换到当前目录下或者在变量CDPATH中列出来的目录foo。在builtins(7)查看命令cd。
  cd /
      切换到根目录。
  cd
      切换到用户主目录。
  cd /foo
      切换到绝对路径/foo所指定的目录。
  cd ..
      切换到上一级目录。
  cd ~/foo
      切换到用户主目录下的foo目录去。
  cd -
      切换到上一次所去的目录。
  </etc/motd pager
      使用默认的分页程序查看文件/etc/motd的内容，参照 command < foo, 第 4.3.10.9 节。 
  touch junkfile
      创建一个空文件junkfile。
  cp foo bar
      拷贝一个已有的文件foo到新文件bar。
  rm junkfile
      删除文件junkfile。
  rmdir bar
      删除空目录bar。 (目录bar必须为空目录）
  mv foo bar
      把已有的文件foo重命名为bar
  mv foo bar/baz
      把已有的文件foo移动到新位置并重命名为bar/baz。目录bar必须存在。
  chmod 600 foo
      让已经存在的文件foo其他人不能读写。（所有人都 不能执行）。
  chmod 644 foo
      使文件foo其他的人可以读，但是不能写。（所有人 都不能执行）
  chmod 755 foo
      使文件foo其他的人能读不能写。（所有人都可以执行）
  top
      全屏显示进程信息。输入”q”退出。
  ps aux | pager
      用BSD风格输出所有正在运行的进程的信息。参照 command1 | command2, 第 4.3.10.2 节。
  ps -ef | pager
      用system-V风格来输出所有正在运行的进程的信息。
  ps aux | grep -e "[e]xim4*"
      显示exim4进程，或者运行exim的进程。输入man grep可以从grep(1)的手册页学习正则表达式。 
  ps axf | pager
      用ASCCI艺术形式来显示运行所有进程信息。
  kill 1234
      杀死进程号为1234的进程。 查看 中止一个进程, 第 8.5.1 节。
  killall Xorg
      重新启动Xwindow。
  grep -e "pattern" *.html
      找到当前目录下面所有以.html结尾的文件中含有"pattern"的行，并显示它们。
  gzip foo
      用Lempel-Ziv(LZ77)压缩算法压缩foo，生成foo.gz。
  gunzip foo.gz
      将文件foo.gz解压缩生成foo。
  bzip2 foo
      将文件foo.bz2解压缩生成foo。
  tar -xvvf foo.tar
      从打包文件foo.tar解出文件来。
  tar -xvvzf foo.tar.gz
      从打包压缩的文件foo.tar.gz中解开文件。
  tar -xvvf --bzip2 foo.tar.bz2
      从文件foo.tar.bz2解压缩文件。 
  tar -cvvf foo.tar bar/
      把目录bar/的内容打包存放到foo.tar存档中。
  tar -cvvzf foo.tar.gz bar/
      把目录bar/的内容打包并且压缩存放到foo.tar.gz存档中。
  tar -cvvf --bzip2 foo.tar.bz2 bar/
      把目录bar/中的内容打包存放到foo.tar.bz2存档里面。 
  zcat README.gz | pager
      使用默认的分页显示程序pager来显示压缩文件README.gz中的内容。
  zcat README.gz > foo
      使用文件README.gz解开后的内容创建一个文件foo。
  zcat README.gz >> foo
      把文件README.gz解开后的内容追加到文件foo的后面（如果文件不存在的话，就会创建一个）。
  find . -name pattern
      用shell找到匹配pattern的文件名（慢一些）。
  locate -d . pattern
      用shell找到匹配pattern的文件名（使用已有的规则的数据库，快一些）。