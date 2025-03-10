\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjuthesis}
    [Zhejiang University Thesis and Design Template]
    
\RequirePackage{kvoptions}

\SetupKeyvalOptions{
    family=zjuthesis,
    prefix=
}
\DeclareStringOption{StudentName}
\DeclareStringOption{StudentID}
\DeclareStringOption{AdvisorName}
\DeclareStringOption{Grade}
\DeclareStringOption{Major}
\DeclareStringOption{Department}
\DeclareStringOption{Topic}
\DeclareStringOption{Title}
\DeclareStringOption{TitleEng}
\DeclareStringOption{SubmitDate}
\DeclareStringOption{ColaboratorName}
\DeclareStringOption[false]{BlindReview}
\DeclareStringOption[true]{TwoSide}

\ProcessKeyvalOptions*

\wlog{BlindReview: {\BlindReview}}

\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{AutoFakeBold}{xeCJK}

\usepackage{xifthen}

\ifthenelse{\equal{\TwoSide}{true}}
{
    \PassOptionsToClass{
        twoside,
        openright
    }{ctexrep}
}
{}

\LoadClass[
    zihao=-4,
    UTF8
]{ctexrep}

\input{config/packages}


\newcommand{\TitleTypeName}{浙江大学硕士学位论文}
\newcommand{\TitleTypeNameCover}{硕士学位论文}


\input{config/path}
\input{config/commands}
\input{config/format/format}
