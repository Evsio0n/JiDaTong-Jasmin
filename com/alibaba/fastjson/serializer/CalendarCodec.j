.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/CalendarCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/CalendarCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/CalendarCodec
dup
invokespecial com/alibaba/fastjson/serializer/CalendarCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/CalendarCodec/instance Lcom/alibaba/fastjson/serializer/CalendarCodec;
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
getstatic com/alibaba/fastjson/parser/deserializer/DateDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/DateDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Date
astore 1
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 2
aload 2
aload 1
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
aload 2
checkcast java/util/Calendar
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 2
.end method
