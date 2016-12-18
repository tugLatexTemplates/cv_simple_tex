# curriculum vitæ
We present a bi-lingual curriculum vitæ template with
focus on lightweight, simplicity and extendability. 
No strong Latex skills are needed!

## Change Output Language
We use the "[optional](http://tug.ctan.org/macros/latex/contrib/optional/optional.pdf)" 
Latex package for switching in between multiple languages.
Currently we implement just two languages, English and German.
To change the output language consider en-/disabling 
the corresponding argument of the package "optional".

```
% compilation output language setup: enable the respecive optional package
\usepackage[
    % de, % compile to german output
      en, % compile to english output
]{optional} 
```

## Add Custom Content
To add custom content in multiple languages use the "\de{...}" and "\en{...}" macros.
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

The mandatory parameters should be changed according to your needs.

```
\newcommand{\myDocumentTitle}{curriculum vit{\ae}}
\newcommand{\myDocumentAuthor}{Noodly~Monster, \de{MSc}\en{Dipl.-Ing.}}
```

## Draft Compilation
In case you need a draft compilation shwing also all margins, enable the
"draft" option of the "\documentclass" macro.

```
\documentclass[
      a4paper,
      parskip,
    % draft,  % en-/disable draft
      DIV14,
      11pt,
]{scrartcl}
```

## Fine Tuning
Sometimes the amount of text does overlay only by a few sentences with the last page.
To in-/decrease the last page's overlap, adjust the page margin:

```
\usepackage[scale=0.85]{geometry} % adjust page margins
```



Have a noodly day!
