%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% unmsmfcf.cls
% Clase UNMSMFCF para tesis, monografias y otras publicaciones
%
%*     Universidad Nacional Mayor de San Marcos (UNMSM)                           *% 
%*     Copyright 2022-2023 © UNMSM-FCF                                            *%
%*     Al utilizar unmsmfcf.cls por favor,                                        *%
%*     - mencione que el original fue desarrolado por David Pareja/UNMSM-FCF      *%
%*       puede ser obtenido en el enlace: http://muypronto                        *%
%*     - indique las modificaciones efectuadas para identificarlas y adicionarlas *%
%
% Desarrollado por:
% David Pareja Q. (dparejaq@unmsm.edu.pe) [10/10/2022] % Last update 02/05/2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%class for LaTeX2e
%https://es.overleaf.com/learn/latex/Writing_your_own_class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unmsmtesis}[05/10/22 Example LaTeX class]


%%%%%%%%%% Classe base
\LoadClass[onecolumn,a4paper,12pt]{report} %% Importante

\RequirePackage{titlesec}% needed for \titleformat and \titlespacing - acrescentado por gjfb em 2009-10-11
\RequirePackage{titletoc}% needed for \titlecontents - acrescentado por gjfb em 2009-10-11
\RequirePackage[overload]{textcase} %% para poder deixar algum texto em minúscula no título usando \NoCaseChange{}
%\RequirePackage{ifthen} %% essencial %% operador de condicionais
\RequirePackage{calc} %% essencial %% operações matemáticas


\RequirePackage{color} %% Importante %% aplica colore en el texto
\RequirePackage[utf8]{inputenc} %% importante
\RequirePackage[round]{natbib} %% importante
\RequirePackage[document]{ragged2e} %% importante
\RequirePackage[spanish,es-tabla]{babel} %% importante
\RequirePackage[T1]{fontenc} 
\RequirePackage{appendix} %Anexos y apéndice
\RequirePackage{float}	%% 
\RequirePackage{etoolbox}
\RequirePackage{tocloft} %% tamaño de fuente
\RequirePackage{graphicx}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage[colorlinks=true,allcolors=blue]{hyperref}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{sectsty}
\RequirePackage{titling} 
\RequirePackage{blindtext}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{doi}
\RequirePackage{tocloft}
\RequirePackage{soulutf8}
%\RequirePackage{soul}
\RequirePackage{afterpage}

\RequirePackage{hyphenat} %Ejemplo \hyphenation{mate-máticas}
\RequirePackage{array} %% importante %% variante para arreglos y tablas 
\RequirePackage{setspace} %% important %%
\RequirePackage{bigdelim} %% important %% 
\RequirePackage{multirow} %% important %%
\RequirePackage{supertabular} %% important 
\RequirePackage{tabularx} %% important 
\RequirePackage{longtable} %% important 
\RequirePackage{lastpage} %% cuidado con el uso de endfloat %% da num. de pág. total del doc.
\RequirePackage{lscape} %% important 
\RequirePackage{rotate} %% important floats (figuras, tabelas)
\RequirePackage{amsmath,amssymb,amsthm} %% important 
\RequirePackage{makeidx} %% important make the ÍNDICE
\RequirePackage{eso-pic}

\RequirePackage[font=normalsize,skip=1ex,labelfont=bf]{caption}
\RequirePackage[protrusion=true, expansion=true]{microtype}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% configuration of the margins 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\normalsize
% Set page size and margins
\usepackage[a4paper,top=2.54cm,bottom=2.54cm,left=3.00cm,right=2.54cm]{geometry} %Last modification 02-01-2023

% - Listas enumeradas:
%%\renewcommand{\theenumi}{\alph{enumi}}
%\renewcommand{\theenumii}{\arabic{enumii}}
\renewcommand{\theenumii}{\bfseries--}
%\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\labelenumi}{\theenumi)}
\renewcommand{\labelenumii}{\theenumii}

%======================================
\setlength {\marginparwidth}{2cm} %%SPACE FOR THE COMMENTS

%==========================================
% Variables, CONTROL THE LANGUGES
%==========================================
\AtBeginDocument{
\renewcommand{\listfigurename}{Índice de Figuras}
\renewcommand{\listtablename}{Índice de Tablas}
\renewcommand{\contentsname}{Índice General}
\renewcommand\bibname{Referencias Bibliográficas}
\newcommand{\listsimbname}{Lista de Símbolos}
%\newcommand\anexoautorefname{Anexo}%
}

