% 浙江财经大学本科毕业论文 LaTeX 类文件
% 文件名 "zufe.cls".
% 2024/09/12 made by wzx
\NeedsTeXFormat{LaTeX2e}[1995/12/01] % 指定需要 LaTeX 版本
\ProvidesClass{zufe}[2024/09/12 v1.0 ZUFE Thesis Class] % 类文件的基本信息


% 加载基础类 ctexbook，并设置一些基本选项
\LoadClass[UTF8, AutoFakeBold, AutoFakeSlant, zihao=-4, twoside, openany]{ctexbook}

% 页面布局设置
\RequirePackage[a4paper, left=3cm, right=3cm, top=3cm, bottom=2cm]{geometry}

% 字体设置
\RequirePackage{xeCJK}
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

% 页眉页脚设置
\RequirePackage{fancyhdr}
\fancypagestyle{ZUFEThesis}{ % 定义浙财毕业论文的页眉页脚样式
  % 页眉高度
  \setlength{\headheight}{10pt}
  %页脚高度
  \setlength{\footskip}{14pt}
  \fancyhf{} % 清空页眉页脚
  \renewcommand{\headrulewidth}{0.4pt} % 页眉横线宽度
  \fancyhead[C]{\wuhao\ziju{0.08}\songti{浙江财经大学硕士学位论文}} % 页眉内容
  \fancyfoot[LE,RO]{\songti\zihao{5} \thepage}
}

%支持pdf页面
\RequirePackage{pdfpages}

%让chapter强制不换页,如果需要换页，就把这个注释掉
%\ctexset{chapter/break={}}

% 设置章节样式
\ctexset{
    chapter = {
        format = \centering\rmfamily\zihao{3}\textbf, % 三号，居中
        name = {Chapter\hspace{2mm}}, % 章节名格式
    	   pagestyle = ZUFEThesis,
        number = \arabic{chapter}, % 阿拉伯数字章节号
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
    },
    section = {
        format = \raggedright\rmfamily\zihao{4}\textbf, % 四号，左对齐
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
	   indent=2em    ,  %首行缩进
},
    subsection = {
        format = \raggedright\rmfamily\zihao{-4}\textbf, % 小四号，左对齐
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
	   indent=2em    ,%首行缩进
    },
}

% 常用字号设置
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{50.4pt}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{43.2pt}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{31.2pt}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{28.8pt}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{26.4pt}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{21.6pt}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{19.2pt}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{7.8pt}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{6.6pt}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{6pt}\selectfont}



\RequirePackage{tocloft} % 用于自定义目录样式

% 自定义目录标题样式
\renewcommand{\contentsname}{\centerline{\rmfamily\zihao{3}\bfseries Contents}} % 黑体三号字
\renewcommand{\cfttoctitlefont}{\centering\rmfamily\zihao{3}\bfseries} % 目录标题样式
\renewcommand{\cftaftertoctitle}{\vskip 1\baselineskip}
\renewcommand{\cftbeforetoctitleskip}{1\baselineskip}
\renewcommand{\cftaftertoctitleskip}{1\baselineskip}

% 自定义目录条目样式（章、节）
\renewcommand{\cftchapfont}{\bfseries\rmfamily\zihao{-4}} % Times New Roman 小四号字，章标题
\renewcommand{\cftsecfont}{\rmfamily\zihao{-4}} % Times New Roman 小四号字，节标题


% 目录页码样式
\renewcommand{\cftchappagefont}{\bfseries\rmfamily\zihao{-4}} % Times New Roman 小四号字，页码
\renewcommand{\cftsecpagefont}{\rmfamily\zihao{-4}}  % Times New Roman 小四号字，节页码

% 行距1.5倍
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftsecdotsep}} % 章节行的点加粗
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}

% 控制目录各级标题的缩进
\setlength{\cftchapindent}{0pt} % 章缩进
\setlength{\cftsecindent}{1.5em} % 节缩进

\setcounter{tocdepth}{1} % 设置目录深度为1，只显示章和节
% 设置目录项之间的间距
\setlength{\cftbeforechapskip}{0.5em}
\setlength{\cftbeforesecskip}{0.5em}

% Listings 包设置，用于代码展示
\RequirePackage{listings}
\RequirePackage{xcolor}
\lstset{
    basicstyle = \sffamily, % 基本样式
    keywordstyle = \bfseries, % 关键字样式
    commentstyle = \rmfamily\itshape, % 注释样式
    stringstyle = \ttfamily, % 字符串样式
    numbers = left, % 行号位置
    numberstyle = \zihao{-5}\ttfamily, % 行号样式
    showspaces = false, % 不显示空格
    showstringspaces = false, % 不显示字符串中的空格
    captionpos = t, % 标题位置
    frame = lrtb, % 显示框架
}

% Python 代码风格设置
\lstdefinestyle{Python}{
    language = Python,
    basicstyle = \zihao{-5}\ttfamily, % 基本文本样式
    numberstyle = \zihao{-5}\ttfamily, % 行号样式
    keywordstyle = \color{blue}, % 关键字颜色
    keywordstyle = [2] \color{teal}, % 第二组关键字颜色
    stringstyle = \color{magenta}, % 字符串颜色
    commentstyle = \color{red}\ttfamily, % 注释颜色和样式
    breaklines = true, % 自动换行
    columns = fixed, % 固定列宽
    basewidth = 0.5em,
}

% Java 代码风格设置
\lstdefinestyle{Java}{
    language = [AspectJ]Java, % 语言设置为 Java
    basicstyle = \zihao{-5}\ttfamily, % 基本文本样式
    numberstyle = \zihao{-5}\ttfamily, % 行号样式
    keywordstyle = \color{blue}, % 关键字颜色
    keywordstyle = [2] \color{teal}, % 第二组关键字颜色
    stringstyle = \color{magenta}, % 字符串颜色
    commentstyle = \color{red}\ttfamily, % 注释颜色和样式
    breaklines = true, % 自动换行
    columns = fixed, % 固定列宽
    basewidth = 0.5em,
}

% C++ 代码风格设置
\lstdefinestyle{C++}{
    language = c++, % 语言设置为 C++
    basicstyle = \zihao{-5}\ttfamily, % 基本文本样式
    numberstyle = \zihao{-5}\ttfamily, % 行号样式
    keywordstyle = \color{blue}, % 关键字颜色
    keywordstyle = [2] \color{teal}, % 第二组关键字颜色
    stringstyle = \color{magenta}, % 字符串颜色
    commentstyle = \color{red}\ttfamily, % 注释颜色和样式
    breaklines = true, % 自动换行
    columns = fixed, % 固定列宽
    basewidth = 0.5em,
}


% 文档初始化设置
\renewcommand{\frontmatter}{ % 前言部分设置
  \pagenumbering{Roman} % 罗马数字页码
  \pagestyle{ZUFEThesis} % 使用自定义页眉页脚
}

\renewcommand{\mainmatter}{ % 主要内容设置
  \pagenumbering{arabic} % 阿拉伯数字页码
  \pagestyle{ZUFEThesis} % 使用自定义页眉页脚
}

% 类文件结束
\endinput
