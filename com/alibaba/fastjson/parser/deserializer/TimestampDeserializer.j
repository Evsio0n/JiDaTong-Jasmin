.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/TimestampDeserializer
.super com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/TimestampDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/TimestampDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/TimestampDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)TT;"
.catch java/text/ParseException from L0 to L1 using L2
aload 4
ifnonnull L3
L4:
aconst_null
areturn
L3:
aload 4
instanceof java/util/Date
ifeq L5
new java/sql/Timestamp
dup
aload 4
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L5:
aload 4
instanceof java/lang/Number
ifeq L6
new java/sql/Timestamp
dup
aload 4
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L6:
aload 4
instanceof java/lang/String
ifeq L7
aload 4
checkcast java/lang/String
astore 2
aload 2
invokevirtual java/lang/String/length()I
ifeq L4
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getDateFormat()Ljava/text/DateFormat;
astore 1
L0:
new java/sql/Timestamp
dup
aload 1
aload 2
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Timestamp/<init>(J)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/sql/Timestamp
dup
aload 2
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L7:
new com/alibaba/fastjson/JSONException
dup
ldc "parse error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
