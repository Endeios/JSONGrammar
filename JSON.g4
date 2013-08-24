grammar JSON;
/*r         : '[' OBJECT (',' OBJECT )* ']';*/

object    : '{' attribute (',' attribute )* '}' ;
attribute : ID ':' ID # simpleAssign 
          | ID ':' object # addObject
;
ID        : [a-zA-Z]+  ;

/*OBJECT    : '{' ATTRIBUTE (',' ATTRIBUTE )* '}' ;
ATTRIBUTE : ID ':' ID ;
ID      : [a-z|A-Z]+;*/
/*#NAME      : '"'[a-z|A-Z]+'"';*/
/*#VALUE     : '"'[a-z|A-Z]+'"'| OBJECT;*/
WS        :   [ \t\r\n]+ -> skip ; // Define whitespace rule, toss it out



