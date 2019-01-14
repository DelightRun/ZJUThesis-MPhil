ZJUThesis-MPhil
====

本模板适用于计算机学院硕士论文。

# 适用平台与环境
本模板基于`XeTeX+xeCJK+ctex`，在`Windows 7`, `Linux Mint 13（Ubuntu）`以及`OS X Mountain Lion`上测试通过，建议在`Windows`下使用`CTeX`套装，其他平台使用`TeXLive 2012`，不过需要对`ctex-xecjk-winfonts.def`这个文件作一些修改（Linux和OS X下还需要安装Windows下的一些对应字体，比如SimSun等），本文件夹下有对应的改好的文件。

- `CTeX`发行版这个文件在`%CTEXDIR%/MiKTeX/tex/latex/ctex/fontset`下 
   其中`%CTEXDIR%`是`CTeX`的安装目录
- `TeXLive`下这个文件在这里：
	`/usr/local/texlive/2012/texmf-dist/tex/latex/ctex/fontset/`（linux和OS X）下，
   Windows下的类似于这个目录

# 如何使用
## 编译示例文件
- Windows下：`typeset.bat`
- Linux和OS X下：`sh typeset.sh`

## 或者
```bash
make  # 编译tex文件生成pdf
make clean # 删除中间文件
```

## 使用指南
模板内常用的一些排版用法可以在`Sample Document.pdf`中找到，建议参考一些`LaTeX`的教程。
编辑器可以使用`TeXWorks`。

# A Bit More
感谢[ThuThesis](https://github.com/xueruini/thuthesis/  "ThuThesis")以及[zjuthesis](http://code.google.com/p/zjuthesistex/  "zjuthesis")，本模板是在两者基础上调整的，加入了一些新的宏包。
