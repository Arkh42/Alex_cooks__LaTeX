
%%              %%
% IDENTIFICATION %
% ============== %



% Version of LaTeX required
% -------------------------
\NeedsTeXFormat{LaTeX2e}

% Class declaration
% -----------------   *** Replace 'class_template__keyval_option' with the file name without the .cls extension ***
\ProvidesClass{class_template__keyval_option}[yyyy/mm/dd Additional information about the class_template__keyval_option class]



%%                        %%
% PRELIMINARY DECLARATIONS %
% ======================== %



% Loading 'kvoptions' package to manage key=value options
% -------------------------------------------------------
\RequirePackage{kvoptions}

% Loading 'etoolbox' for programming facilities
% ---------------------------------------------
\RequirePackage{etoolbox}


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



% Setup key=value options
% -----------------------   *** Replace 'foobar' by the name that you want for a family of options ***
\SetupKeyvalOptions{
	family=foobar,
	prefix=foobar@
}


% New options
% -----------
\DeclareStringOption[initialValue]{keyName}[default]

\DeclareBoolOption[initialValue]{keyName}
\DeclareComplementaryOption{keyName}{complementName}% Example: \DeclareBoolOption{draft}\DeclareComplementaryOption{final}{draft}

\DeclareVoidOption{optionName}{code}


% Management of not explicitly declared options (default: error)
% ---------------------------------------------
\DeclareDefaultOption{code}


% Processing the options
% ----------------------   *** Replace 'foobar' by the name you chose in the setup ***
\ProcessKeyvalOptions{foobar}\relax



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


% Use of declared StringOption
% ----------------------------
\ifdefstring{\foobar@keyName}{value}{% if true
	% code if true
}{% else
	% code if false
}

% Use of declared BoolOption
% --------------------------
\ifbool{foobar@keyName}{% if true
	% code if true
}{% else
	% code if false
}