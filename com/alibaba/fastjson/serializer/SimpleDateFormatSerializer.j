.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/SimpleDateFormatSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field private final 'pattern' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SimpleDateFormatSerializer/pattern Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/util/Date
astore 2
aload 1
new java/text/SimpleDateFormat
dup
aload 0
getfield com/alibaba/fastjson/serializer/SimpleDateFormatSerializer/pattern Ljava/lang/String;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
