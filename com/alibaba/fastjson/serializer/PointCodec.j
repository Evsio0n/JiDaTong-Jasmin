.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/PointCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/PointCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/PointCodec
dup
invokespecial com/alibaba/fastjson/serializer/PointCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/PointCodec/instance Lcom/alibaba/fastjson/serializer/PointCodec;
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
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L0:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
iconst_0
istore 5
iconst_0
istore 4
L2:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L3
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
new java/awt/Point
dup
iload 5
iload 4
invokespecial java/awt/Point/<init>(II)V
areturn
L3:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L4
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 3
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
ldc "java.awt.Point"
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/acceptType(Ljava/lang/String;)V
goto L2
L5:
aload 2
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L6
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 6
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 3
ldc "x"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
iload 4
istore 7
L8:
iload 6
istore 5
iload 7
istore 4
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L2
aload 2
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iload 6
istore 5
iload 7
istore 4
goto L2
L4:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
aload 3
ldc "y"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
iload 6
istore 7
iload 5
istore 6
goto L8
L9:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 8
.limit stack 4
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
checkcast java/awt/Point
astore 2
aload 2
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
bipush 123
istore 5
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 1
ldc java/awt/Point
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
bipush 44
istore 5
L1:
aload 1
iload 5
ldc "x"
aload 2
invokevirtual java/awt/Point/getX()D
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;D)V
aload 1
bipush 44
ldc "y"
aload 2
invokevirtual java/awt/Point/getY()D
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;D)V
aload 1
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 6
.limit stack 5
.end method
