.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/DefaultJSONParser
.super com/alibaba/fastjson/parser/AbstractJSONParser
.implements java/io/Closeable
.inner class public static ResolveTask inner com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask outer com/alibaba/fastjson/parser/DefaultJSONParser

.field public static final 'NONE' I = 0


.field public static final 'NeedToResolve' I = 1


.field public static final 'TypeNameRedirect' I = 2


.field private static final 'primitiveClasses' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/Class<*>;>;"

.field protected 'config' Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected 'context' Lcom/alibaba/fastjson/parser/ParseContext;

.field private 'contextArray' [Lcom/alibaba/fastjson/parser/ParseContext;

.field private 'contextArrayIndex' I

.field private 'dateFormat' Ljava/text/DateFormat;

.field private 'dateFormatPattern' Ljava/lang/String;

.field private 'extraProcessors' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"

.field private 'extraTypeProviders' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"

.field protected final 'input' Ljava/lang/Object;

.field protected final 'lexer' Lcom/alibaba/fastjson/parser/JSONLexer;

.field private 'resolveStatus' I

.field private 'resolveTaskList' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;>;"

.field protected final 'symbolTable' Lcom/alibaba/fastjson/parser/SymbolTable;

.method static <clinit>()V
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Short/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Long/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Float/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
getstatic java/lang/Double/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Boolean
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Byte
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Short
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Integer
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Long
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Float
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/Double
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/math/BigInteger
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/math/BigDecimal
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alibaba/fastjson/parser/DefaultJSONParser/primitiveClasses Ljava/util/Set;
ldc java/lang/String
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
aload 0
aconst_null
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
aload 0
invokespecial com/alibaba/fastjson/parser/AbstractJSONParser/<init>()V
aload 0
getstatic com/alibaba/fastjson/JSON/DEFFAULT_DATE_FORMAT Ljava/lang/String;
putfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormatPattern Ljava/lang/String;
aload 0
bipush 8
anewarray com/alibaba/fastjson/parser/ParseContext
putfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveStatus I
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/DefaultJSONParser/extraTypeProviders Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/DefaultJSONParser/extraProcessors Ljava/util/List;
aload 0
aload 2
putfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/input Ljava/lang/Object;
aload 0
aload 3
putfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 0
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
putfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
aload 2
bipush 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
aload 0
aload 1
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;I)V
aload 2
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 3
.limit stack 6
.end method

.method public <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
aload 0
aload 1
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 1
iload 3
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;I)V
aload 2
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 4
.limit stack 6
.end method

