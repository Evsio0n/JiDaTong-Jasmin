.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/ThrowableDeserializer
.super com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;)V"
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
return
.limit locals 3
.limit stack 3
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
.signature "(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class<*>;)Ljava/lang/Throwable;"
.throws java/lang/Exception
aconst_null
astore 7
aconst_null
astore 6
aconst_null
astore 8
aload 3
invokevirtual java/lang/Class/getConstructors()[Ljava/lang/reflect/Constructor;
astore 12
aload 12
arraylength
istore 5
iconst_0
istore 4
L0:
iload 4
iload 5
if_icmpge L1
aload 12
iload 4
aaload
astore 3
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
ifne L2
aload 6
astore 11
aload 3
astore 10
aload 8
astore 9
L3:
iload 4
iconst_1
iadd
istore 4
aload 9
astore 8
aload 10
astore 7
aload 11
astore 6
goto L0
L2:
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
iconst_1
if_icmpne L4
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
iconst_0
aaload
ldc java/lang/String
if_acmpne L4
aload 8
astore 9
aload 7
astore 10
aload 3
astore 11
goto L3
L4:
aload 8
astore 9
aload 7
astore 10
aload 6
astore 11
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
iconst_2
if_icmpne L3
aload 8
astore 9
aload 7
astore 10
aload 6
astore 11
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
iconst_0
aaload
ldc java/lang/String
if_acmpne L3
aload 8
astore 9
aload 7
astore 10
aload 6
astore 11
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
iconst_1
aaload
ldc java/lang/Throwable
if_acmpne L3
aload 3
astore 9
aload 7
astore 10
aload 6
astore 11
goto L3
L1:
aload 8
ifnull L5
aload 8
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Throwable
areturn
L5:
aload 6
ifnull L6
aload 6
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Throwable
areturn
L6:
aload 7
ifnull L7
aload 7
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Throwable
areturn
L7:
aconst_null
areturn
.limit locals 13
.limit stack 5
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L5
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
astore 2
L6:
aload 2
areturn
L5:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getResolveStatus()I
iconst_2
if_icmpne L7
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L8:
aconst_null
astore 6
aconst_null
astore 4
aload 4
astore 3
aload 2
ifnull L9
aload 4
astore 3
aload 2
instanceof java/lang/Class
ifeq L9
aload 2
checkcast java/lang/Class
astore 2
aload 4
astore 3
ldc java/lang/Throwable
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L9
aload 2
astore 3
L9:
aconst_null
astore 5
aconst_null
astore 4
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 11
aload 6
astore 2
L10:
aload 10
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 6
aload 6
ifnonnull L11
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L12
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L13:
aload 3
ifnonnull L0
new java/lang/Exception
dup
aload 5
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
astore 1
L14:
aload 1
astore 2
aload 4
ifnull L6
aload 1
aload 4
invokevirtual java/lang/Throwable/setStackTrace([Ljava/lang/StackTraceElement;)V
aload 1
areturn
L7:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L8
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L12:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L11
aload 10
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifne L10
L11:
aload 10
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L16
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 8
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 4
astore 7
aload 5
astore 6
aload 2
astore 9
L17:
aload 9
astore 2
aload 8
astore 3
aload 6
astore 5
aload 7
astore 4
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L10
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 9
astore 2
aload 8
astore 3
aload 6
astore 5
aload 7
astore 4
goto L13
L16:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L15:
ldc "message"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L19
aconst_null
astore 6
L20:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 2
astore 9
aload 3
astore 8
aload 4
astore 7
goto L17
L19:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L21
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 6
goto L20
L21:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L18:
ldc "cause"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L22
aload 0
aload 1
aconst_null
ldc "cause"
invokevirtual com/alibaba/fastjson/parser/deserializer/ThrowableDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Throwable
astore 9
aload 3
astore 8
aload 5
astore 6
aload 4
astore 7
goto L17
L22:
ldc "stackTrace"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L23
aload 1
ldc [Ljava/lang/StackTraceElement;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Class;)Ljava/lang/Object;
checkcast [Ljava/lang/StackTraceElement;
astore 7
aload 2
astore 9
aload 3
astore 8
aload 5
astore 6
goto L17
L23:
aload 11
aload 6
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
astore 9
aload 3
astore 8
aload 5
astore 6
aload 4
astore 7
goto L17
L0:
aload 0
aload 5
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ThrowableDeserializer/createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
astore 3
L1:
aload 3
astore 1
aload 3
ifnonnull L14
L3:
new java/lang/Exception
dup
aload 5
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
astore 1
L4:
goto L14
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
ldc "create instance error"
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 12
.limit stack 4
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method
