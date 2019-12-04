\def\pathname{.}
\def\myfontpath{./fonts}

\ProvidesClass{dmubook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{llbook4}}
\ProcessOptions\relax

%\LoadClass{llbook4}
% \LoadClass{llbook4J}%% added

\LoadClass[useotf,dvipdfmx,uplatex,a5/9pt]{kbdbook}%% added
\RequirePackage[deluxe,scale=1]{otf}
\RequirePackage{helvet}
\RequirePackage[utf8]{inputenc}
\RequirePackage[OT1,T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{lmodern}
\RequirePackage{bm}
\RequirePackage{makeidx}

%\RequirePackage{llbook4J}
\input{Kmac.sty}
 \let\oldsection\section
 \let\oldsubsection\subsection

%% 原著の設定
%% subcaption
	\RequirePackage[labelfont={sf,bf,scriptsize},textfont={sf,scriptsize},list,singlelinecheck=on,textformat=addperiod]{subcaption}
	\captionsetup[algorithm]{font={bf},textfont={normal},skip=1ex}
	\DeclareCaptionTextFormat{addperiod}{#1\@addpunct{.}}
	\captionsetup{style=base,singlelinecheck=false,labelsep=quad,skip=0.3333in,textformat=addperiod}

% 「アルゴリズム」
%% algorithm.styの改変版？．中で読んでいるfloat.styをfloatrow.styに変えていた．
\RequirePackage[chapter]{floatrowalgorithm}
% \RequirePackage{algorithmicx}
\RequirePackage[noend]{algpseudocode}
% \RequirePackage{floatrow}
\floatsetup[table]{style=plaintop}
\RequirePackage{rotating}

% floatrow package command
	\DeclareFloatVCode{captionbigskip}%
	{\vskip2ex}
	\DeclareFloatVCode{captionsmallskip}%
	{\vskip1ex}
	\floatsetup[figure]{rowprecode=captionsmallskip,rowpostcode=captionbigskip}
	\floatsetup[table]{rowprecode=captionbigskip,rowpostcode=captionsmallskip}
	\DeclareFloatVCode{thickrule}{\par\rule{\hsize}{.8pt}\vskip-3pt} %% edit \vskip2pt ---> \vskip-3pt
%%



\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{upgreek}

%\makeatletter
%\long\def\@makecaption#1#2{%
%  \vskip 0.1667in\raggedright
%\captionfont #1\quad\captiontextfont \let\it\captiontextitfont \let\bf\captiontextbffont #2\@addpunct{.}
%  \vskip 0.3333in}
%\makeatother  
  
%\RequirePackage{llbfont4b}
\RequirePackage{llbfont4J}

\def\captionfont{\let~\relax\fontsize{8}{11}\Pxfont%
%\fontspec[ Path = \myfontpath/ ]{HelveticaNeueLTStd-Bd}
}
\def\captiontextfont{\fontsize{8}{11}\sffamily\mdseries%
%\fontspec[ Path = \myfontpath/ ]{HelveticaNeueLTStd-Roman}
}


%トンボ
% \RequirePackage[a4]{crop}


% 用途不明
\def\pfill{\unskip~\dotfill\penalty500 
  \strut\nobreak\leaders\hbox to.6em{\hss.\hss}\hfil~\ignorespaces}  

% 相互参照
\RequirePackage[capitalise,noabbrev]{cleveref}


\RequirePackage{graphicx}
\RequirePackage{enumitem}

%% プロット
\RequirePackage{pgfplots}

% 行間補正
\RequirePackage{setspace}


\pgfkeys{/pgf/number format/min exponent for 1000 sep=4} % as per Lincoln style

\newcommand{\todo}[1]{[[#1]]}

\setlist{noitemsep,topsep=0.5ex}

\DeclareMathOperator{\Normal}{\mathcal{N}}
\DeclareMathOperator{\Uniform}{\mathcal{U}}

\newcommand{\UnnumberedFootnote}[1]{{\def\thefootnote{}\footnote{#1}
\addtocounter{footnote}{-1}}}

\tikzstyle{every picture}+=[font=\foliofont]

\pgfplotsset{every axis legend/.append style={%
cells={anchor=west},% Centered entries
font=\foliofont
},
every axis/.append style={
font=\foliofont,
}
}
\usetikzlibrary{arrows,arrows.meta,positioning,fit}
\tikzset{>=stealth'}

\pgfplotsset{compat=newest,legend style={draw=none},axis line style = {line width=0.5pt}}
\pgfkeys{/pgf/number format/sci generic={mantissa sep=\times,exponent={10^{#1}}}}
\pgfplotsset{/pgfplots/tick scale binop={\ensuremath{\times}}}

\newcommand{\argmin}{\operatornamewithlimits{arg\,min}}
\newcommand{\argmax}{\operatornamewithlimits{arg\,max}}
\DeclareMathOperator{\Dir}{Dir}
\DeclareMathOperator{\erf}{beta}
\DeclareMathOperator{\nil}{\textsc{nil}}
\DeclareMathOperator{\Expectation}{\mathbb{E}}

\tikzstyle{node}=[circle,draw=black,minimum width=0.8cm]
\tikzstyle{large node}=[node,minimum width=1.1cm]
\tikzstyle{highlight node}=[circle,draw=black,fill=gray!50,minimum width=0.8cm]
\tikzstyle{large highlight node}=[circle,draw=black,fill=gray!50,minimum width=1.1cm]
\tikzstyle{highlight2 node}=[circle,draw=black,fill=gray!20,minimum width=0.8cm]
\tikzstyle{plate} = [draw,thick,inner sep=0.25cm,rounded corners,gray]

\tikzstyle{decision node}=[rectangle,draw=black,minimum width=0.7cm,minimum height=0.7cm]
\tikzstyle{utility node}=[shape=diamond,minimum width=1cm, minimum height=1cm,draw=black]

\usepgfplotslibrary{groupplots}

\newcommand{\ifcolor}[1]{#1}

\RequirePackage{tcasdisplay}


%\RequirePackage[per-mode=symbol,detect-all=true,group-separator={,},group-four-digits=false,range-units=single,list-final-separator={, and }]{siunitx}

%\DeclareSIUnit{\feet}{ft}
%\DeclareSIUnit{\nauticalmile}{NM}
%\DeclareSIUnit{\gravity}{g}

\newcommand{\num}[1]{\pgfmathprintnumber{#1}}
\newcommand{\si}[1]{\text{#1}}
\newcommand{\SI}[2]{\num{#1}\,\si{#2}}
\newcommand{\kilo}{k}
\newcommand{\knot}{kt}
\newcommand{\gram}{g}
\newcommand{\feet}{ft}
\newcommand{\per}{/}
%% \minute ptexのプリミティブ
\renewcommand{\minute}{min}
\newcommand{\nauticalmile}{nmi}
\newcommand{\milli}{m}
\newcommand{\giga}{G}
\newcommand{\byte}{B}
\newcommand{\percent}{\%}
\newcommand{\second}{s}
\newcommand{\micro}{\ensuremath{\upmu}}
\newcommand{\hertz}{Hz}
\newcommand{\gravity}{g}
\newcommand{\squared}{$^2$}
\newcommand{\SIrange}[3]{\num{#1} to \num{#2}\,\si{#3}}

%\RequirePackage{dmualgorithm}

% algorithm stuff
\algnewcommand\algorithmicto{\textbf{to}}
\algrenewtext{For}[3]%
{\algorithmicfor\ #1 $\gets$ #2 \algorithmicto\ #3 \algorithmicdo}
\algrenewtext{ForAll}[2]%
{\algorithmicfor\ #1 $\in$ #2}
\algrenewcommand\algorithmicthen{}
\algrenewcommand\algorithmicdo{}
\algblockdefx[STATIC]{Static}{EndStatic}{\textbf{Static: }}{}%
\algblockdefx[INPUT]{Input}{EndInput}{\textbf{Input: }}{}%
\algblockdefx[OUTPUT]{Output}{EndOutput}{\textbf{Output: }}{}%
\algblockdefx[CONSTANT]{Constant}{EndConstant}{\textbf{Constant: }}{}%
\algtext*{EndInput}
\algtext*{EndStatic}
\algtext*{EndOutput}
\algtext*{EndConstant}
\newcommand{\Break}{\textbf{break}}


\newcommand{\Pa}{\text{Pa}}
\newcommand{\pa}{\text{pa}}
\newcommand{\true}{\text{true}}
\newcommand{\false}{\text{false}}
\newcommand{\transpose}{\top}
\newcommand{\vect}[1]{\boldsymbol{\mathrm{#1}}} 
\newcommand{\mat}[1]{\vect{#1}}

\newcommand{\eqpunct}[1]{\text{#1}}

%\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}

\tikzstyle{block}=[draw,rounded corners]

\newcommand{\creflastconjunction}{, and~}

%\renewcommand{\exercises}[1]{\section*{Exercises} #1}
\newcommand{\exercises}[1]{}

\def\authoraffil#1{{\vskip1sp\normalsize\it
		\noindent\kern-0.1pt#1\vrule depth 18pt width0pt}}

\newenvironment{authorline}{\startauthorline}{\@afterindentfalse\@afterheading}
\def\startauthorline#1\end{\authoraffil{#1}\end}

% \newcommand\fs@ruled{\def\@fs@cfont{\bfseries}\let\@fs@capt\floatc@ruled
%   \def\@fs@pre{\hrule height1pt depth0pt \kern2pt}%
%   \def\@fs@post{\kern2pt\hrule\relax}%
%   \def\@fs@mid{\kern2pt\hrule\kern2pt}%
%   \let\@fs@iftopcapt\iftrue}
%   \fs@ruled
% \renewcommand\float@makebox[1]{%
%   \vbox{\hsize=#1 \@parboxrestore
%     \@fs@pre\@fs@iftopcapt
%       \ifvoid\@floatcapt\else\unvbox\@floatcapt\par\@fs@mid\fi
%       \unvbox \@currbox 
%     \else\unvbox\@currbox 
%       \ifvoid\@floatcapt\else\par\@fs@mid\unvbox\@floatcapt\fi
%     \fi\par\@fs@post\vskip\z@}}

% MAKE SUBSECTIONS AND SECTION HEADINGS TITLECASE (AS PER LINCOLN STYLE)
\RequirePackage{titlecaps}%% capsのコントロール？

\RequirePackage{suffix}%% WithSuffix
\Addlcwords{a an the at by for in of on to up and as but it or nor all with for from to about across against along among before below given into like near next off on out over past per round than toward unlike until unto upon via within}



% \RequirePackage{ifmtarg}%  if–then–else
% \let\oldsection\section
% \makeatletter
% \renewcommand{\section}[2][]{
%   \@ifmtarg{#1}%
%     {\oldsection{\titlecap{#2}}}
%     {\oldsection[#1]{\titlecap{#2}}}
% }
% \let\oldsubsection\subsection
% \makeatletter
% \renewcommand{\subsection}[2][]{
%   \@ifmtarg{#1}%
%     {\oldsubsection{\titlecap{#2}}}
%     {\oldsubsection[#1]{\titlecap{#2}}}
% }
% \makeatother
\WithSuffix\gdef\section*{\oldsection*}
\WithSuffix\gdef\subsection*{\oldsubsection*}

\newcommand{\toprule}{\topline}
\newcommand{\midrule}{\midline}
\newcommand{\bottomrule}{\botline}

\RequirePackage{url}
\urlstyle{same}

\def\nofigbio#1{\iffirstbio\global\firstbiofalse
\vglue-1pt
\else
\vskip12pt\fi
\noindent{\bf #1}}

\parskip=0pt
\setlength{\fboxsep}{0pt}%
\setlength{\fboxrule}{1pt}%

\renewcommand{\indexspace}{\vspace{2ex}}

\long\def\seriespage#1{\newpage
	\thispagestyle{empty}
	{\parindent=0pt
		{\seriestitlefont
			\vglue-12pt
			MIT Lincoln Laboratory Series\vrule depth 4pt width0pt}
		\hrule height .5 pt
		\vskip13pt
		#1
	}}

%%\pdfminorversion 6