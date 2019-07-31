.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/JSONToken
.super java/lang/Object

.field public static final 'COLON' I = 17


.field public static final 'COMMA' I = 16


.field public static final 'EOF' I = 20


.field public static final 'ERROR' I = 1


.field public static final 'FALSE' I = 7


.field public static final 'FIELD_NAME' I = 19


.field public static final 'IDENTIFIER' I = 18


.field public static final 'LBRACE' I = 12


.field public static final 'LBRACKET' I = 14


.field public static final 'LITERAL_FLOAT' I = 3


.field public static final 'LITERAL_INT' I = 2


.field public static final 'LITERAL_ISO8601_DATE' I = 5


.field public static final 'LITERAL_STRING' I = 4


.field public static final 'LPAREN' I = 10


.field public static final 'NEW' I = 9


.field public static final 'NULL' I = 8


.field public static final 'RBRACE' I = 13


.field public static final 'RBRACKET' I = 15


.field public static final 'RPAREN' I = 11


.field public static final 'SET' I = 21


.field public static final 'TREE_SET' I = 22


.field public static final 'TRUE' I = 6


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static name(I)Ljava/lang/String;
iload 0
tableswitch 1
L0
L1
L2
L3
L4
L5
L6
L7
L8
L9
L10
L11
L12
L13
L14
L15
L16
L17
L18
L19
L20
L21
default : L22
L22:
ldc "Unkown"
areturn
L0:
ldc "error"
areturn
L1:
ldc "int"
areturn
L2:
ldc "float"
areturn
L3:
ldc "string"
areturn
L4:
ldc "iso8601"
areturn
L5:
ldc "true"
areturn
L6:
ldc "false"
areturn
L7:
ldc "null"
areturn
L8:
ldc "new"
areturn
L9:
ldc "("
areturn
L10:
ldc ")"
areturn
L11:
ldc "{"
areturn
L12:
ldc "}"
areturn
L13:
ldc "["
areturn
L14:
ldc "]"
areturn
L15:
ldc ","
areturn
L16:
ldc ":"
areturn
L17:
ldc "ident"
areturn
L18:
ldc "fieldName"
areturn
L19:
ldc "EOF"
areturn
L20:
ldc "Set"
areturn
L21:
ldc "TreeSet"
areturn
.limit locals 1
.limit stack 1
.end method
