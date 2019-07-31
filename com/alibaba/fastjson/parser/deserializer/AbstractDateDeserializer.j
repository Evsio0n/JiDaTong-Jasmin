.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)TT;"
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 6
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
astore 8
L1:
aload 0
aload 1
aload 8
aload 3
aload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer/cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
areturn
L0:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L2
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 9
aload 9
astore 7
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 7
astore 6
aload 2
astore 8
aload 10
getstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L1
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 9
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 8
aload 7
astore 6
aload 8
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L3
aload 8
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 6
L3:
aload 8
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 2
astore 8
goto L1
L2:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L4
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
astore 6
aload 2
astore 8
goto L1
L4:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpne L5
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L6
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 6
aload 2
astore 7
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 1
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 6
aload 6
ifnull L8
aload 6
astore 2
L8:
aload 1
iconst_4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 1
bipush 16
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 2
astore 7
L7:
aload 10
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L9
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 4
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 6
aload 1
bipush 13
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 7
astore 8
goto L1
L6:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L9:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getResolveStatus()I
iconst_2
if_icmpne L10
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
aload 1
bipush 16
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L11
ldc "val"
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L12
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L12:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 1
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 6
aload 1
bipush 13
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 2
astore 8
goto L1
L11:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 6
aload 2
astore 8
goto L1
.limit locals 11
.limit stack 5
.end method
