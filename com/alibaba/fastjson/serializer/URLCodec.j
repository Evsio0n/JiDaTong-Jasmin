.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/URLCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/URLCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/URLCodec
dup
invokespecial com/alibaba/fastjson/serializer/URLCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/URLCodec/instance Lcom/alibaba/fastjson/serializer/URLCodec;
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
.catch java/net/MalformedURLException from L0 to L1 using L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
ldc "create url error"
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_4
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
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
