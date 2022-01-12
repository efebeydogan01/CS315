%{
#include <stdio.h>
%}

letter						[A-Za-z]
digit						[0-9]
alphanumeric				({letter}|{digit})
int_const					{digit}+
double						[+-]?{digit}*(\.)?{digit}+
semicolon					\;
lbrace						\{
rbrace						\}
lparenthesis				\(
rparenthesis				\)
if							if
else						else
elseif						elseif
while						while
for							for
start						start
end							end
assignment_op				\=
return						return
int_type					int
void_type					void
char_type					char
double_type					double
string_type					string
boolean_type				boolean
logical_or					\|\|
logical_and					\&\&
less_than					\<
greater_than				\>
less_or_equal				\<\=
greater_or_equal			\>\=
equality_op					\=\=
not_equal_op				!\=
addition_op					\+
subtraction_op				\-
multiplication_op			\*
division_op					\/
modulo_op					\%
comma						\,
comment_line				\?(.)*\?
string						\"(.)*\"
char						\'.\'
boolean_const				(true|false)
main						main
get_heading					\<heading\>
get_altitude				\<altitude\>
get_temperature				\<temperature\>
up_function					up\(\)
down_function				down\(\)
vertical_stop_function		verticalStop\(\)
right_function				right\(\)
left_function				left\(\)
forward_function			forward\(\)
backward_function			backward\(\)
horizontal_stop_function	horizontalStop\(\)
nozzle_on_function			nozzleOn\(\)
nozzle_off_function			nozzleOff\(\)
connect_function			connect\(\)
speed_function				speed\(\)
vertical_speed_function		verticalSpeed\(\)
horizontal_speed_function	horizontalSpeed\(\)
go_distance_function		goDistance
input						in\(\)
output						out
function_identifier			f_{identifier}
identifier					{letter}{alphanumeric}*
newline						\n
tab							[ \t]
invalid						[!-~]
other						.
%%
{int_const}					{sscanf(yytext, "%d", &yylval);	
							 return INTEGER_CONST;
							}
{double}					{sscanf(yytext, "%lf", &yylval.real);
							 return DOUBLE_CONST;
							}
{semicolon}					return SEMICOLON;
{lbrace}					return LBRACE;
{rbrace}					return RBRACE;
{lparenthesis}				return LPARENTHESIS;
{rparenthesis}				return RPARENTHESIS;
{if}						return IF;
{else}						return ELSE;
{elseif}					return ELSEIF;
{while}						return WHILE;
{for}						return FOR;
{start}						return START;
{end}						return END;
{assignment_op}				return ASSIGNMENT_OP;
{return}					return RETURN;
{int_type}					return INT_TYPE;
{void_type}					return VOID_TYPE;
{char_type}					return CHAR_TYPE;
{double_type}				return DOUBLE_TYPE;
{string_type}				return STRING_TYPE;
{boolean_type}				return BOOLEAN_TYPE;
{logical_or}				return LOGICAL_OR;
{logical_and}				return LOGICAL_AND;
{less_than}					return LESS_THAN;
{greater_than}				return GREATER_THAN;
{less_or_equal}				return LESS_OR_EQUAL;
{greater_or_equal}			return GREATER_OR_EQUAL;
{equality_op}				return EQUALITY_OP;
{not_equal_op}				return NOT_EQUAL_OP;
{addition_op}				return ADDITION_OP;
{subtraction_op}			return SUBTRACTION_OP;
{multiplication_op}			return MULTIPLICATION_OP;
{division_op}				return DIVISION_OP;
{modulo_op}					return MODULO_OP;
{comma}						return COMMA;
{comment_line}				;
{string}					{strcpy(yylval.str, yytext);
							 return STRING;
							} //???
{char}						{
							 return CHAR;
							}
{boolean_const}				return BOOLEAN_CONST;
{main}						return MAIN;
{get_heading}				return GET_HEADING;
{get_altitude}				return GET_ALTITUDE;
{get_temperature}			return GET_TEMPERATURE;
{up_function}				return UP_FUNCTION;
{down_function}				return DOWN_FUNCTION;
{vertical_stop_function}	return VERTICAL_STOP_FUNCTION;
{right_function}			return RIGHT_FUNCTION;
{left_function}				return LEFT_FUNCTION;
{forward_function}			return FORWARD_FUNCTION;
{backward_function}			return BACKWARD_FUNCTION;
{horizontal_stop_function}	return HORIZONTAL_STOP_FUNCTION;
{nozzle_on_function}		return NOZZLE_ON_FUNCTION;
{nozzle_off_function}		return NOZZLE_OFF_FUNCTION;
{connect_function}			return CONNECT_FUNCTION;
{speed_function}			return SPEED_FUNCTION;
{vertical_speed_function}	return VERTICAL_SPEED_FUNCTION;
{horizontal_speed_function}	return HORIZONTAL_SPEED_FUNCTION;
{go_distance_function}		return GO_DISTANCE_FUNCTION;
{input}						return INPUT;
{output}					return OUTPUT;
{function_identifier}		return FUNCTION_IDENTIFIER;		
{identifier}				{strcpy(yylval.str, yytext);
							 return IDENTIFIER;
							}
{newline}					{extern int lineno; 
							 lineno++;
							}
{tab}						;
{invalid}					return INVALID;
{other} 					;
%%
int yywrap() { return 1; }
