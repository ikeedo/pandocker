---
papersize: a4
fontsize: 11pt
links-as-notes: true
bibliography: data/bib.bib
csl: resources/csl/apa.csl

title: Titel
subtitle: Untertitel
author: [Autor]
date: 01.01.1970
subject: Markdown
keywords: [Markdown, Example]
abstract: Zusammenfassung

lang: de
titlepage: true
titlepage-color: 334477
titlepage-text-color: FFFFFF
titlepage-rule-color: FFFFFF
toc-own-page: true
footnotes-pretty: true
classoption: [oneside]
float-placement-figure: H
table-use-row-colors: true
...

\newpage
\tableofcontents
\newpage

# Markdown

## Text

This text is _emphasized with underscores_, and this
is *emphasized with asterisks*.

This is **strong emphasis** and __with underscores__.

This is * not emphasized *, and \*neither is this\*.

This ~~is deleted text.~~

What is the difference between `>>=` and `>>`?

[Small caps]{.smallcaps}

H~2~O is a liquid.  2^10^ is 1024.

### Links {#anker}

[Localhost](http://localhost)

<http://localhost>

[Link zu Anker](#anker)

### Fußnoten

Hier geht's zur Fußnote: [^1]

[^1]: Inhalt der Fußnote.

## Listen

### Bullet-Listen

+ A lazy, lazy, list
item.

+ Another one; this looks
bad but is legal.

    Second paragraph of second
list item.

### Numerierte Listen

(1) Eins
1. Eins
 1) Eins
 2)  Zwo
       i. subone
      ii. subtwo
     iii. subthree

### Task-Listen

- [ ] an unchecked task list item
- [x] checked item

### Definition Lists

Term 1
:   Definition 1

Term 2
:   Definition 2

### Beispiele

(@) Erstes Beispiel
(@good) Gutes Beispiel

Wie in Beispiel (@good) gezeigt, …

## Bilder

![Das ist die Bildunterschrift\label{fig1}](data/md.png){ width=50% }

Abbildung \ref{fig1} zeigt das Markdown-Logo.

Es geht auch im Textfluss: ![Bild im Textfluss\label{fig2}](data/md.png){ width=25% }\

## Referenzen

Wie jemand sagte [@Sloan2019, pp .445--460; @Tsai2011]. Das sagten Sloan & Horton wirklich [-@Sloan2019]. Aber @Sloan2019 [p. 445] behaupteten das.

## Blöcke

### Text mit Umbrüchen

| The limerick packs laughs anatomical
| In space that is quite economical.
|    But the good ones I've seen
|    So seldom are clean
| And the clean ones so seldom are comical

| 200 Main St.
| Berkeley, CA 94718

### Zitat

> This is a block quote. This
> paragraph has two lines.
>
> 1. This is a list inside a block quote.
> 2. Second item.

> My block [quote].
>
> [quote]: FooBar

### Code

```php
public function foo()
{
    return 'bar';
}
```

### Math

Inline: $r_d^i(t+1) = \min\{r_s,\max\{0, r_d^i(t) + \beta(n_t - \lvert N_i(t)\rvert)\}\}$

Als Absatz:

$$
r_d^i(t+1) = \min\{r_s,\max\{0, r_d^i(t) + \beta(n_t - \lvert N_i(t)\rvert)\}\}
$$

## Tabellen

Table: Einfache Tabelle \label{tab1}

| First Header | Second Header |
|:-------------|:--------------|
| Content Cell | Content Cell  |
| Content Cell | Content Cell  |


Table: Noch eine Tabelle \label{tab2}

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

: Grid Table. \label{tab3}

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+

Wie in Tabellen \ref{tab1}, \ref{tab2} und \ref{tab3} zu sehen, sind das Tabellen.

# Nicht numerierter Abschnitt {-}

Lorem markdownum includite volenti monticolae videre vocem hac sparsit put gelidis vestros egressus sex. Undis eris per auguris armis. Est saevior pater.
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. 

# LaTeX

Abstand …

\bigbreak

… zwischen Absätzen

Heute ist der \today.

Ab sofort soll die Seite umbrechen mit einer Prio von 4 (aus -4 bis 4).
\pagebreak[4]

\newpage
\listoffigures
\listoftables
\newpage

# Literaturverzeichnis {-}
