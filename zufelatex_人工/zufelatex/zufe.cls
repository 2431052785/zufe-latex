% 浙江财经大学本科毕业论文 LaTeX 类文件
% 文件名 "zufe.cls".
% 2024/06/15 made by wzx
\NeedsTeXFormat{LaTeX2e}[1995/12/01] % 指定需要 LaTeX 版本
\ProvidesClass{zufe}[2024/06/15 v1.0 ZUFE Thesis Class] % 类文件的基本信息

% 加载基础类 ctexbook，并设置一些基本选项
\LoadClass[UTF8, AutoFakeBold, AutoFakeSlant, zihao=-4, oneside, openany]{ctexbook}

%中文包
\RequirePackage{ctex}
\RequirePackage{CJKnumb}

% 页面布局设置
\RequirePackage[  a4paper, % 显式指定纸张
  top=3.5cm,
  bottom=2.5cm,
  left=2.5cm,
  right=2.5cm,
  headheight=15pt,
  headsep=1cm,
  footskip=2cm,
  bindingoffset=0.5cm
]{geometry}

% 字体设置
\RequirePackage{xeCJK}
\RequirePackage{fontspec}
\RequirePackage{xparse}    % 为了更好的处理字体设置


%插入pdf设置
\RequirePackage{pdfpages}

%让chapter强制不换页,如果需要换页，就把这个注释掉
\ctexset{chapter/break={}}

%caption导入
\RequirePackage{caption}

% 页眉页脚设置
\RequirePackage{fancyhdr}
\fancypagestyle{ZUFEThesis}{ % 定义浙财毕业论文的页眉页脚样式
  % 页眉高度
  \setlength{\headheight}{20pt}
  %页脚高度
  \setlength{\footskip}{14pt}
  \fancyhf{} % 清空页眉页脚
  \renewcommand{\headrulewidth}{0.4pt} % 页眉横线宽度
  \fancyhead[C]{\xiaowu\ziju{0.08}\songti{浙江财经大学本科生毕业论文（设计）}} % 页眉内容
  \fancyfoot[C]{\songti\zihao{5} \thepage} % 页脚内容，显示页码
}

% 设置章节样式
\ctexset{
    chapter = {
        format = \centering\heiti\zihao{3}, % 三号，居中，黑体
        name = {}, % 章节名格式
    	   pagestyle = ZUFEThesis,
        number = \arabic{chapter}, % 阿拉伯数字章节号
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
    },
    section = {
        format = \raggedright\heiti\zihao{4}, % 四号，左对齐，黑体
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
    },
    subsection = {
        format = \raggedright\heiti\zihao{-4}, % 小四号，左对齐，黑体
        beforeskip = 1\baselineskip, % 段前1行
        afterskip = 1\baselineskip, % 段后1行
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
\renewcommand{\contentsname}{\centerline{\heiti\zihao{-2}\bfseries 目\hspace{1em}录}}
\renewcommand{\cfttoctitlefont}{\centering\heiti\zihao{-2}\bfseries}
\renewcommand{\cftaftertoctitle}{\vskip 1\baselineskip}
\renewcommand{\cftbeforetoctitleskip}{1\baselineskip}
\renewcommand{\cftaftertoctitleskip}{1\baselineskip}

% 自定义目录条目样式
\renewcommand{\cftchapfont}{\songti\zihao{-4}}
\renewcommand{\cftsecfont}{\songti\zihao{-4}}
\renewcommand{\cftsubsecfont}{\songti\zihao{-4}}

\renewcommand{\cftchappagefont}{\songti\zihao{-4}}
\renewcommand{\cftsecpagefont}{\songti\zihao{-4}}
\renewcommand{\cftsubsecpagefont}{\songti\zihao{-4}}

% 设置1.5倍行距
\renewcommand{\cftchapleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsecdotsep}}

\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}
\renewcommand{\cftsubsecdotsep}{1}

% 控制目录各级标题的缩进
\setlength{\cftchapindent}{0pt}
\setlength{\cftsecindent}{1.5em}
\setlength{\cftsubsecindent}{3em}

% 设置目录项之间的间距
\setlength{\cftbeforechapskip}{0.5em}
\setlength{\cftbeforesecskip}{0.5em}
\setlength{\cftbeforesubsecskip}{0.5em}

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
\setmainfont{Times New Roman}
\renewcommand{\mainmatter}{ % 主要内容设置
  \pagenumbering{arabic} % 阿拉伯数字页码
  \pagestyle{ZUFEThesis} % 使用自定义页眉页脚
}

\DeclareCaptionFont{kaishu}{\kaishu}
%图和表的caption设置
\captionsetup{
    margin=10pt,
    font=small,              % 设置字体大小
    labelfont=normalfont,    % 标签字体为常规字体
    labelsep=space,          % 标签和标题之间用空格分隔
    skip=12pt,               % 标题与正文之间的间距为12pt，主文是小四，这里要单倍行距，就是12pt
    labelformat=simple,      % 标签格式简单（"图 1"后面没有冒号）
    textfont=kaishu,         % 主要文本字体为楷书
    labelfont=kaishu         % 标签部分（如“图 1”）字体为楷书
}

% 定义全局表格字体设置为宋体五号
\AtBeginDocument{
    \newcommand{\myfont}{\wuhao\selectfont\songti}  % 设置五号字体和宋体
}


% 类文件结束
\endinput
