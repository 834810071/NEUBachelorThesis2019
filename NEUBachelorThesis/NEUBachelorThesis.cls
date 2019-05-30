\ProvidesClass{NEUBachelorThesis}
\LoadClass[UTF8,cs4size,a4paper]{ctexbook}%默认twoside,openright
\RequirePackage{pdfpages}%插入pdf文档


%--------字体设置-------%
\RequirePackage{times}
\setmainfont{Times New Roman}%西文字体
\songti % 默认是宋体

%--------行距---------%
\RequirePackage{setspace}
%\renewcommand{\baselinestretch}{1.5}%\normalsize %1.5倍行距
\setlength{\baselineskip}{23pt} % 23磅
\showthe\baselineskip

%--------章节设置-------%
\CTEXsetup[
name={第,章},
number={\chinese{chapter}},%章节编号设置为阿拉伯数字格式 \arabic
format+={\heiti\zihao{-2}},%{\centering\zihao{-3}\heiti},  % 各章标题
% nameformat={},
aftername={\quad},
% titleformat={},
beforeskip={0.8ex},
afterskip={0.5ex}
]{chapter}

\CTEXsetup[
format={\Large\bfseries},
nameformat+={\heiti\zihao{4}},
aftername={\ },
titleformat={\heiti\zihao{4}},
beforeskip={0.5ex},
afterskip={0.5ex}
]{section}%二级标题左对齐

\CTEXsetup[
format={\Large\bfseries},
nameformat+={\heiti\zihao{-4}},
aftername={\ },
titleformat={\heiti\zihao{-4}},
beforeskip={0.5ex},
afterskip={0.5ex}
]{subsection}%二级标题左对齐

%----------段落---------%
\RequirePackage{indentfirst}%首段段首缩进
\setlength{\parindent}{4em}%段落缩进
% \CJKindent  %缩进两个中文字符宽度

%----------封面---------%
\makeatletter
\def\ctitle#1{\def\@ctitle{#1}}\def\@ctitle{}
\def\etitle#1{\def\@etitle{#1}}\def\@etitle{}
\def\cauthor#1{\def\@cauthor{#1}}\def\@cauthor{}
\def\eauthor#1{\def\@eauthor{#1}}\def\@eauthor{}
\def\corganization#1{\def\@corganization{#1}}\def\@corganization{}
\def\ccollege#1{\def\@ccollege{#1}}\def\@ccollege{}
\def\csubject#1{\def\@csubject{#1}}\def\@csubject{}
\def\csupervisor#1{\def\@csupervisor{#1}}\def\@csupervisor{}
\def\esupervisor#1{\def\@esupervisor{#1}}\def\@esupervisor{}
\def\cdate#1{\def\@cdate{#1}}\def\@cdate{}
\def\edate#1{\def\@edate{#1}}\def\@edate{}

\newlength{\@item@width}
\newlength{\@titlepage@left}

\def\makecover{
	\pagestyle{empty}
	\vspace*{1.2cm}
	\begin{figure}[h]
		\begin{center}
			\begin{minipage}[t]{0.19\textwidth}{  
					\includegraphics[height=0.45in]{neufont.eps} 
				}
			\end{minipage} 
			\quad
			\begin{minipage}[t]{0.062\textwidth}{
					\includegraphics[height=0.45in]{neu.eps} 
				} 
			\end{minipage} 
			\quad
			\begin{minipage}[t]{0.22\textwidth}{
					\includegraphics[height=0.38in]{efont.eps} 
				} 
			\end{minipage} 
		\end{center}
	\end{figure}
	
	\vskip 0.8cm
	\begin{center}
		\begin{spacing}{2.2}%1.5倍行距
			\underline{\heiti\zihao{0}\ziju{0.16}{东北大学本科生毕业设计\quad(论文)}}
			% \setmainfont{DejaVu Sans}
			% \fontspec{Times New Roman}
			{\zihao{2}{GRADUATION\quad DESIGN\ (THESIS)}}
		\end{spacing}
	\end{center}
	
	\clearpage
	\phantom{s}
}