%=============================
%=======MODIFIYING THE FORMAT OF THE CHAPTERS======
\usepackage{titlesec}

\titleformat{\chapter}[block]
  {\normalfont\large\bfseries}{\thechapter.}{1em}{\large}
\titlespacing*{\chapter}{0pt}{0pt}{16pt}

%%%%%%%%%%%%%%%%%%%MODIFIYING THE FORMAT OF THE SECTIONS%%%%%%%%%%%%%%%%%
\usepackage{sectsty}
\sectionfont{\fontsize{14}{16}\selectfont}

\subsectionfont{\fontsize{14}{16}\selectfont}
%%%%%%Tamaño de fuente de los capítulos
%\chaptertitlefont{\Large}

%=========================================================
%Pone lineas puntilladas en los capitulos del indice
%=========================================================
%\renewcommand{\cftchapleader}{\normalfont\bfseries\cftdotfill{\cftsecdotsep}}
\renewcommand\cftaftertoctitle{\hfill\null\\\hfill\textbf{\ul{\textbf{Pag.}}}\par}

%======================================
% Change font size
%======================================
%List of contents
\renewcommand\cftsubsecfont{\normalsize}
\renewcommand\cftchapfont{\normalsize\bfseries}
\renewcommand\cftsecfont{\normalsize}

\renewcommand\cftchappagefont{\normalsize\bfseries}
\renewcommand\cftsecpagefont{\normalsize}
%\renewcommand\cftchapafterpnum{\par\addvspace{2pt}}


%===================
%List of Figures
%===================
\renewcommand{\cftloftitlefont}{\hfill\Large\bfseries}
\renewcommand{\cftafterloftitle}{%
  \hfill \vspace*\baselineskip\par \mbox{}\hfill{\normalfont \ul{\textbf{Pag.}}}}
\setlength{\cftbeforefigskip}{0.05em} % space between entries

\renewcommand{\cftbeforeloftitleskip}{0.07in}    % Title is 1in from top
\renewcommand\cftfigfont{\normalsize}
\renewcommand\cftfigpagefont{\normalsize}
%\renewcommand{\listfigurename}{\centering Índice de Figuras \vspace*{5ex}}
%==========================================
%https://tex.stackexchange.com/questions/631297/centering-heading-and-adding-vertical-space-within-a-listoffigures-environment

%=====================================
%List of Tables
%=====================================
\renewcommand{\cftlottitlefont}{\hfill\Large\bfseries}
\renewcommand{\cftafterlottitle}{%
  \hfill \vspace*\baselineskip\par \mbox{}\hfill{\normalfont \ul{\textbf{Pag.}}}}
\setlength{\cftbeforefigskip}{0.05em} % space between entries
%\renewcommand\cftlottitlefont{\Large\bfseries}
%\addtocontents{lot}{{~\ul{}}~\hfill{\ul{\textbf{Pag.}}}\par}
\renewcommand{\cftbeforelottitleskip}{0.07in}    % Title is 1in from top
\renewcommand\cfttabfont{\normalsize}
\renewcommand\cfttabpagefont{\normalsize}

%===========================================
% TABLE OF CONTENT
%============================================
\renewcommand{\contentsname}{Índice General}
\renewcommand{\cfttoctitlefont}{\hfill\Large\bfseries} %!some command to make the heading huge and bold
\renewcommand{\cftbeforetoctitleskip}{0.07in}    % Title is 1in from top
\renewcommand{\cftaftertoctitleskip}{2.0\baselineskip}% 1 double space after title
\renewcommand{\cftchapfont}{\normalsize\bfseries\rmfamily} % Can make it bold faced here; don't put a space in the {}
\renewcommand{\cftchappagefont}{\normalsize\bfseries\rmfamily} % Can make it bold faced here; don't put a space in the {}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}             % Puts dots after chapter entries
%\renewcommand{\cftchappresnum}{Chapter\ }             %
\renewcommand{\cftchapaftersnum}{}                    % Don't put a space in the {}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}%
\renewcommand{\cftchappagefont}{}                      %
\renewcommand{\cftchapnumwidth}{0.25in}
\setcounter{secnumdepth}{10}    % Number subsubsections in the chapters
\setcounter{tocdepth}{10}       % Put subsubsections in the table of contents
%\setcounter{tocdepth}{2}
