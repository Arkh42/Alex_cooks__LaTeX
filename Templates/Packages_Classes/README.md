
Alex_cooks__LaTeX - Templates / Packages & Classes
==================================================

Tags: <font style="color:red">advanced, company</font>.



Packages are files with **.sty** extension.
Classes are files with **.cls** extension.

From 
[clsguide – Documentation of LaTeX class and package writing](https://ctan.org/pkg/clsguide),
> If the commands could be used with any document class, then make them a package;
> and if not, then make them a class.

Shortly, packages and classes are useful to:
- build/load tools dedicated to specific use like mathematics and drawings (packages),
- create layouts that will be automatically set (classes).



Contents
--------


### Minimal templates

Files:
- class_template.cls
- package_template.sty

All classes and templates have the same structure:
1. identification (which LaTeX version, which class/package),
2. preliminary declaration (what is needed for options),
3. options (declaration & management), and
4. core declaration (main part of the class/package).

There are slight differences if you want *key=value* options.
(More to come about that.)