%----------扉页---------%
\def\maketitlepage{
	\thispagestyle{empty}
	%中文扉页
	\begin{flushleft}
		{\heiti\zihao{5}{学号\,\underline{20152021}\qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad 
				\, 班级\,\underline{物联网1501}}}
	\end{flushleft}
	\zihao{2}
	\vspace*{2cm}
	\centerline{\rmfamily\zihao{1}\bfseries{东北大学本科毕业论文}}\vspace{2cm}		%（1号宋体居中）
	
	\centerline{\heiti\zihao{2}{\@ctitle}}\vspace{2cm} % （2号黑体居中，标题行间距为32磅）
	\setlength{\@titlepage@left}{4.0cm}
	\setlength{\@item@width}{4em}
	
	\begin{flushleft}
		\hspace{\@titlepage@left}\makebox[\@item@width][s]{\songti\zihao{-3}{学院名称：}}{\songti\zihao{-3}{\@corganization}}\vspace{10bp}\\
		\hspace{\@titlepage@left}\makebox[\@item@width][s]{\songti\zihao{-3}{专业名称：}}{\songti\zihao{-3}{\@csubject}}\vspace{10bp}\\
		\hspace{\@titlepage@left}\makebox[\@item@width][s]{\songti\zihao{-3}{学生姓名：}}{\songti\zihao{-3}{\@cauthor}}\vspace{10bp}\\
		\hspace{\@titlepage@left}\makebox[\@item@width][s]{\songti\zihao{-3}{指导老师：}}{\songti\zihao{-3}{\@csupervisor}}\vspace{10bp}\\
	\end{flushleft}
	
	\vskip 5cm
	\begin{center}
		\zihao{-2}
		%\makebox[6em][s]{\songti{东北大学}}\\
		\makebox[7em][s]{\songti{\@cdate}}
	\end{center}
	
	\clearpage
	\phantom{s}
	%英文扉页
	%\newpage
	%\setmainfont{Times New Roman}
	%\zihao{2}
	%\vspace*{3cm}
	%\begin{center}
	%	{\songti\zihao{-3}{\@etitle}}\vspace{3cm}
	%	
	%	{\songti\zihao{-3}{by\ \ \ }{\@eauthor}}\\
	%	\vskip 3cm
	
	%	{\songti\zihao{-3}{Supervisor:\ \@esupervisor}}\vspace{8bp}\\
	
	%	{\songti\zihao{-3}{Northeastern University}}\vspace{8bp}\\
	
	%	{\songti\zihao{-3}{\@edate}}
	%\end{center}
	
	%\clearpage
	%\phantom{s}
}
\makeatother


%----------页面设置----------%
\RequirePackage{geometry} % 调整页面式样
\geometry{
	%left=31.75mm,
	%right=31.75mm,
	%top=25.4mm,
	%bottom=25.4mm,
	left=30.00mm,
	right=25.00mm,
	top=25.00mm,
	bottom=25.00mm,
	headheight=7mm,
	headsep=7mm,
	% textheight=253mm,
	% textwidth=155mm,
	footskip=7mm,
	hmarginratio={2:3}}

