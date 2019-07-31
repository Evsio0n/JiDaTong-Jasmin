.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/InetSocketAddressCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/InetSocketAddressCodec
dup
invokespecial com/alibaba/fastjson/serializer/InetSocketAddressCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/InetSocketAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;
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
bipush 8
if_icmpne L0
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L0:
aload 1
bipush 12
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aconst_null
astore 2
iconst_0
istore 4
L1:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 5
aload 3
bipush 17
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 5
ldc "address"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 1
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 1
ldc java/net/InetAddress
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Class;)Ljava/lang/Object;
checkcast java/net/InetAddress
astore 2
L3:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L4
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
goto L1
L2:
aload 5
ldc "port"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpeq L6
new com/alibaba/fastjson/JSONException
dup
ldc "port is not int"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 4
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
goto L3
L5:
aload 1
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
pop
goto L3
L4:
aload 1
bipush 13
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
new java/net/InetSocketAddress
dup
aload 2
iload 4
invokespecial java/net/InetSocketAddress/<init>(Ljava/net/InetAddress;I)V
areturn
.limit locals 6
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
aload 2
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeNull()V
return
L0:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 3
aload 2
checkcast java/net/InetSocketAddress
astore 2
aload 2
invokevirtual java/net/InetSocketAddress/getAddress()Ljava/net/InetAddress;
astore 4
aload 3
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 4
ifnull L1
aload 3
ldc "address"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 3
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L1:
aload 3
ldc "port"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual java/net/InetSocketAddress/getPort()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
aload 3
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 5
.limit stack 2
.end method
