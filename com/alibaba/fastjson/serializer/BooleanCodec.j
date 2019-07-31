.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/BooleanCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/BooleanCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/BooleanCodec
dup
invokespecial com/alibaba/fastjson/serializer/BooleanCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/BooleanCodec/instance Lcom/alibaba/fastjson/serializer/BooleanCodec;
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
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 6
if_icmpne L0
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
astore 1
L1:
aload 1
astore 3
aload 2
ldc java/util/concurrent/atomic/AtomicBoolean
if_acmpne L2
new java/util/concurrent/atomic/AtomicBoolean
dup
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
astore 3
L2:
aload 3
areturn
L0:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 7
if_icmpne L3
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
astore 1
goto L1
L3:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L4
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 4
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iload 4
iconst_1
if_icmpne L5
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
astore 1
goto L1
L5:
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
astore 1
goto L1
L4:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L6
aconst_null
areturn
L6:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
astore 1
goto L1
.limit locals 5
.limit stack 3
.end method

.method public getFastMatchToken()I
bipush 6
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
checkcast java/lang/Boolean
astore 2
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L2
aload 1
ldc "true"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L2:
aload 1
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