%---------页眉、页脚、脚注设定------%
\RequirePackage{fancyhdr}%页眉页脚宏包
\renewcommand{\headrulewidth}{0.4pt}%页眉线宽
\renewcommand{\footrulewidth}{0pt}%页脚线宽
\renewcommand{\chaptermark}[1]{ \markboth{#1}{} }
%\renewcommand{\chaptermark}[1]{\markboth{\chaptername \#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}{}}

% 默认页面页眉页脚样式
\fancypagestyle{plain}{
	\fancyhf{}
	\fancyfoot[C]{\zihao{5}-\ \thepage\ -}% 页码位于页脚居中
	
	% 左右两栏页眉，左为论文题目右为当前章
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\zihao{5} \leftmark}
	
	% 居中式页眉，可以选择为论文题目或当前章
	%\fancyhead[C]{\zihao{-5}\leftmark}
	
}
\pagestyle{plain}

% 采用带圈数字符号代替*号脚注
\xeCJKsetcharclass{`①}{`⑩}{1}

% 用法：一定是在章节的标题下面(不能在标题上面）\thispagestyle{task}(也不能是\pagesyle命令)
\fancypagestyle{aca}{
	%\pagenumbering{Roman}
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\zihao{5}郑重声明}
}
\fancypagestyle{task}{
	%\pagenumbering{Roman}
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\zihao{5}毕业设计（论文）任务书}
}
\fancypagestyle{contents}{
	%\pagenumbering{Roman}
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\kaishu\zihao{5} \leftmark}
}
\fancypagestyle{cabstract}{
	%\pagenumbering{Roman}
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\zihao{5}摘要}
}
\fancypagestyle{eabstract}{
	%\pagenumbering{Roman}
	\fancyhead[L]{\zihao{5}东北大学本科毕业设计（论文）}
	\fancyhead[R]{\zihao{5}ABSTRACT}
}
\fancypagestyle{listoffiguretable}{\fancyhead[R]{\zihao{5}插图与表格目录}}

%首页右开的时候，全空的左页不留页眉页脚
\makeatletter
\let\neu@cleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{
	\clearpage{\pagestyle{empty}
		\neu@cleardoublepage}}

%------------摘要-----------%
\newenvironment{cabstract}{
	\setcounter{page}{1}
	\setcounter{secnumdepth}{-1}
	\chapter*{\renewcommand{\baselinestretch}{1.5}\normalsize
		{\heiti\zihao{-2}摘要}}				% 黑体 小二
	\addcontentsline{toc}{chapter}{摘要}
	\songti\zihao{-4}					% 宋体 小四
	\thispagestyle{cabstract}
	\begin{spacing}{1.5}%1.5倍行距
		
	}
	{\end{spacing}
	\setcounter{secnumdepth}{3}}

\def\ckeywords#1{
	\vskip 0.5cm
	\noindent\heiti\zihao{-4}\textbf{关键词:}\quad\songti\zihao{-4}#1
}

\newenvironment{eabstract}{
	\setcounter{secnumdepth}{-1}
	\chapter*{\renewcommand{\baselinestretch}{1.5}\normalsize
		{\zihao{-2}ABSTRACT}}
	\addcontentsline{toc}{chapter}{ABSTRACT}
	\zihao{-4}	
	\thispagestyle{eabstract}
	
}%开始部分定义
{\setcounter{secnumdepth}{3}}%结束部分定义

\def\ekeywords#1{
	\vskip 0.5cm
	\noindent\zihao{-4}\textbf{Keywords:}\quad\zihao{-4}#1
	\pagestyle{contents}
}
\makeatother

%------------致谢------------%
\newenvironment{acknowledge}{
	\setcounter{secnumdepth}{-2}
	\chapter{致\ \ 谢}
}%开始部分定义
{\setcounter{secnumdepth}{3}
	\clearpage
	\phantom{s}
	\thispagestyle{empty}
}%结束部分定义

%------------目录------------%
% \CTEXoptions[contentsname={目录}]
\RequirePackage[titles,subfigure]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1}%点间距
\renewcommand{\cftchapdotsep}{\cftdotsep}
%目录项行距设置
% 学院要求
% \setlength{\cftbeforechapskip}{0.5ex}
% \setlength{\cftbeforesecskip}{0.5ex}
% \setlength{\cftbeforesubsecskip}{0.5ex}
%学校要求 
\setlength{\cftbeforechapskip}{1.5ex}
\setlength{\cftbeforesecskip}{1.5ex}
\setlength{\cftbeforesubsecskip}{1.5ex}
%目录项字体格式
%学院要求
% \renewcommand{\cftchapfont}{\zihao{-4}\heiti}
% \renewcommand{\cftsecfont}{\zihao{-4}\songti}
% \renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
%学校要求
\renewcommand{\cftchapfont}{\heiti\zihao{-2}}
\renewcommand{\cftsecfont}{\songti\zihao{4}}
\renewcommand{\cftsubsecfont}{\songti\zihao{-4}}
%目录项缩进
\setlength{\cftchapindent}{0em}
\setlength{\cftsecindent}{2.5em}
\setlength{\cftsubsecindent}{5.0em}

