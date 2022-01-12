%{
#include <stdio.h>
%}

%union{
	int integer;
	double real;
	char character;
	char str[30];
}

%token <integer> INTEGER_CONST
%token <real> DOUBLE_CONST
%token <character> CHAR
%token <str> IDENTIFIER

%token INTEGER_CONST DOUBLE_CONST SEMICOLON LBRACE RBRACE LPARENTHESIS RPARENTHESIS IF ELSE ELSEIF WHILE FOR START END ASSIGNMENT_OP RETURN INT_TYPE VOID_TYPE CHAR_TYPE DOUBLE_TYPE STRING_TYPE BOOLEAN_TYPE LOGICAL_OR LOGICAL_AND LESS_THAN GREATER_THAN LESS_OR_EQUAL GREATER_OR_EQUAL EQUALITY_OP NOT_EQUAL_OP ADDITION_OP SUBTRACTION_OP MULTIPLICATION_OP DIVISION_OP MODULO_OP COMMA STRING CHAR BOOLEAN_CONST MAIN GET_HEADING GET_ALTITUDE GET_TEMPERATURE UP_FUNCTION DOWN_FUNCTION VERTICAL_STOP_FUNCTION RIGHT_FUNCTION LEFT_FUNCTION FORWARD_FUNCTION BACKWARD_FUNCTION HORIZONTAL_STOP_FUNCTION NOZZLE_ON_FUNCTION NOZZLE_OFF_FUNCTION CONNECT_FUNCTION SPEED_FUNCTION VERTICAL_SPEED_FUNCTION HORIZONTAL_SPEED_FUNCTION GO_DISTANCE_FUNCTION INPUT OUTPUT FUNCTION_IDENTIFIER IDENTIFIER INVALID
%%
program: START stmts END

stmts: stmt stmts | stmt

stmt: conditional_stmt
	| other_stmt SEMICOLON
	| loops
	| block
	| main_function
	| function_definition
	| function_call SEMICOLON
	;

conditional_stmt: IF LPARENTHESIS expr RPARENTHESIS block
	| IF LPARENTHESIS expr RPARENTHESIS block ELSE block
	| IF LPARENTHESIS expr RPARENTHESIS block conditional_elseif_stmts
	| IF LPARENTHESIS expr RPARENTHESIS block conditional_elseif_stmts ELSE block
	;

conditional_elseif_stmts: ELSEIF LPARENTHESIS expr RPARENTHESIS block
	| ELSEIF LPARENTHESIS expr RPARENTHESIS block conditional_elseif_stmts
	;

other_stmt: assign_stmt | return_stmt | output | UP_FUNCTION | DOWN_FUNCTION | VERTICAL_STOP_FUNCTION | FORWARD_FUNCTION | BACKWARD_FUNCTION | HORIZONTAL_STOP_FUNCTION | RIGHT_FUNCTION | LEFT_FUNCTION | NOZZLE_ON_FUNCTION | NOZZLE_OFF_FUNCTION | CONNECT_FUNCTION | go_distance_function;

main_function: MAIN LPARENTHESIS RPARENTHESIS block;

assign_stmt: IDENTIFIER ASSIGNMENT_OP expr | declaration_stmt;

declaration_stmt: type IDENTIFIER | type IDENTIFIER ASSIGNMENT_OP expr;

expr: or_expr;

or_expr: or_expr LOGICAL_OR and_expr | and_expr;

and_expr: and_expr LOGICAL_AND relational_expr | relational_expr;

relational_expr: relational_expr relational_op equality_expr | equality_expr;

equality_expr: equality_expr equality_op additive_expr | additive_expr;

additive_expr: additive_expr additive_op multiplicative_expr | multiplicative_expr;

multiplicative_expr: multiplicative_expr multiplicative_op parenthesized_expr | parenthesized_expr;

parenthesized_expr: LPARENTHESIS expr RPARENTHESIS | term;

loops: WHILE LPARENTHESIS expr RPARENTHESIS block
	| FOR LPARENTHESIS assign_stmt SEMICOLON expr SEMICOLON assign_stmt RPARENTHESIS block
	| FOR LPARENTHESIS assign_stmt SEMICOLON expr SEMICOLON RPARENTHESIS block
	| FOR LPARENTHESIS assign_stmt SEMICOLON SEMICOLON assign_stmt RPARENTHESIS block
	| FOR LPARENTHESIS assign_stmt SEMICOLON SEMICOLON RPARENTHESIS block
	| FOR LPARENTHESIS SEMICOLON expr SEMICOLON assign_stmt RPARENTHESIS block
	| FOR LPARENTHESIS SEMICOLON expr SEMICOLON RPARENTHESIS block
	| FOR LPARENTHESIS SEMICOLON SEMICOLON assign_stmt RPARENTHESIS block
	| FOR LPARENTHESIS SEMICOLON SEMICOLON RPARENTHESIS block
	;

block: LBRACE stmts RBRACE | LBRACE RBRACE;

function_definition: type FUNCTION_IDENTIFIER LPARENTHESIS parameters RPARENTHESIS block | type FUNCTION_IDENTIFIER LPARENTHESIS RPARENTHESIS block;

parameters: parameter | parameters COMMA parameter;

parameter: type IDENTIFIER;

function_call: FUNCTION_IDENTIFIER LPARENTHESIS arguments RPARENTHESIS | FUNCTION_IDENTIFIER LPARENTHESIS RPARENTHESIS;

arguments: expr | arguments COMMA expr;

return_stmt: RETURN expr | RETURN;

term: IDENTIFIER | function_call | INTEGER_CONST | CHAR | DOUBLE_CONST | BOOLEAN_CONST | STRING | INPUT | GET_HEADING | GET_ALTITUDE | GET_TEMPERATURE | VERTICAL_SPEED_FUNCTION | HORIZONTAL_SPEED_FUNCTION | SPEED_FUNCTION;

relational_op: LESS_THAN | LESS_OR_EQUAL | GREATER_THAN | GREATER_OR_EQUAL;

additive_op: ADDITION_OP | SUBTRACTION_OP;

multiplicative_op: MULTIPLICATION_OP | DIVISION_OP | MODULO_OP;

equality_op: EQUALITY_OP | NOT_EQUAL_OP;

type: VOID_TYPE | INT_TYPE | CHAR_TYPE | DOUBLE_TYPE | STRING_TYPE | BOOLEAN_TYPE;

go_distance_function: GO_DISTANCE_FUNCTION LPARENTHESIS expr RPARENTHESIS;

output: OUTPUT LPARENTHESIS expr RPARENTHESIS;
%%
#include "lex.yy.c"
int lineno = 1;
int error = 0;

main() {
  yyparse();
  if (error == 0) {
	printf("Input program is valid.\n");
  }
  return 0;
}

yyerror( char *s ) {
	error = -1;
	fprintf( stderr, "%s on line %d!\n", s, lineno);
}