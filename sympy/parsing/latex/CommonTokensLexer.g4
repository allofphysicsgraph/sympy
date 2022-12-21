lexer grammar CommonTokensLexer;
DOCUMENTCLASS: '\\documentclass['.*?'\n' ;
PDFOUTPUT: '\\pdfoutput'.*?'\n' ;
NEWCOMMAND: '\\newcommand' .*? '\n' ;
BEGINDOCUMENT: '\\begin{document}' .*? '\n' ;

BEGINABSTRACT: '\\begin{abstract}' .*? '\\end{abstract}' ;


BEGINEQUATION: '\\begin{equation}';
ENDEQUATION: '\\end{equation}';

EQUATION: BEGINEQUATION NL (EQUATION|EXPRESSION)* NL LABEL NL ENDEQUATION;


COMMA: ',' ;
MAKETITLE:'\\maketitle';
NL: '\n';
WS: [ ];
RAGGEDBOTTOM: '\\raggedbottom'; 


AUTHOR: '\\author' BALANCED; 
TITLE: '\\title' BALANCED;
AFFILIATION: WS* '\\affiliation' BALANCED;
SECTION: '\\section' BALANCED;
Cite: '\\cite' BALANCED;
USEPACKAGE: '\\usepackage' BALANCED .*? '\n' ;
LABEL: '\\label' BALANCED;


FRAC: '\\frac' BALANCED BALANCED;


COMMENT: '%' .*? NL ; 
SingleLineMath: ~'$''$'.*?'$'~'$';

CARET: '^' ;


EXPRESSION: FRAC EQUALS ALPHA LEFT LPAREN FRAC RIGHT RPAREN CARET LBRACE FRAC RBRACE 
	   |	SYMBOL EQUALS LEFT LPAREN FRAC RIGHT RPAREN CARET LBRACE FRAC RBRACE COMMA
	   |	SYMBOL EQUALS ALPHA LEFT LPAREN FRAC RIGHT RPAREN CARET LBRACE FRAC RBRACE SYMBOL COMMA
	   |    SYMBOL SUB    BALANCED EQUALS FRAC COMMA
	   |    SYMBOL EQUALS FRAC OMEGA SUB BALANCED SYMBOL
	   |    FRAC EQUALS LEFT LPAREN FRAC RIGHT RPAREN CARET BALANCED 
	   |    SYMBOL EQUALS FRAC LEFT LPAREN FRAC RIGHT RPAREN CARET BALANCED;


BALANCED: '{' (BALANCED|~[{}])* '}';
SYMBOL: 'v' | 'E' | 'c'|'a';
NOINDENT: '\\noindent';
SUB: '_';
OMEGA: '\\omega';
ALPHA: '\\alpha';
LEFT: '\\left';
LBRACE: '{' ;
RBRACE: '}' ; 
LPAREN: '(' ;
RPAREN: ')' ;
RIGHT: '\\right';
EQUALS: '=' ;
MaybeWord: [A-Za-z]+;
REF: '\\ref';
WIDEHAT: '\\widehat';
QQUAD: '\\qquad';
FLAT: '\\flat';
FINV: '\\Finv';
EVAL: '\\eval';
DYAD: '\\dyad';
DMAT: '\\dmat';
DDOT: '\\ddot';
CURL: '\\curl';
CSCH: '\\csch';
COTH: '\\coth';
COSH: '\\cosh';
CONG: '\\cong';
COMM: '\\comm';
CIRC: '\\circ';
CDOT: '\\cdot';
BQTY: '\\Bqty'|'\\bqty';
BMOD: '\\bmod';
BETH: '\\beth';
BETA: '\\Beta' | '\\beta';
BBBK: '\\Bbbk';
ATAN: '\\atan';
ASIN: '\\asin';
ASEC: '\\asec';
ACSC: '\\acsc';
ACOT: '\\acot';
ACOS: '\\acos';
YEN: '\\yen';
VEE: '\\vee';
VEC: '\\vec';
VAR: '\\var';
TOP: '\\top';
TAU: '\\Tau'|'\\tau';
TAN: '\\tan';
TAG: '\\tag';
SUP: '\\sup';
SUM: '\\sum';
SIN: '\\sin';
SIM: '\\sim';
SEC: '\\sec';
RSH: '\\Rsh';
RHO: '\\Rho'|'\\rho';
RHD: '\\rhd';
RES: '\\Res';
QTY: '\\qty';
QOR: '\\qor';
QIN: '\\qin';
QIF: '\\qif';
QCC: '\\qcc';
QAS: '\\qas';
PUT: '\\put';
PSI: '\\Psi'|'\\psi';
PHI: '\\Phi'|'\\phi';
PDV: '\\pdv';
NEQ: '\\neq';
NEG: '\\neg';
MIT: '\\mit';
MIN: '\\min';
MID: '\\mid';
MHO: '\\mho';
MEL: '\\mel';
MAX: '\\max';
LSH: '\\Lsh';
LOR: '\\lor';
LOG: '\\log';
LLL: '\\lll';
LIM: '\\lim';
LHD: '\\lhd';
LEQ: '\\leq';
KET: '\\ket';
KER: '\\ker';
INT: '\\int';
INF: '\\inf';
IFF: '\\iff';
HOM: '\\hom';
HAT: '\\hat';
GGG: '\\ggg';
GEQ: '\\geq';
GCD: '\\gcd';
FDV: '\\fdv';
EXP: '\\exp';
ETH: '\\eth';
ETA: '\\Eta' | '\\eta';
ERF: '\\erf';
ELL: '\\ell';
DOT: '\\dot';
DIV: '\\div';
DIM: '\\dim';
DET: '\\det';
DEG: '\\deg';
CUP: '\\Cup' | '\\cup';
CSC: '\\csc';
COT: '\\cot';
COS: '\\cos';
CHI: '\\chi';
CAP: '\\Cap' | '\\cap';
CAL: '\\cal';
BRA: '\\bra';
BOX: '\\Box';
BOT: '\\bot';
BBB: '\\Bbb';
BAR: '\\bar';
AST: '\\ast';
ARG: '\\arg';
ABS: '\\abs';
XI: '\\Xi' | '\\xi';
WR: '\\wr';
WP: '\\wp';
VU: '\\vu';
VB: '\\vb';
VA: '\\va';
TR: '\\Tr'|'\\tr';
TO: '\\to';
RE: '\\Re';
QQ: '\\qq';
QC: '\\qc';
PV: '\\PV' | '\\pv';
PR: '\\Pr';
PM: '\\pm';
PI: '\\Pi'| '\\pi';
PB: '\\pb';
OP: '\\op';
NU: '\\Nu' | '\\nu';
NI: '\\ni';
NE: '\\ne';
MU: '\\Mu' | '\\mu';
MP: '\\mp';
LN: '\\ln';
LL: '\\ll';
LG: '\\lg';
LE: '\\le';
IP: '\\ip';
IN: '\\in';
IM: '\\Im';
GG: '\\gg';
GE: '\\ge';
EV: '\\ev';
DV: '\\dv';
DD: '\\dd';
CP: '\\cp';
LDOT: '\\ldot';
LDOTS: '\\ldots';
DOTS: '\\dots';
SQRT: '\\sqrt';
