
Step 3: set the language
========================



Why
----


One of the most powerful feature of LaTeX is that the user doesn't have to care 
about little things like typography.
For those who don't know what I mean, here are two examples:
- in English, this is correct; in French, it is not
- in English, this is not correct ; in French, it is
Can you see the difference?
The answer is... the space before the semi-colon (;).
In English, no space becore, space after.
In French, non-separable space before, space after.

Creazy people like me enjoy to know this kind of rules.
Most of people don't.
And that's the beauty of LaTeX: it takes care of that for you.
But, you need to tell it the language in use, and a few set of features 
that we are going to see in this tutorial.



How
----


### 0. Foreword

Many features that are presented below allow the user to perfectly handle accented letters,
that are common in many languages, such as French.
Even if the user writes English, I strongly advise to follow the next recommendations
in order to make "robust" LaTeX documents.

In addition, many features become **compiler-dependent**, so please be careful about that.
If you have no idea what I'm writing about (who does?), please refer to
[Step 2: compile LaTeX](../Step_02__Compile).


### 1. Manage accented letters and font encoding

Three packages manage accented letters and font encoding:
1. [inputenc](https://ctan.org/pkg/inputenc),
2. [fontenc](https://ctan.org/pkg/fontenc), and
3. [fontspec](https://ctan.org/pkg/fontspec).

#### LaTeX and PDFLaTeX compilers

In that case, you must call:
- `inputenc` to be allowed to type directly accented letters in your document,
- `fontenc` to enable correct hyphenation rules depending on the font encoding.

It looks a bit theoretical, doesn't it?
Well, concretely, without `inputenc`, you must write \'{e} to get a é.
**UTF8** encoding is encouraged.
Regarding `fontenc`, it breaks the words at the end of the line by itself if necessary.
Otherwise, you should do it manually... A true nightmare.
**T1** font type is better to use for compatibility reasons when writing in English 
or French and using PostScript fonts.

In the LaTeX document, you must call the packages this way:
```latex
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
```

#### XeLaTeX and LuaLaTeX compilers

In that case, you must call `fontspec` to enable the rich font management.
Among others, you can use OpenType fonts.

In the LaTeX document, you must call the package this way:
```latex
\usepackage{fontspec}
```


### 2. Choose a font

For clarity and readability, original or artistic fonts should be avoided.
A common font was *Computer Modern*, modernized by the *Latin Modern* font.
However, both have been extensively used, so that some people consider them boring.
Nevertheless, this tutorial doesn't aim a discussion about fonts, so I'm going to use
*Latin Modern* as an example.

#### LaTeX and PDFLaTeX compilers

In that case, you can load fonts by calling dedicated packages.
To load Latin Modern:
```latex
\usepackage{lmodern}
```

#### XeLaTeX and LuaLaTeX compilers

In that case, fonts can be directly imported though the `fontspec` package interface.
To do so:
```latex
\setmainfont[%
	SmallCapsFont={* Caps},%	enable small capital font family
	SlantedFont={* Slanted},%	enable slanted font family
]{Latin Modern Roman}
```
The optional arguments of the `\setmainfont` command allow you to apply the font to
small capital letters and slanted (between normal and italic) styles.


### 3. Select the language

As mentionned in the introduction, typography can be a true nightmare to manage.
This is the reason why packages have been created to do so.
You simply must pass the language of your choice as an option of the package. That's it!

Two packages are very powerful for the languages in LaTeX:
1. [babel](https://ctan.org/pkg/babel), and
2. [polyglossia](https://ctan.org/pkg/polyglossia).

The former works with all compilers.
The latter requires the `fontspec`  package, hence XeLaTeX or LuaLaTeX.


### 4. Improve quotations management

Quotes are part of the typographical nightmare.
Indeed, many people use the straight quotes ("") coming from IT and keyboards, even thought it is uncorrect.
As an example, correct quotes in French are << and >> with non separable space.

Unfortunately, LaTeX can't transform a character into another.
But you're not on your own: the `csquotes` package is here to work for you.
Pay attention: `csquotes` is orginally  made to work with `babel`.
However, it usually works fine with `polyglossia`.


### 5. Enhance typography management

Last but not least, typography is a science that aims to make the reading as comfortable as possible
without the reader being aware of it.
Among other techniques: character protrusion, font expansion and letterspacing.

Any document has better rendering with the `microtype`.
This package is powerful but all compilers do not allow to use it at 100 %.
The best compilers from the `microtype` point of view are PDFLaTeX and LuaLaTeX.

Anyway, if you are interested in "microtypography", you can find information [here](https://www.ctan.org/pkg/microtype).


### 6. Create your first complete document!

Six **.tex** documents are available in the repository:
- [tex file for the latex compiler and the babel package](first_complete_doc__latex_babel.tex)
- [tex file for the pdflatex compiler and the babel package](first_complete_doc__pdflatex_babel.tex)
- [tex file for the xelatex compiler and the babel package](first_complete_doc__xelatex_babel.tex)
- [tex file for the lualatex compiler and the babel package](first_complete_doc__lualatex_babel.tex)
- [tex file for the xelatex compiler and the polyglossia package](first_complete_doc__xelatex_polyglossia.tex)
- [tex file for the lualatex compiler and the polyglossia package](first_complete_doc__lualatex_polyglossia.tex)


### Step completed!
