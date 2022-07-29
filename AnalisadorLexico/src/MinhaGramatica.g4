grammar MinhaGramatica;

ID: [a-z](DIGITO|LETRA)*;
OPAT: '=';
OPAR: '+'|'-'|'*'|'/'|'|'|'%';
OPRE: '=='|'>'|'>='|'<'|'<='|'!=';
OPBO: 'E'|'OU'|'NAO'|'OUX';
TIPO: 'INTEIRO' | 'REAL' | 'CARACTERE' | 'BOOLEANO';
IF: 'SE';
ELSE: 'SENAO';
THEN: 'ENTAO';
LOOP: 'PARA' | 'ENQUANTO';
AP: '(';
FP: ')';
ACH: '{';
FCH: '}';
AC: '[';
FC: ']';
DELIMITADOR: ';';
SEPARADOR: ',';
RETORNO:'RETORNO';
IO: 'LER'|'ESCREVER';
MODACESSO: 'PUBLICO'|'PRIVADO';
TEXTO: '"' (ESC | ~["\\])* '"';
NUM: ('-')?DIGITO+('.'DIGITO+)?;
COMENT:  '//' (.*?) ('\n' | '\r') -> skip;
WS: [ \r\t\n]* ->skip;
ErrorChar: . ;
fragment LETRA: [a-zA-Z];
fragment DIGITO: [0-9];
fragment ESC: '\\' (["\\/bfnrt] | UNICODE);
fragment UNICODE: 'u' HEX HEX HEX HEX;
fragment HEX: [0-9a-fA-F];
