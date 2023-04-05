\ProvidesClass{ProposalSkripsiUnesa}[04/04/2023 v2.0]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,12pt,twoside,openright]{book}
\RequirePackage[hmargin={3cm,2.5cm},vmargin={2.5cm,3cm}]{geometry}
\RequirePackage{graphicx,sectsty,setspace,amssymb,amsmath,amsthm,amsfonts,pxfonts,enumitem,indentfirst,tabularx,ifthen,lscape,hyperref,array,mathtools,subcaption,multirow,natbib,tikz,actuarialsymbol,actuarialangle,imakeidx}
\RequirePackage[font=small,labelfont=bf]{caption}
\RequirePackage[automake,toc]{glossaries}
\RequirePackage[bahasa]{babel}
\usetikzlibrary{shapes.geometric, arrows}

\newcommand{\@judul}{Judul Skripsi}
\DeclareRobustCommand{\Judul}[1]{%
    \renewcommand{\@judul}{#1}%
}
\newcommand{\@judulen}{The Title}
\DeclareRobustCommand{\JudulEN}[1]{%
    \renewcommand{\@judulen}{#1}%
}
\newcommand{\@nama}{Nama Mahasiswa}
\DeclareRobustCommand{\Nama}[1]{%
   \renewcommand{\@nama}{#1}%
}
\newcommand{\@NIM}{NIM Mahasiswa}
\DeclareRobustCommand{\NIM}[1]{%
   \renewcommand{\@NIM}{#1}
}
\newcommand\@prodi{Matematika}
\DeclareRobustCommand\ProgramStudi[1]{%
	\renewcommand\@prodi{#1}
}

\newcommand\@thn{2023}
\DeclareRobustCommand\Tahun[1]{%
   \renewcommand\@thn{#1}
}
\newcommand\@fak{Matematika dan Ilmu Pengetahuan Alam}
\newcommand\@faks{MIPA}
\DeclareRobustCommand\Fakultas[2]{%
   \renewcommand\@fak{#1}
   \renewcommand\@faks{#2}
}
\newcommand\@fac{Mathematics and Natural Sciences}
\newcommand\@facs{MNS}
\DeclareRobustCommand\Faculty[2]{%
   \renewcommand\@fac{#1}
   \renewcommand\@facs{#2}
}
\newcommand\@pbbsatu{Nama Pembimbing Pertama}
\newcommand\@pbbdua{Nama Pembimbing Kedua}
\newcommand\@pbbtiga{Nama Pembimbing Ketiga}
\DeclareRobustCommand\Pembimbing[3]{%
   \renewcommand{\@pbbsatu}{#1}%
   \renewcommand{\@pbbdua}{#2}%
   \renewcommand{\@pbbtiga}{#3}%
}
\newcommand\@NIPpbbsatu{12345678 123456 1 123}
\newcommand\@NIPpbbdua{12345678 123456 1 123}
\newcommand\@NIPpbbtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPembimbing[3]{%
   \renewcommand{\@NIPpbbsatu}{#1}%
   \renewcommand{\@NIPpbbdua}{#2}%
   \renewcommand{\@NIPpbbtiga}{#3}%
}
\newcommand\@pujsatu{Nama Penguji Pertama}
\newcommand\@pujdua{Nama Penguji Kedua}
\newcommand\@pujtiga{Nama Penguji Ketiga}
\DeclareRobustCommand\Penguji[3]{%
	\renewcommand{\@pujsatu}{#1}%
	\renewcommand{\@pujdua}{#2}%
	\renewcommand{\@pujtiga}{#3}%
}
\newcommand\@NIPpujsatu{12345678 123456 1 123}
\newcommand\@NIPpujdua{12345678 123456 1 123}
\newcommand\@NIPpujtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPenguji[3]{%
	\renewcommand{\@NIPpujsatu}{#1}%
	\renewcommand{\@NIPpujdua}{#2}%
	\renewcommand{\@NIPpujtiga}{#3}%
}
\newcommand\Awal{%
	\frontmatter
	\pagestyle{plain}
}

\newcommand\HalamanJudul{%
    \cleardoublepage
    \thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{center}
    \noindent
    {\Large\textbf{\MakeUppercase{\@judul}}}\\[5ex]
    
    \textit{{\large PROPOSAL PENELITIAN}}\\[18ex]
    
    \includegraphics[height=7cm]{Gambar/logounesa}\\[18ex]
    
    Oleh\\
    \MakeUppercase{\@nama}\\
    \textbf{NIM \@NIM}\\[22ex]
    
    \textbf{\textit{UNIVERSITAS NEGERI SURABAYA}}\\
    FAKULTAS~\MakeUppercase{\@fak}\\
   % DEPARTEMEN~\MakeUppercase{\@dep}\\
    \textbf{\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}}\\
    \@thn
    \end{center}
    \addcontentsline{toc}{chapter}{HALAMAN JUDUL}
}

\newcommand\@tglsetuju{6 Februari 2023}
\DeclareRobustCommand\TanggalDisetujui[1]{%
   \renewcommand\@tglsetuju{#1}
}

\newcommand\@tglujian{6 Februari 2023}
\DeclareRobustCommand\TanggalUjian[1]{%
	\renewcommand\@tglujian{#1}
}

\newcommand\HalamanPersetujuan
{
   \cleardoublepage
    \thispagestyle{plain}
    \noindent
    	\chapter*{Halaman Persetujuan}
    	%\centerline{\large\bfseries{\MakeUppercase{Halaman Persetujuan}}}\\[10ex]
    \noindent Yang bertanda tangan di bawah ini,\\
    
    \begin{tabular}{@{}lcp{11cm}}
    	Nama Dosen & : & \@pbbsatu\\
    	NIP & : &  \@NIPpbbsatu\\[3ex]
    \end{tabular}
    
    \noindent sebagai dosen pembimbing skripsi mahasiswa\\
    
    \begin{tabular}{@{}lcp{11cm}}
    	Nama & : & \@nama\\
    	NIM & : &  \@NIM\\
    	Judul Proposal Skripsi & : & \@judul\\[3ex]
    \end{tabular}
	
	\noindent
	telah menyetujui mahasiswa tersebut di atas untuk mengikuti ujian proposal skripsi.\\[18ex]
	
	\noindent
	\begin{tabular}{p{8cm}l}
		& Surabaya, \@tglsetuju\\
		& Dosen Pembimbing,\\[12ex]
		& \@pbbsatu\\
		& NIP.~\@NIPpbbsatu\\
	\end{tabular}
    \addcontentsline{toc}{chapter}{HALAMAN PERSETUJUAN}
}

\newcommand\HalamanPengesahan
{
	\cleardoublepage
	\thispagestyle{plain}
	\noindent
	\chapter*{Halaman Pengesahan}
	%\centerline{\large\bfseries{\MakeUppercase{Halaman Pengesahan}}}\\[7ex]
	\noindent
	Proposal skripsi dengan judul "\@judul" yang disusun oleh:\\
	
	\begin{tabular}{@{}lcp{8cm}}
		Nama & : & \@nama\\
		NIM & : &  \@NIM\\[3ex]
	\end{tabular}
	
	\noindent
	telah diuji pada tanggal \@tglujian~dan telah direvisi sesuai masukan pada saat ujian\\[5ex]
	\noindent
	\begin{tabular}{cp{6.5cm}p{3cm}p{2cm}}    
		\multicolumn{2}{c}{Dewan Penguji} & \multicolumn{1}{c}{Tanda} & \multicolumn{1}{c}{Tanggal Selesai}\\
		& & \multicolumn{1}{c}{Tangan} & \multicolumn{1}{c}{Revisi}\\[2ex]
		Penguji 1 & \@pujsatu & & \\
		& NIP.~\@NIPpujsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
		Penguji 2 & \@pujdua & & \\
		& NIP.~\@NIPpujdua & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
		Penguji 3 & \@pbbsatu & & \\
		& NIP.~\@NIPpbbsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
	\end{tabular}
	\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}

\newcommand{\DaftarIsi}{%---------------------
    \cleardoublepage
    \pagestyle{plain}
    \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \listoffigures
}
\newcommand{\DaftarTabel}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \listoftables
}
\newcommand{\DaftarSimbol}{%----------------------
    \cleardoublepage
    \chapter*{Daftar Simbol}
    \addcontentsline{toc}{chapter}{DAFTAR SIMBOL}
}
\newcommand\Inti{%--------------------
    \cleardoublepage
    \mainmatter
   %\pagestyle{myheadings}
    \pagestyle{plain}
}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{plain}%
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter}
\gdef\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
	\if@mainmatter
	\refstepcounter{chapter}%
	\typeout{\@chapapp\space\thechapter.}%
	\addcontentsline{toc}{chapter}%
	{\protect\numberline{\@chapapp\space\thechapter}#1}%
	\else
	\addcontentsline{toc}{chapter}{\@chapapp\space#1}%
	\fi
	\else
	\addcontentsline{toc}{chapter}{#1}%
	\fi
	\chaptermark{#1}%
	\addtocontents{lof}{\protect\addvspace{10\p@}}%
	\addtocontents{lot}{\protect\addvspace{10\p@}}%
	\if@twocolumn
	\@topnewpage[\@makechapterhead{#2}]%
	\else
	\@makechapterhead{#2}%
	\@afterheading
	\fi}
\gdef\@makechapterhead#1{%
	\vspace*{5\p@}%
	{\parindent \z@ \centering\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\if@mainmatter
		\large\bfseries \MakeUppercase\@chapapp\space \thechapter
		\par
		\fi
		\fi
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 40\p@
}}
\gdef\@schapter#1{\@makeschapterhead{#1}%
	\@afterheading
}
\gdef\@makeschapterhead#1{%
	\vspace*{5\p@}%
	{\parindent \z@ \centering
		\normalfont
		\interlinepenalty\@M
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 40\p@
}}

\setlength{\parindent}{2em}
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{.01ex \@plus.2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-1ex\@plus -1ex \@minus -.2ex}%
	{.01ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-.25ex\@plus -1ex \@minus -.2ex}%
	{.01ex \@plus.2ex}%
	{\normalfont\normalsize}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{.25ex \@plus1ex \@minus.2ex}%
	{-.5em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@Roman\c@chapter}
\renewcommand*\thesection{\@Alph\c@section.}
\renewcommand*\thesubsection{\@arabic\c@subsection.}
\renewcommand*\thesubsubsection{\@arabic\c@subsection.\@arabic\c@subsubsection.}

\newtheorem{theorem}{Teorema}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposisi}
\newtheorem{corollary}[theorem]{Akibat}
\newtheorem{axiom}[theorem]{Aksioma}
\newtheorem{example}[theorem]{Contoh}
\newtheorem{definition}[theorem]{Definisi}
	
%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{%
	\ifnum \c@tocdepth >\m@ne
	\addpenalty{-\@highpenalty}%
	\vskip 0.5em \@plus\p@
	\setlength\@tempdima{5em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	\leavevmode %\bfseries
	\advance\leftskip\@tempdima
	\hskip -\leftskip
	#1\nobreak\hfil \nobreak
	\hb@xt@\@pnumwidth{\hss #2}
	\par
	\penalty\@highpenalty
	\endgroup
	\fi}
\renewcommand*\l@section{\@dottedtocline{1}{3em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{3em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}
%%%%%%------------------------

\renewcommand\thetheorem
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@theorem}

\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}

\renewcommand\thefigure
{\ifnum \c@chapter>\z@ \figurename\space \@arabic\c@chapter.\fi \@arabic\c@figure}
\def\fnum@figure{\nobreakspace\thefigure}

\renewcommand \thetable
{\ifnum \c@chapter>\z@ \tablename\space  \@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thetable}

%%%%---------------------------------
\newcommand\DaftarPustaka[1]{%
	\cleardoublepage
	\addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
	\bibliographystyle{unesa}
	\bibliography{#1}
}

\newcommand{\Glosarium}{%----------------------
	\cleardoublepage
	\vskip 3ex
	\printglossaries
}

%%%%---------------------------------
\newcommand\BukaLampiran{%
    \cleardoublepage
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \addtocontents{toc}{\protect\addvspace{1ex}}%
  \addcontentsline{toc}{chapter}{LAMPIRAN}
  \mbox{}\\\vfill
  {\Huge \hfill{LAMPIRAN}}\\
  \vfill\mbox{}\\
  \thispagestyle{empty}
}

%-----------------------------------
\newcommand\lampiran[1]{%
    \refstepcounter{chapter}
    \cleardoublepage
    \thispagestyle{plain}
    \addcontentsline{toc}{chapter}{\thechapter~~ #1}
    \null
    \begin{center}
    \large\bfseries
    \MakeUppercase\appendixname\space\thechapter
    \par#1
    \end{center}
    \vskip 20\p@\par
}

\newlist{daftar}{enumerate}{1}
\setlist[daftar]{labelindent=2em,leftmargin=*,listparindent=2em,partopsep=0pt, topsep=0pt,itemsep=0pt,parsep=0pt,label=\arabic*.}

%%%------------- PENYESUAIAN ISTILAH ---------------------------
\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
\renewcommand\appendixname{Lampiran}
\renewcommand\proofname{Bukti}
\renewcommand\qedsymbol{$\blacksquare$}
\addto\captionsbahasa{\renewcommand{\bibname}{DAFTAR PUSTAKA}}
\addto\captionsbahasa{\renewcommand{\glossaryname}{GLOSARIUM}}
\addto\captionsbahasa{\renewcommand{\indexname}{INDEKS}}

%\lefthyphenmin=5
%\righthyphenmin=5
%\sloppy
\pagestyle{myheadings}
