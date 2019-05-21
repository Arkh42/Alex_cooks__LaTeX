
%%              %%
% IDENTIFICATION %
% ============== %



% Version of LaTeX required
% -------------------------
\NeedsTeXFormat{LaTeX2e}

% Class declaration
% -----------------   *** Replace 'class_template' with the file name without the .cls extension ***
\ProvidesClass{class_template}[yyyy/mm/dd Additional information about the class_template class]



%%                        %%
% PRELIMINARY DECLARATIONS %
% ======================== %



% Packages needed in the declared options
% ---------------------------------------
\RequirePackage[options]{package-name}


% Commands declaration needed in the declared options
% ---------------------------------------------------
\newcommand*{cmd}{def}
\renewcommand*{cmd}{def}
\DeclareRobustCommand*{cmd}{def}

\newcommand{cmd}{def}
\renewcommand{cmd}{def}
\DeclareRobustCommand{cmd}{def}



%%       %%
% OPTIONS %
% ======= %



% New option
% ----------   *** Useful commands: \CurrentOption, \OptionNotUsed, PassOptionsToPackage{options-list}{package-name}, \PassOptionsToClass{options-list}{class-name} ***
\DeclareOption{option_name}{code}


% Management of not explicitly declared options (default: warning)
% ---------------------------------------------
\DeclareOption*{code}


% Default option list
% -------------------   *** Replace 'options-list' by all options (separated by a comma) that must be used by default ***
\ExecuteOptions{options-list}


% Processing the options
% ----------------------
\ProcessOptions\relax



%%                 %%
% CORE DECLARATIONS %
% ================= %



% Build your class on another class
% ---------------------------------   *** Replace 'class-name' by the name of the class that you want to load ***
\LoadClass[options]{class-name}
\LoadClassWithOptions{class-name}


% Call to specific packages
% -------------------------
\RequirePackage[options]{package-name}
\RequirePackageWithOptions{package-name}


% Commands definition
% -------------------
\newcommand*{cmd}{def}
\renewcommand*{cmd}{def}
\DeclareRobustCommand*{cmd}{def}

\newcommand{cmd}{def}
\renewcommand{cmd}{def}
\DeclareRobustCommand{cmd}{def}
