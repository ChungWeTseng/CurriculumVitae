\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_class}[09/02/2013 custom CV class]
\LoadClass{article}

% Disable headers and footers
% ----------------------------------
\pagestyle{empty}

% Set page margins
% ----------------------------------
\RequirePackage[margin=0.75in]{geometry}

% Define Colors
% ----------------------------------
\RequirePackage{color}
\definecolor{white}{RGB}{250,250,250}
\definecolor{black}{RGB}{30,30,65}
\definecolor{blue}{RGB}{65,105,225}
  % Document color
\color{black}
\pagecolor{white}

% Add icons
% ----------------------------------
\RequirePackage{fontawesome}

% Define Font Family
% ----------------------------------
\RequirePackage{kmath,kerkis}
\RequirePackage[T1]{fontenc}

\linespread{1.2}

\RequirePackage{titlesec}
\titleformat{\section}       % Customise the \section command
  {\large\scshape\raggedright} % Make the \section headers large (\Large)
                             % , small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}            % Can be used to give a prefix to all sections, like 'Section ...'
  {}                 % Can be used to insert code before the heading
  [\titlerule]       % Inserts a horizontal line after the heading
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\titlespacing{\section}{0pt}{*3}{*3}

\newcommand{\name}[1]{
  \centerline{\Huge{\textbf{\textcolor{blue}{#1\bigskip}}}}
}
\newcommand\address[5]{
  \center{
    \makebox[0pt][c]{
      #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
      \ #4 \ #5
    }
  }
}

\newcommand{\contacts}{
  \center{
    \makebox[0pt][c]{
      \contact
    }
  }%
}
\newcommand{\contact}[1]{
  #1\@ifnextchar\bgroup{\contact}{}
}

\newcommand{\phone}[1]{
  \faMobile\space#1
}

\newcommand{\linkedin}[1]{
  \faLinkedinSquare\space#1
}

\newcommand{\email}[1]{
  \faEnvelope\space#1
}

% Section item
\RequirePackage{tabularx}
\RequirePackage{array}
\newcolumntype{L}{>{\hsize=.2\hsize}X}
\newcolumntype{R}{>{\hsize=.8\hsize}X}

\newcommand{\secondline}[1]{
  \def\optional{#1}\ifx\optional\empty {} \else {\newline #1} \fi
}

\newcommand{\desc}[4]{
  \begin{tabularx}{\textwidth}{L R}
    \textsc{#1 \secondline{#2}} & \begin{large} \textsc{#3} \end{large} \secondline{#4}
  \end{tabularx}\\\bigskip
}

\newcommand{\skill}[2]{
  \begin{tabularx}{\textwidth}{L R}
    \textsc{#1} & {#2}
  \end{tabularx}\\\medskip
}
