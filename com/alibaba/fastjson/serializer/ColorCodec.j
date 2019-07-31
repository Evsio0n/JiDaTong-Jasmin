.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ColorCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ColorCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ColorCodec
dup
invokespecial com/alibaba/fastjson/serializer/ColorCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/ColorCodec/instance Lcom/alibaba/fastjson/serializer/ColorCodec;
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
astore 1
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L0
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
iconst_0
istore 8
L1:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L2
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
new java/awt/Color
dup
iload 5
iload 6
iload 7
iload 8
invokespecial java/awt/Color/<init>(IIII)V
areturn
L2:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L3
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 2
aload 1
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L4
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 4
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aload 2
ldc "r"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
iload 4
istore 11
iload 6
istore 10
iload 7
istore 9
iload 8
istore 4
L6:
iload 4
istore 8
iload 9
istore 7
iload 10
istore 6
iload 11
istore 5
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L1
aload 1
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iload 4
istore 8
iload 9
istore 7
iload 10
istore 6
iload 11
istore 5
goto L1
L3:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 2
ldc "g"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
iload 4
istore 10
iload 8
istore 4
iload 7
istore 9
iload 5
istore 11
goto L6
L7:
aload 2
ldc "b"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
iload 4
istore 9
iload 8
istore 4
iload 6
istore 10
iload 5
istore 11
goto L6
L8:
aload 2
ldc "alpha"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
iload 7
istore 9
iload 6
istore 10
iload 5
istore 11
goto L6
L9:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, "
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

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
checkcast java/awt/Color
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
ldc java/awt/Color
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
bipush 44
istore 5
L1:
aload 1
iload 5
ldc "r"
aload 2
invokevirtual java/awt/Color/getRed()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;I)V
aload 1
bipush 44
ldc "g"
aload 2
invokevirtual java/awt/Color/getGreen()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;I)V
aload 1
bipush 44
ldc "b"
aload 2
invokevirtual java/awt/Color/getBlue()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;I)V
aload 2
invokevirtual java/awt/Color/getAlpha()I
ifle L2
aload 1
bipush 44
ldc "alpha"
aload 2
invokevirtual java/awt/Color/getAlpha()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;I)V
L2:
aload 1
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 6
.limit stack 4
.end method
