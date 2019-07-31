.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec
dup
invokespecial com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec/instance Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;
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
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
astore 1
L1:
aload 1
areturn
L0:
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 3
aload 1
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;)V
new java/util/concurrent/atomic/AtomicIntegerArray
dup
aload 3
invokevirtual com/alibaba/fastjson/JSONArray/size()I
invokespecial java/util/concurrent/atomic/AtomicIntegerArray/<init>(I)V
astore 2
iconst_0
istore 4
L2:
aload 2
astore 1
iload 4
aload 3
invokevirtual com/alibaba/fastjson/JSONArray/size()I
if_icmpge L1
aload 2
iload 4
aload 3
iload 4
invokevirtual com/alibaba/fastjson/JSONArray/getInteger(I)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual java/util/concurrent/atomic/AtomicIntegerArray/set(II)V
iload 4
iconst_1
iadd
istore 4
goto L2
.limit locals 5
.limit stack 4
.end method

.method public getFastMatchToken()I
bipush 14
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
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/util/concurrent/atomic/AtomicIntegerArray
astore 2
aload 2
invokevirtual java/util/concurrent/atomic/AtomicIntegerArray/length()I
istore 6
aload 1
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
iconst_0
istore 5
L2:
iload 5
iload 6
if_icmpge L3
aload 2
iload 5
invokevirtual java/util/concurrent/atomic/AtomicIntegerArray/get(I)I
istore 7
iload 5
ifeq L4
aload 1
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L4:
aload 1
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
iload 5
iconst_1
iadd
istore 5
goto L2
L3:
aload 1
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
.limit locals 8
.limit stack 2
.end method
