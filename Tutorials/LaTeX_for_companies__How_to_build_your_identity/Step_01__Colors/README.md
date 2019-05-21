
Step 1: show your true color
============================



Each company uses a specific set of colors to build its identity.
Of course, these colors must be used in the documents.



What and why
------------


### Problem

But you can't ask your employee to remember the RGB (or any other) code of the complete set.
And you don't want them to loose their time to dig into the ISO:9001-compliant documentation to find that piece of information.


### Solution

Create a package to define your colors and give them names that are easy to remember.
For instance, "badass-red".
You name it.



How
----


As an example, I will show you how I can create a package that defines the colors
of the University of Mons, Belgium, as specified in the corporate identity and style guide.


### 1. Get the package template

You can find the package template in *Templates/Packages_Classes/package_template.sty*.


### 2. Choose a name

Choose a simple name.
Something like *companyname-colors*.
Easy to remember and poor risk that the same name is already used by another package distributed with the LaTeX core.

Name the file according to your choice and change the corresponding entries in the template.
See the results in *./_02__Choose_a_name/*


### 3. Define the colors

We will use the **xcolor** package, which is the most complete and reliable that I know.
To do so, we are going to use the following commands:
```
\definecolor{colorName}{codeName}{codeValue}
\colorlet{newColorName}{existingColorName}
```
The former allows you to create a color with a given name, by passing the value of a specific code (e.g., RGB).
The latter allows you to create an alias for an existing color. 

See the results in *./_03__Define_the_colors/*


### 4. Test your package

A company needs reliability.
So, before going to production we need unit tests that will have to keep on running and passing
even if the package is modified to ensure integrity of older documents.


### 5. Prepare deployment

Put your package into a folder that has the same name for future deployment.
Deployment depends on your LaTeX distribution.
It will be discussed in another section (MORE TO COME).


### Step completed!