.method public <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
aload 0
aload 1
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 1
iload 2
iload 4
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>([CII)V
aload 3
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 5
.limit stack 7
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
iload 2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
arraylength
if_icmplt L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
arraylength
iconst_3
imul
iconst_2
idiv
anewarray com/alibaba/fastjson/parser/ParseContext
astore 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
iconst_0
aload 3
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 3
putfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
iload 2
aload 1
aastore
return
.limit locals 4
.limit stack 5
.end method

.method public final accept(I)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iload 1
if_icmpne L0
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
return
L0:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public final accept(II)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iload 1
if_icmpne L0
aload 3
iload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
L0:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public acceptType(Ljava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon()V 0
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "type not match error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L2:
return
L1:
new com/alibaba/fastjson/JSONException
dup
ldc "type not match error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
iconst_2
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 4
.end method

.method public checkListResolve(Ljava/util/Collection;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveStatus I
iconst_1
if_icmpne L0
aload 1
instanceof java/util/List
ifeq L1
aload 1
invokeinterface java/util/Collection/size()I 0
istore 2
aload 1
checkcast java/util/List
astore 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
astore 3
aload 3
new com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer
dup
aload 0
aload 1
iload 2
iconst_1
isub
invokespecial com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
aload 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L0:
return
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
astore 3
aload 3
new com/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer
dup
aload 0
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
aload 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
return
.limit locals 4
.limit stack 7
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveStatus I
iconst_1
if_icmpne L0
new com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer
dup
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer/<init>(Ljava/util/Map;Ljava/lang/String;)V
astore 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
astore 2
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
aload 2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public close()V
.catch all from L0 to L1 using L1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 1
L0:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AutoCloseSource Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L2
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 20
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not close json text, token : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 2
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/close()V 0
aload 2
athrow
L2:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/close()V 0
return
.limit locals 3
.limit stack 4
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
aload 1
iload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/config(Lcom/alibaba/fastjson/parser/Feature;Z)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDateFomartPattern()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormatPattern Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDateFormat()Ljava/text/DateFormat;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormat Ljava/text/DateFormat;
ifnonnull L0
aload 0
new java/text/SimpleDateFormat
dup
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormatPattern Ljava/lang/String;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormat Ljava/text/DateFormat;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormat Ljava/text/DateFormat;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getExtraProcessors()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraProcessors Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
iconst_2
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/extraProcessors Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraProcessors Ljava/util/List;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getExtraProcessorsDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraProcessors Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtraTypeProviders()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraTypeProviders Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
iconst_2
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/extraTypeProviders Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraTypeProviders Ljava/util/List;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getExtraTypeProvidersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/extraTypeProviders Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getInput()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/input Ljava/lang/Object;
instanceof [C
ifeq L0
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/input Ljava/lang/Object;
checkcast [C
checkcast [C
invokespecial java/lang/String/<init>([C)V
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/input Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
areturn
.limit locals 1
.limit stack 3
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
if_icmpge L1
aload 1
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
iload 2
aaload
invokevirtual com/alibaba/fastjson/parser/ParseContext/getPath()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
iload 2
aaload
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public getResolveStatus()I
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveStatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getResolveTaskList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
iconst_2
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getResolveTaskListDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;>;"
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveTaskList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public parse()Ljava/lang/Object;
aload 0
aconst_null
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 2
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
.catch all from L0 to L1 using L2
aconst_null
astore 4
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 5
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
tableswitch 2
L3
L4
L5
L6
L7
L8
L9
L10
L6
L6
L11
L6
L12
L6
L6
L6
L6
L6
L13
L14
L15
default : L6
L6:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, pos "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getBufferPosition()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L14:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 4
aload 0
aload 4
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
aload 4
astore 1
L16:
aload 1
areturn
L15:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
astore 4
aload 0
aload 4
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
aload 4
areturn
L12:
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 4
aload 0
aload 4
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
aload 4
areturn
L11:
aload 0
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
areturn
L3:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
astore 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 1
areturn
L4:
aload 5
aload 0
getstatic com/alibaba/fastjson/parser/Feature/UseBigDecimal Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue(Z)Ljava/lang/Number; 1
astore 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 1
areturn
L5:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 4
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
getstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L17
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 4
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 1
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L18
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 4
L1:
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 4
areturn
L18:
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
L17:
aload 4
areturn
L2:
astore 4
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 4
athrow
L9:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L7:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
areturn
L8:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
areturn
L10:
aload 5
bipush 18
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 18
if_icmpeq L19
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L19:
aload 5
bipush 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
bipush 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
invokevirtual java/lang/Number/longValue()J
lstore 2
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 0
bipush 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
new java/util/Date
dup
lload 2
invokespecial java/util/Date/<init>(J)V
areturn
L13:
aload 4
astore 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isBlankInput()Z 0
ifne L16
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unterminated json string, pos "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getBufferPosition()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
.signature "(Ljava/lang/Class<*>;Ljava/util/Collection;)V"
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
return
.limit locals 3
.limit stack 3
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 21
if_icmpeq L22
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 22
if_icmpne L23
L22:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L23:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L24
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "exepct '[', but "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L24:
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aload 1
if_acmpne L25
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L26:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 7
aload 0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
iconst_0
istore 4
L0:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L4
L1:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L4
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L3:
goto L1
L2:
astore 1
aload 0
aload 7
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
athrow
L25:
ldc java/lang/String
aload 1
if_acmpne L27
getstatic com/alibaba/fastjson/serializer/StringCodec/instance Lcom/alibaba/fastjson/serializer/StringCodec;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L26
L27:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L26
L4:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
istore 5
L5:
iload 5
bipush 15
if_icmpne L6
aload 0
aload 7
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
L6:
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aload 1
if_acmpne L28
aload 2
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
aload 0
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/serializer/IntegerCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
L7:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L29
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L8:
goto L29
L28:
ldc java/lang/String
aload 1
if_acmpne L16
L9:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L10:
aload 2
aload 3
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
L11:
goto L7
L12:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 3
L13:
aload 3
ifnonnull L14
aconst_null
astore 3
goto L10
L14:
aload 3
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 3
L15:
goto L10
L16:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L20
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L17:
aconst_null
astore 3
L18:
aload 2
aload 3
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/checkListResolve(Ljava/util/Collection;)V
L19:
goto L7
L20:
aload 6
aload 0
aload 1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 3
L21:
goto L18
L29:
iload 4
iconst_1
iadd
istore 4
goto L0
.limit locals 8
.limit stack 5
.end method

.method public final parseArray(Ljava/util/Collection;)V
aload 0
aload 1
aconst_null
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 5
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 21
if_icmpeq L32
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 22
if_icmpne L33
L32:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L33:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L34
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect [, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", pos "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L34:
aload 5
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 4
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
iconst_0
istore 3
L0:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L4
L1:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L4
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L3:
goto L1
L2:
astore 1
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
athrow
L4:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
tableswitch 2
L8
L10
L15
L5
L18
L20
L35
L5
L5
L5
L22
L5
L24
L28
L5
L5
L5
L5
L30
default : L31
L5:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 2
L6:
aload 1
aload 2
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/checkListResolve(Ljava/util/Collection;)V
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L36
aload 5
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L7:
goto L36
L8:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
astore 2
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L9:
goto L6
L10:
aload 5
getstatic com/alibaba/fastjson/parser/Feature/UseBigDecimal Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L13
aload 5
iconst_1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue(Z)Ljava/lang/Number; 1
astore 2
L11:
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L12:
goto L6
L13:
aload 5
iconst_0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue(Z)Ljava/lang/Number; 1
astore 2
L14:
goto L11
L15:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 2
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
getstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L37
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 2
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L38
aload 6
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 2
L16:
aload 6
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
L17:
goto L6
L18:
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
astore 2
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L19:
goto L6
L20:
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
astore 2
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L21:
goto L6
L22:
aload 0
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L23:
goto L6
L24:
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 2
aload 0
aload 2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
L25:
goto L6
L35:
aconst_null
astore 2
L26:
aload 5
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L27:
goto L6
L28:
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L29:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
return
L30:
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed jsonArray"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L31:
goto L5
L36:
iload 3
iconst_1
iadd
istore 3
goto L0
L38:
goto L16
L37:
goto L6
.limit locals 7
.limit stack 4
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
arraylength
anewarray java/lang/Object
astore 8
aload 1
arraylength
ifne L2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 15
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iconst_0
anewarray java/lang/Object
areturn
L2:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iconst_0
istore 2
L4:
iload 2
aload 1
arraylength
if_icmpge L5
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L6
aconst_null
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L7:
aload 8
iload 2
aload 6
aastore
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpne L8
L5:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpeq L9
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 1
iload 2
aaload
astore 9
aload 9
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L10
aload 9
ldc java/lang/Integer
if_acmpne L11
L10:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L7
L12:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
aload 9
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
astore 6
goto L7
L11:
aload 9
ldc java/lang/String
if_acmpne L13
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L14
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L7
L14:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
aload 9
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
astore 6
goto L7
L13:
iconst_0
istore 5
aconst_null
astore 7
aload 7
astore 6
iload 5
istore 4
iload 2
aload 1
arraylength
iconst_1
isub
if_icmpne L15
aload 7
astore 6
iload 5
istore 4
aload 9
instanceof java/lang/Class
ifeq L15
aload 9
checkcast java/lang/Class
astore 6
aload 6
invokevirtual java/lang/Class/isArray()Z
istore 4
aload 6
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 6
L15:
iload 4
ifeq L16
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L16
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 6
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 6
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
istore 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpeq L17
L18:
aload 7
aload 6
aload 0
aload 9
aconst_null
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L19
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L18
L19:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpne L20
L17:
aload 7
aload 9
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
astore 6
goto L7
L20:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error :"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L16:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 9
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 0
aload 9
aconst_null
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 6
goto L7
L8:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L21
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error :"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L21:
iload 2
aload 1
arraylength
iconst_1
isub
if_icmpne L22
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 15
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L23:
iload 2
iconst_1
iadd
istore 2
goto L4
L22:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L23
L9:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 8
areturn
.limit locals 10
.limit stack 5
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L0:
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 2
aload 2
arraylength
iconst_1
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not support type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
iconst_0
aaload
astore 2
aload 2
instanceof java/lang/Class
ifeq L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
aload 2
checkcast java/lang/Class
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
aload 1
areturn
L2:
aload 2
instanceof java/lang/reflect/WildcardType
ifeq L3
aload 2
checkcast java/lang/reflect/WildcardType
astore 3
aload 3
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 2
ldc java/lang/Object
aload 2
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L4
aload 3
invokeinterface java/lang/reflect/WildcardType/getLowerBounds()[Ljava/lang/reflect/Type; 0
arraylength
ifne L5
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
areturn
L5:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not support type : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
aload 2
checkcast java/lang/Class
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
aload 1
areturn
L3:
aload 2
instanceof java/lang/reflect/TypeVariable
ifeq L6
aload 2
checkcast java/lang/reflect/TypeVariable
astore 3
aload 3
invokeinterface java/lang/reflect/TypeVariable/getBounds()[Ljava/lang/reflect/Type; 0
astore 4
aload 4
arraylength
iconst_1
if_icmpeq L7
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not support : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
aload 4
iconst_0
aaload
astore 3
aload 3
instanceof java/lang/Class
ifeq L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
aload 3
checkcast java/lang/Class
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
aload 1
areturn
L6:
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L8
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
aload 2
areturn
L8:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "TODO : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public parseKey()Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 18
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 1
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
areturn
L0:
aload 0
aconst_null
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 1
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;)Ljava/lang/Object;
pop
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;)TT;"
.catch com/alibaba/fastjson/JSONException from L0 to L1 using L2
.catch java/lang/Throwable from L0 to L1 using L3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L4
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L4:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 2
L0:
aload 2
aload 0
aload 1
aconst_null
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
athrow
L3:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/lang/Throwable/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
aload 0
aload 1
aconst_null
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L2 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L27 to L28 using L2
.catch all from L29 to L30 using L2
.catch all from L31 to L32 using L2
.catch all from L32 to L33 using L2
.catch all from L34 to L35 using L2
.catch all from L35 to L36 using L2
.catch java/lang/Exception from L37 to L38 using L39
.catch all from L37 to L38 using L2
.catch java/lang/Exception from L40 to L41 using L39
.catch all from L40 to L41 using L2
.catch java/lang/Exception from L42 to L43 using L39
.catch all from L42 to L43 using L2
.catch java/lang/Exception from L44 to L45 using L39
.catch all from L44 to L45 using L2
.catch all from L46 to L47 using L2
.catch all from L47 to L48 using L2
.catch all from L48 to L49 using L2
.catch all from L50 to L51 using L2
.catch all from L52 to L53 using L2
.catch all from L53 to L54 using L2
.catch all from L54 to L55 using L2
.catch all from L56 to L57 using L2
.catch all from L58 to L59 using L2
.catch all from L60 to L61 using L2
.catch all from L62 to L63 using L2
.catch all from L64 to L65 using L2
.catch all from L66 to L67 using L2
.catch all from L68 to L69 using L2
.catch all from L70 to L71 using L2
.catch all from L72 to L73 using L2
.catch all from L74 to L75 using L2
.catch all from L76 to L77 using L2
.catch all from L78 to L79 using L2
.catch all from L80 to L81 using L2
.catch all from L82 to L83 using L2
.catch all from L83 to L84 using L2
.catch all from L84 to L85 using L2
.catch all from L86 to L87 using L2
.catch all from L87 to L88 using L2
.catch all from L89 to L90 using L2
.catch all from L91 to L92 using L2
.catch all from L93 to L94 using L2
.catch all from L94 to L95 using L2
.catch all from L96 to L97 using L2
.catch all from L98 to L99 using L2
.catch all from L100 to L101 using L2
.catch all from L102 to L103 using L2
.catch all from L103 to L104 using L2
.catch all from L105 to L106 using L2
.catch all from L107 to L108 using L2
.catch all from L108 to L109 using L2
.catch all from L110 to L111 using L2
.catch all from L111 to L112 using L2
.catch all from L113 to L114 using L2
.catch all from L115 to L116 using L2
.catch all from L117 to L118 using L2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
astore 12
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L119
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L119
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect {, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L119:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 10
iconst_0
istore 5
L0:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 4
L1:
iload 4
istore 6
L3:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L120
L4:
iload 4
istore 6
iload 4
bipush 44
if_icmpne L120
L5:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 4
L6:
goto L4
L120:
iconst_0
istore 4
iload 6
bipush 34
if_icmpne L121
L7:
aload 12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 34
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
astore 8
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
L8:
aload 8
astore 7
L9:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
bipush 58
if_icmpeq L122
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", name "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
athrow
L121:
iload 6
bipush 125
if_icmpne L123
L10:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L11:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L123:
iload 6
bipush 39
if_icmpne L15
L12:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L13
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L13:
aload 12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 39
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
astore 7
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
L14:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
bipush 58
if_icmpeq L122
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L15:
iload 6
bipush 26
if_icmpne L17
L16:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L17:
iload 6
bipush 44
if_icmpne L118
L18:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L19:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanNumber()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L22
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
astore 8
L20:
aload 8
astore 7
L21:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
bipush 58
if_icmpeq L122
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", name "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L22:
aload 12
iconst_1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue(Z)Ljava/lang/Number; 1
astore 8
L23:
goto L20
L24:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 7
L25:
iconst_1
istore 4
L122:
iload 4
ifne L27
L26:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
L27:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 6
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 7
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
if_acmpne L124
aload 12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 34
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
astore 8
aload 8
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 7
L28:
aload 7
ifnonnull L35
L29:
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 8
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L30:
goto L0
L31:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L32
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L32:
aload 12
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 7
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 3
L33:
iload 3
bipush 58
if_icmpeq L122
L34:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L35:
aload 12
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L47
aload 12
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L36:
aconst_null
astore 1
L37:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 7
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 2
aload 2
instanceof com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
ifeq L42
aload 2
checkcast com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
aload 0
aload 7
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
L38:
aload 1
astore 2
aload 1
ifnonnull L41
aload 7
ldc java/lang/Cloneable
if_acmpne L44
L40:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
L41:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
areturn
L42:
aload 2
instanceof com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
ifeq L38
aload 2
checkcast com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
aload 0
aload 7
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
L43:
goto L38
L44:
aload 7
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 2
L45:
goto L41
L39:
astore 1
L46:
new com/alibaba/fastjson/JSONException
dup
ldc "create instance error"
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L47:
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L48
aload 2
instanceof java/lang/Integer
ifne L48
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/popContext()V
L48:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 7
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 0
aload 7
aload 2
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 1
L49:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L124:
aload 7
ldc "$ref"
if_acmpne L71
L50:
aload 12
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L70
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 7
aload 12
bipush 13
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L51:
aconst_null
astore 2
aconst_null
astore 1
L52:
ldc "@"
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L54
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L125
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L53:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpeq L68
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L54:
ldc ".."
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L58
aload 10
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 2
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
ifnull L56
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L55:
goto L126
L56:
aload 0
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 2
aload 7
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L57:
goto L126
L58:
ldc "$"
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L66
L59:
aload 10
astore 1
L60:
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L62
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 1
L61:
goto L60
L62:
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
ifnull L64
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L63:
goto L127
L64:
aload 0
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 1
aload 7
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L65:
aload 2
astore 1
goto L127
L66:
aload 0
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 10
aload 7
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L67:
goto L125
L68:
aload 12
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L69:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L70:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal ref, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L71:
iload 5
istore 4
iload 5
ifne L128
L72:
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
L73:
iconst_1
istore 5
iload 5
istore 4
L74:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L128
L75:
iload 5
istore 4
L76:
aload 2
instanceof java/lang/Integer
ifne L128
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/popContext()V
L77:
iload 5
istore 4
L128:
aload 7
astore 8
L78:
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc com/alibaba/fastjson/JSONObject
if_acmpne L129
L79:
aload 7
ifnonnull L91
ldc "null"
astore 8
L129:
iload 6
bipush 34
if_icmpne L130
L80:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanString()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 11
L81:
aload 11
astore 7
aload 7
astore 9
L82:
aload 12
getstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L86
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 11
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 9
L83:
aload 9
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L84
aload 9
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 7
L84:
aload 9
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
L85:
aload 7
astore 9
L86:
aload 1
aload 8
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L87:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 5
L88:
iload 5
bipush 44
if_icmpne L114
L89:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
L90:
iload 4
istore 5
goto L0
L91:
aload 7
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 8
L92:
goto L129
L93:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanNumber()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L96
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
astore 7
L94:
aload 1
aload 8
aload 7
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L95:
goto L87
L96:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/numberValue()Ljava/lang/Number; 0
astore 7
L97:
goto L94
L131:
iload 6
bipush 91
if_icmpne L101
L98:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 7
aload 0
aload 7
aload 8
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
aload 1
aload 8
aload 7
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L132
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L99:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L132:
iload 4
istore 5
L100:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L101:
iload 6
bipush 123
if_icmpne L108
L102:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 0
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
astore 7
aload 0
aload 1
aload 8
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc com/alibaba/fastjson/JSONObject
if_acmpne L105
aload 1
aload 8
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 7
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L103:
aload 0
aload 10
aload 7
aload 8
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L133
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
L104:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L105:
aload 1
aload 8
aload 7
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L106:
goto L103
L133:
iload 4
istore 5
L107:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L108:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 9
L109:
aload 8
astore 7
L110:
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc com/alibaba/fastjson/JSONObject
if_acmpne L111
aload 8
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 7
L111:
aload 1
aload 7
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L134
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L112:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L134:
iload 4
istore 5
L113:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, position at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", name "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L114:
iload 5
bipush 125
if_icmpne L117
L115:
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
L116:
aload 0
aload 10
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L117:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, position at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", name "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L118:
iload 6
bipush 48
if_icmplt L135
iload 6
bipush 57
if_icmple L19
L135:
iload 6
bipush 45
if_icmpne L136
goto L19
L136:
iload 6
bipush 123
if_icmpeq L24
iload 6
bipush 91
if_icmpne L31
goto L24
L126:
goto L53
L127:
goto L53
L125:
aconst_null
astore 1
goto L53
L130:
iload 6
bipush 48
if_icmplt L137
iload 6
bipush 57
if_icmple L93
L137:
iload 6
bipush 45
if_icmpne L131
goto L93
.limit locals 13
.limit stack 5
.end method

.method public parseObject(Ljava/lang/Object;)V
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 3
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;
astore 4
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect {, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L2
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L2
L0:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 2
aload 2
ifnonnull L2
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
L2:
aload 4
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 5
aload 5
ifnonnull L3
aload 0
getstatic com/alibaba/fastjson/parser/Feature/IgnoreNotMatch Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L4
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setter not found, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", property "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon()V 0
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
pop
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
return
L3:
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFieldClass()Ljava/lang/Class;
astore 6
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
astore 2
aload 6
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L5
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
aload 0
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/serializer/IntegerCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L6:
aload 5
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
L5:
aload 6
ldc java/lang/String
if_acmpne L7
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 0
invokestatic com/alibaba/fastjson/serializer/StringCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
astore 2
goto L6
L7:
aload 6
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L8
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
getstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
aload 0
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/serializer/LongCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
astore 2
goto L6
L8:
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
aload 6
aload 2
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/lexer Lcom/alibaba/fastjson/parser/JSONLexer;
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 6
aload 0
aload 2
aconst_null
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 2
goto L6
.limit locals 7
.limit stack 4
.end method

.method public popContext()V
aload 0
getstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L0
return
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
putfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArray [Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
iconst_1
isub
aconst_null
aastore
aload 0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
iconst_1
isub
putfield com/alibaba/fastjson/parser/DefaultJSONParser/contextArrayIndex I
return
.limit locals 1
.limit stack 3
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/config Lcom/alibaba/fastjson/parser/ParserConfig;
return
.limit locals 2
.limit stack 2
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L0
aconst_null
areturn
L0:
aload 0
new com/alibaba/fastjson/parser/ParseContext
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/ParseContext/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V
putfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
areturn
.limit locals 4
.limit stack 6
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L0
aconst_null
areturn
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
areturn
.limit locals 3
.limit stack 4
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
getstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L0
return
L0:
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/context Lcom/alibaba/fastjson/parser/ParseContext;
return
.limit locals 2
.limit stack 2
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormat Ljava/text/DateFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public setDateFormat(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormatPattern Ljava/lang/String;
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/DefaultJSONParser/dateFormat Ljava/text/DateFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public setResolveStatus(I)V
aload 0
iload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser/resolveStatus I
return
.limit locals 2
.limit stack 2
.end method
