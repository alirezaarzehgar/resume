\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{engineercv}[2025/01/31 Engineer CV class v1.0]

\LoadClass[11pt, letterpaper]{article}

\usepackage[
  ignoreheadfoot,
  top=1 cm,
  bottom=1 cm,
  left=2 cm,
  right=2 cm,
  footskip=1.0 cm,
]{geometry}
\usepackage{titlesec}
\usepackage{tabularx}
\usepackage{array}
\usepackage[dvipsnames]{xcolor}
\definecolor{primaryColor}{RGB}{0, 79, 144}
\usepackage{enumitem}
\usepackage{fontawesome5}
\usepackage{amsmath}
\usepackage[
  pdftitle={Alireza Arzehgar Resume},
  pdfauthor={Alireza Arzehgar},
  pdfcreator={LaTeX with RenderCV},
  colorlinks=true,
  urlcolor=primaryColor
]{hyperref}
\usepackage[pscoord]{eso-pic}
\usepackage{calc}
\usepackage{bookmark}
\usepackage{lastpage}
\usepackage{changepage}
\usepackage{paracol}
\usepackage{ifthen}
\usepackage{needspace}
\usepackage{iftex}
\usepackage{multicol}
\usepackage{blindtext}

\AtBeginEnvironment{adjustwidth}{\partopsep0pt}
\pagestyle{empty}
\setcounter{secnumdepth}{0}
\setlength{\parindent}{0pt}
\setlength{\topskip}{0pt}
\setlength{\columnsep}{0cm}
\makeatletter
\let\ps@customFooterStyle\ps@plain
\makeatother
\pagestyle{customFooterStyle}

\titleformat{\section}{\needspace{4\baselineskip}\bfseries\large}{}{0pt}{}[\vspace{0.05 cm}\titlerule]

\newenvironment{twocolentry}[2][]{
  \def\secondColumn{#2}
  \setcolumnwidth{\fill, 4 cm}
  \begin{paracol}{2}
  }{
    \switchcolumn \raggedleft \secondColumn
  \end{paracol}
}

\let\hrefWithoutArrow\href

\pagenumbering{gobble}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\usepackage[default]{raleway}
\renewcommand*\familydefault{\sfdefault}

\newcommand{\cvsec}[1]{\section{\colorbox{black}{\textcolor{white}{#1}}}}
