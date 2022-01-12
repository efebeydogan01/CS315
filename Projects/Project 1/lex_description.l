%option main
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
while						while
for							for
assignment_op				\=
return						return
int_type					int
void_type					void
char_type					char
double_type					double
string_type					string
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
identifier					{letter}{alphanumeric}*
other						[.^\t]
%%
{int_const}					printf("INTEGER_CONST ");
{double}					printf("DOUBLE_CONST ");
{semicolon}					printf("SEMICOLON ");
{lbrace}					printf("LBRACE ");
{rbrace}					printf("RBRACE ");
{lparenthesis}				printf("LPARENTHESIS ");
{rparenthesis}				printf("RPARENTHESIS ");
{if}						printf("IF ");
{else}						printf("ELSE ");
{while}						printf("WHILE ");
{for}						printf("FOR ");
{assignment_op}				printf("ASSIGNMENT_OP ");
{return}					printf("RETURN ");
{int_type}					printf("INT_TYPE ");
{void_type}					printf("VOID_TYPE ");
{char_type}					printf("CHAR_TYPE ");
{double_type}				printf("DOUBLE_TYPE ");
{string_type}				printf("STRING_TYPE ");
{logical_or}				printf("LOGICAL_OR ");
{logical_and}				printf("LOGICAL_AND ");
{less_than}					printf("LESS_THAN ");
{greater_than}				printf("GREATER_THAN ");
{less_or_equal}				printf("LESS_OR_EQUAL ");
{greater_or_equal}			printf("GREATER_OR_EQUAL ");
{equality_op}				printf("EQUALITY_OP ");
{not_equal_op}				printf("NOT_EQUAL_OP ");
{addition_op}				printf("ADDITION_OP ");
{subtraction_op}			printf("SUBTRACTION_OP ");
{multiplication_op}			printf("MULTIPLICATION_OP ");
{division_op}				printf("DIVISION_OP ");
{modulo_op}					printf("MODULO_OP ");
{comma}						printf("COMMA ");
{comment_line}				printf("COMMENT_LINE ");
{string}					printf("STRING ");
{char}						printf("CHAR ");
{get_heading}				printf("GET_HEADING ");
{get_altitude}				printf("GET_ALTITUDE ");
{get_temperature}			printf("GET_TEMPERATURE ");
{up_function}				printf("UP_FUNCTION ");
{down_function}				printf("DOWN_FUNCTION ");
{vertical_stop_function}	printf("VERTICAL_STOP_FUNCTION ");
{right_function}			printf("RIGHT_FUNCTION ");
{left_function}				printf("LEFT_FUNCTION ");
{forward_function}			printf("FORWARD_FUNCTION ");
{backward_function}			printf("BACKWARD_FUNCTION ");
{horizontal_stop_function}	printf("HORIZONTAL_STOP_FUNCTION ");
{nozzle_on_function}		printf("NOZZLE_ON_FUNCTION ");
{nozzle_off_function}		printf("NOZZLE_OFF_FUNCTION ");
{connect_function}			printf("CONNECT_FUNCTION ");
{speed_function}			printf("SPEED_FUNCTION ");
{vertical_speed_function}	printf("VERTICAL_SPEED_FUNCTION ");
{horizontal_speed_function}	printf("HORIZONTAL_SPEED_FUNCTION ");
{go_distance_function}		printf("GO_DISTANCE_FUNCTION ");
{input}						printf("INPUT ");
{output}					printf("OUTPUT ");
{identifier}				printf("IDENTIFIER ");
{other} 					;
