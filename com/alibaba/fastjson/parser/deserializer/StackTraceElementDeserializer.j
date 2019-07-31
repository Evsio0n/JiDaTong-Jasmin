.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
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

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L0:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L1
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aconst_null
astore 7
aconst_null
astore 9
aconst_null
astore 8
iconst_0
istore 5
L2:
aload 10
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 2
aload 2
ifnonnull L3
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L4
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 9
astore 6
iload 5
istore 4
aload 8
astore 3
aload 7
astore 2
L5:
new java/lang/StackTraceElement
dup
aload 2
aload 6
aload 3
iload 4
invokespecial java/lang/StackTraceElement/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
areturn
L4:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L3
aload 10
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifne L2
L3:
aload 10
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 2
ldc "className"
if_acmpne L6
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L7
aconst_null
astore 2
aload 9
astore 6
iload 5
istore 4
aload 8
astore 3
L8:
aload 2
astore 7
aload 3
astore 8
iload 4
istore 5
aload 6
astore 9
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L2
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L5
L7:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L9
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
goto L8
L9:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 2
ldc "methodName"
if_acmpne L10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L11
aconst_null
astore 6
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
goto L8
L11:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L12
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 6
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
goto L8
L12:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 2
ldc "fileName"
if_acmpne L13
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L14
aconst_null
astore 3
aload 7
astore 2
iload 5
istore 4
aload 9
astore 6
goto L8
L14:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L15
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 3
aload 7
astore 2
iload 5
istore 4
aload 9
astore 6
goto L8
L15:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L13:
aload 2
ldc "lineNumber"
if_acmpne L16
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L17
iconst_0
istore 4
aload 7
astore 2
aload 8
astore 3
aload 9
astore 6
goto L8
L17:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L18
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 4
aload 7
astore 2
aload 8
astore 3
aload 9
astore 6
goto L8
L18:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L16:
aload 2
ldc "nativeMethod"
if_acmpne L19
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L20
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
goto L8
L20:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 6
if_icmpne L21
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
goto L8
L21:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 7
if_icmpne L22
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
goto L8
L22:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L19:
aload 2
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
if_acmpne L23
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L24
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 11
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
aload 11
ldc "java.lang.StackTraceElement"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L8
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L24:
aload 7
astore 2
aload 8
astore 3
iload 5
istore 4
aload 9
astore 6
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpeq L8
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L23:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 12
.limit stack 6
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method
