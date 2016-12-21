# curriculum vitæ
We present a bi-lingual curriculum vitæ template with
focus on lightweight, simplicity and extendability. 
No strong Latex skills are needed! 
This repository provides two compiled templates, in [german](./cv-de.pdf) and [english](./cv-en.pdf).

## Change Output Language
Currently we implement just two languages, English and German.
To change the output language consider enabling one of the corresponding arguments.
If both are disabled the command line arguments will be considered (see [compile-all.sh](compile-all.sh)).

```
%\def\languageEn{1}
%\def\languageDe{1}
```

## Add Custom Content
To add custom content in multiple languages, use the "\de{...}" and "\en{...}" macros.
For example:

```
\de{nooodly appendage}\en{nudeliger Körperteil}

```
will compile according to your setting. In this case, with "en" enabled as 
argument for the "optional" Latex package, to "noodly appendage".

In case of frequently used terms we suggest you to use makros as follows:

```
\newcommand{\myFrequentTerm}{\de{innerer Schweinehund}\en{inner pig dog}}
```
and use "\myFrequentTerm" instead.

## Mandatory Parameters
The following mandatory parameters should be changed according to your needs.

```
\newcommand{\myImageWidth}{12em} % width of your image
\newcommand{\myDocumentTitle}{curriculum vit{\ae}}
\newcommand{\myDocumentAuthor}{Noodly~Monster, \de{MSc}\en{Dipl.-Ing.}} % your name + degree
% date of document
\newcommand{\myDocumentDay}{19}
\newcommand{\myDocumentMonth}{\de{Dezember}\en{December}}
\newcommand{\myDocumentYear}{2015}
% date of birth
\newcommand{\myDateOfBirthDay}{1}
\newcommand{\myDateOfBirthMonth}{\en{January}\de{Januar}}
\newcommand{\myDateOfBirthYear}{2005}

```

## Draft Compilation
In case you need a draft compilation, which is highlighting all margins, enable one of the
"\myDraftSwitch" options.
If both are disabled the command line arguments will be considered (see [draft.pdf](./draft.pdf) and [compile-all.sh](compile-all.sh)).

```
% \newcommand{\myDraftSwitch}{draft,} % enable draft
% \newcommand{\myDraftSwitch}{}       % disable draft
```

## Todo Notes
Many todo notes are attached to the document, to help you out how to 
customize the document (see [main.pdf](./main.pdf)).
To globally turn them off, configure one of the corresponding "\myTodoNotesSwitch" options.
If both are disabled the command line arguments will be considered (see [compile-all.sh](compile-all.sh)).

```
%\newcommand{\myTodoNotesSwitch}{}  % enable todos globally
%\newcommand{\myTodoNotesSwitch}{disable,} % disable todos globally
```

## Fine Tuning
Sometimes the amount of text does overlay only by a few sentences with the last page.
To in-/decrease the last page's overlap, adjust the page margin:

```
\usepackage[scale=0.85]{geometry} % adjust page margins
```


Have a noodly day!
