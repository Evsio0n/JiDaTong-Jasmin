.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/MapDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/MapDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/MapDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L2 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 5
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L24
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L24
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect {, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L24:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 2
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 6
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 7
aload 5
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 4
L0:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L3
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L1:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L3:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L18
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isRef()Z 0
ifeq L18
L4:
aconst_null
astore 1
L5:
aload 5
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L15
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 2
ldc ".."
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 4
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L6:
aload 5
bipush 13
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpeq L16
new com/alibaba/fastjson/JSONException
dup
ldc "illegal ref"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
athrow
L7:
ldc "$"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
L8:
aload 4
astore 1
L9:
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L11
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 1
L10:
goto L9
L11:
aload 1
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L12:
goto L6
L13:
aload 0
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 4
aload 2
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L14:
goto L6
L15:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal ref, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L16:
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L17:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L18:
aload 1
invokeinterface java/util/Map/size()I 0
ifne L21
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L21
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L21
aload 5
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L20
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L19:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L20:
aload 5
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L21:
aload 6
aload 0
aload 2
aconst_null
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 8
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 17
if_icmpeq L22
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect :, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L22:
aload 5
aload 7
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
aload 8
aload 7
aload 0
aload 3
aload 8
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L0
aload 5
aload 6
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L23:
goto L0
.limit locals 9
.limit stack 6
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L2 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
.catch all from L14 to L15 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L23 to L24 using L2
.catch all from L25 to L26 using L2
.catch all from L27 to L28 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L34
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, expect {, actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L34:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 9
L0:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 5
L1:
iload 5
istore 6
L3:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L35
L4:
iload 5
istore 6
iload 5
bipush 44
if_icmpne L35
L5:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 5
L6:
goto L4
L35:
iload 6
bipush 34
if_icmpne L36
L7:
aload 10
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 34
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
astore 7
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
L8:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
bipush 58
if_icmpeq L18
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
athrow
L36:
iload 6
bipush 125
if_icmpne L37
L9:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L10:
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L37:
iload 6
bipush 39
if_icmpne L14
L11:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L12
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L12:
aload 10
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 39
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
astore 7
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
L13:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
bipush 58
if_icmpeq L18
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L14:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L15
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L15:
aload 10
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 7
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
istore 4
L16:
iload 4
bipush 58
if_icmpeq L18
L17:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "expect ':' at "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", actual "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L18:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/next()C 0
pop
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/skipWhitespace()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/getCurrent()C 0
pop
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/resetStringPosition()V 0
aload 7
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
if_acmpne L25
aload 10
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
bipush 34
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String; 2
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 7
aload 7
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpne L20
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L0
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L19:
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L20:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 7
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 1
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L21:
aload 9
ifnull L23
L22:
aload 3
instanceof java/lang/Integer
ifne L23
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/popContext()V
L23:
aload 1
aload 0
aload 7
aload 3
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
checkcast java/util/Map
astore 1
L24:
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L25:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L30
L26:
aconst_null
astore 8
L27:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L28:
aload 1
aload 7
aload 8
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
aload 1
aload 7
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V
aload 0
aload 9
aload 8
aload 7
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
istore 5
L29:
iload 5
bipush 20
if_icmpeq L38
iload 5
bipush 15
if_icmpne L39
L38:
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
L30:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 8
L31:
goto L28
L39:
iload 5
bipush 13
if_icmpne L0
L32:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L33:
aload 0
aload 9
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
areturn
.limit locals 11
.limit stack 4
.end method

.method protected createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
.signature "(Ljava/lang/reflect/Type;)Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ldc java/util/Properties
if_acmpne L3
new java/util/Properties
dup
invokespecial java/util/Properties/<init>()V
areturn
L3:
aload 1
ldc java/util/Hashtable
if_acmpne L4
new java/util/Hashtable
dup
invokespecial java/util/Hashtable/<init>()V
areturn
L4:
aload 1
ldc java/util/IdentityHashMap
if_acmpne L5
new java/util/IdentityHashMap
dup
invokespecial java/util/IdentityHashMap/<init>()V
areturn
L5:
aload 1
ldc java/util/SortedMap
if_acmpeq L6
aload 1
ldc java/util/TreeMap
if_acmpne L7
L6:
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
areturn
L7:
aload 1
ldc java/util/concurrent/ConcurrentMap
if_acmpeq L8
aload 1
ldc java/util/concurrent/ConcurrentHashMap
if_acmpne L9
L8:
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
areturn
L9:
aload 1
ldc java/util/Map
if_acmpeq L10
aload 1
ldc java/util/HashMap
if_acmpne L11
L10:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
areturn
L11:
aload 1
ldc java/util/LinkedHashMap
if_acmpne L12
new java/util/LinkedHashMap
dup
invokespecial java/util/LinkedHashMap/<init>()V
areturn
L12:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L13
aload 0
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokevirtual com/alibaba/fastjson/parser/deserializer/MapDeserializer/createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
areturn
L13:
aload 1
checkcast java/lang/Class
astore 2
aload 2
invokevirtual java/lang/Class/isInterface()Z
ifeq L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsupport type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Map
astore 2
L1:
aload 2
areturn
L2:
astore 2
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsupport type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
.catch all from L0 to L1 using L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 4
aload 4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L3
aload 4
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L3:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/MapDeserializer/createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
astore 5
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 4
L0:
aload 1
aload 4
aload 5
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
aload 0
aload 1
aload 2
aload 3
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/MapDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
astore 2
L1:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
areturn
L2:
astore 2
aload 1
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
athrow
.limit locals 6
.limit stack 5
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 5
aload 5
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 2
aload 5
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_1
aaload
astore 5
ldc java/lang/String
aload 2
if_acmpne L1
aload 1
aload 4
aload 5
aload 3
invokestatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
areturn
L1:
aload 1
aload 4
aload 2
aload 5
aload 3
invokestatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
areturn
L0:
aload 1
aload 4
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 6
.limit stack 5
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method
