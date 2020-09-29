% vim: ft=tex
%% yorkthesis.cls
%% Copyright 2020 A. Pezzoni
%
% This work may be distributed and/or modified under the conditions of the LaTeX
% Project Public License, either version 1.3 of this license or (at your option)
% any later version, with the exception that distribution of Derived Work is not
% subject to the requirements of section 6.2.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX version
% 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained`.
%
% The Current Maintainer of this work is A. Pezzoni.
%
% This work consists of the files yorkthesis.cls, example.tex and README.md.

% Comments starting with FORMAT highlight requirements from the UoY thesis
% regulations, as of September 2020.
% See https://www.york.ac.uk/research/graduate-school/academic/thesis/format/#tab-2

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yorkthesis}[2020/09/15 v0.1 UoY thesis]


%%% Set class options

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{memoir}
}

\PassOptionsToClass{twoside}{memoir}

% FORMAT: Avoid blank pages.
\PassOptionsToClass{openany}{memoir}

% FORMAT: Font size must be at least 11pt.
%         The document must be on A4 paper.
\PassOptionsToClass{12pt,a4paper}{memoir}

\ProcessOptions
\LoadClass{memoir}


%%% Formatting options

% FORMAT: Use 1.5 line spacing.
\OnehalfSpacing

% FORMAT: Spine margin should be at least 40mm,
%         other margins should be at least 15mm.
% NOTE: This results in only a slight difference between the margins.
\setlrmargins{40mm}{*}{*}
\checkandfixthelayout

% FORMAT: Table of contents must include all document subdivisions.
%         Do not go below subsubsections.
\settocdepth{subsubsection}
\setsecnumdepth{subsubsection}

% FORMAT: The font size of the headings should be smaller than the font size of
%         the main text.
% NOTE: Hyperref messes up the capitalisation of headings containing a reference
%       label, so we use small-caps headings as a workaround.
%       See https://tex.stackexchange.com/q/562773/27664
\nouppercaseheads
\pagestyle{headings}
\makeevenhead{headings}{\thepage}{}{\small\slshape\scshape\leftmark}
\makeoddhead{headings}{\small\slshape\scshape\rightmark}{}{\thepage}

% FORMAT: A bibliography should contain every item consulted in writing the
%         thesis, while a list of references only contains the intems explicitly
%         mentioned in the document.
\renewcommand{\bibname}{References}


%%% Title page

\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\qualification}[1]{\def\@qualification{#1}}
\newcommand{\submitdate}[1]{\def\@submitdate{#1}}

% Empty submitdate defaults to the current month and year.
% Taken from the yorkThesis class by J H Pickering:
% https://www.york.ac.uk/language/current/resources/software-resources/latex/
\def\@submitdate{%
  \ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}

\newlength{\droplen}
\newcommand*{\makethesistitle}{\begingroup%
  % FORMAT: The title page should have number 1 (not visible),
  %         hence the starred version of `titlingpage`.
  \begin{titlingpage*}
    % Centre the title with respect to the physical page, not the typeblock
    \calccentering{\unitlength}
    \begin{adjustwidth*}{\unitlength}{-\unitlength}
      \droplen=0.1\textheight
      \vspace*{\droplen}
      \centering
      {\Huge \@title}\\[2\baselineskip]
      {\Large \@author}\par
      \begin{vplace}[2]  % Split surrounding vertical space with a 2:1 ratio
        {\large \scshape \@qualification}\\[2\baselineskip]
        {\LARGE \scshape University of York}\\[.5\baselineskip]
        {\LARGE \scshape \@department}
      \end{vplace}
      {\large \@submitdate}\par
      \vspace*{\droplen}
    \end{adjustwidth*}
    % FORMAT: The abstract should be on page 2, so we prevent clearing to
    %         the next recto page.
    \titlingpageend{\clearforchapter}{\clearforchapter}
  \end{titlingpage*}
\endgroup}
