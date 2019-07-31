.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/TimeZoneCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/TimeZoneCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/TimeZoneCodec
dup
invokespecial com/alibaba/fastjson/serializer/TimeZoneCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/TimeZoneCodec/instance Lcom/alibaba/fastjson/serializer/TimeZoneCodec;
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
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
areturn
.limit locals 4
.limit stack 1
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
checkcast java/util/TimeZone
invokevirtual java/util/TimeZone/getID()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
