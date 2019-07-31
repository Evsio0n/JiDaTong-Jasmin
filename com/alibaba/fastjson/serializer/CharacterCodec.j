.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/CharacterCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/CharacterCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/CharacterCodec
dup
invokespecial com/alibaba/fastjson/serializer/CharacterCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/CharacterCodec/instance Lcom/alibaba/fastjson/serializer/CharacterCodec;
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
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToChar(Ljava/lang/Object;)Ljava/lang/Character;
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
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
checkcast java/lang/Character
astore 2
aload 2
ifnonnull L0
aload 1
ldc ""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L0:
aload 2
invokevirtual java/lang/Character/charValue()C
ifne L1
aload 1
ldc "\u0000"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L1:
aload 1
aload 2
invokevirtual java/lang/Character/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