\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}

\newcommand{\contents}{
	\tableofcontents
	\thispagestyle{contents}
	
	% \ifodd {
	\clearpage
	\phantom{s}
	\thispagestyle{empty}
	% }
	
	\newpage
	\pagestyle{plain}
	\pagenumbering{arabic}
	\setcounter{page}{1}%目录页后第一章设置为第一页
}

%---------数学公式------------%
\RequirePackage{amsmath} 
\RequirePackage{amsthm}
\RequirePackage{amssymb}

\def\insertmath#1{
	\begin{equation}
	%公式与上下文空白的间距
	% \setlength{\abovedisplayskip}{3pt}
	% \setlength{\belowdisplayskip}{3pt}
	{#1}
	\end{equation}
}

%-----------表格---------------%
\RequirePackage{longtable} %长表格
\RequirePackage{booktabs}%三线表

%-----------插图---------------%
\RequirePackage{graphicx}
\RequirePackage{epsfig}
\graphicspath{{figures/}}
\RequirePackage{tikz} %画图
\usetikzlibrary{shapes,arrows} %tikz图形库
\RequirePackage{subfigure}
\RequirePackage{float}
\RequirePackage{overpic} %图上标记
%图形环境中的各种比例参数
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

\def\insertpic#1#2{
	\begin{figure}[ht]
		%\setcounter{figure}{2} 
		\begin{center}     
			\includegraphics[width=14.5cm]{#1}
			\caption{\heiti\zihao{-4}{#2}}
		\end{center} 
	\end{figure}    
}

\def\insertpics#1#2#3{
	\begin{figure}[ht]
		%\setcounter{figure}{2} 
		\begin{center}     
			\includegraphics[width=#1]{#2}
			\caption{\heiti\zihao{-4}{#3}}
		\end{center} 
	\end{figure}    
}

\RequirePackage{ccaption} %中英文题注
\RequirePackage{textcomp} %摄氏度符号
% \RequirePackage{ccmap} %pdf中文复制
\RequirePackage{color} %gnuplot彩色文字


%------------代码------------%
\RequirePackage{listings}%代码排版
\usepackage[noend]{algpseudocode}
%------------算法------------%
\RequirePackage{algorithmicx,algorithm}%算法排版

\RequirePackage{amsfonts}
\lstset{language=Mathematica}%这条命令可以让LaTeX排版时将Mathematica键字突出显示
\lstset{extendedchars=false}%这一条命令可以解决代码跨页时，章节标题，页眉等汉字不显示的问题


%--------------参考文献----------%
\bibliographystyle{unsrt} %参考文献序号按引用顺序排序
\RequirePackage[numbers,sort&compress,super,square]{natbib} %参数代表：数字,排序与压缩,上标，方括号
% \bibliographystyle{GBT7714-2005NLang} %参考文献格式设为GBT7714-2005N.bst
\RequirePackage[draft=false,colorlinks=true,CJKbookmarks=true,linkcolor=black,citecolor=black,urlcolor=blue,hyperindex]{hyperref}%引用链接颜色设置

%----------------附录------------%
\renewcommand\appendix{\setcounter{secnumdepth}{-2}}%附录以一级标题显示并且不显示编号

%-------------生成无页眉页脚的空白页----------%
% \clearpage
% \phantom{s}
% \thispagestyle{empty}
