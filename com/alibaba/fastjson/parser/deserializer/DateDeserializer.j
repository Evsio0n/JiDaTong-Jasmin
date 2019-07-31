.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/DateDeserializer
.super com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/DateDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/DateDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/DateDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
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
.catch all from L0 to L1 using L2
.catch java/text/ParseException from L3 to L4 using L5
aload 4
ifnonnull L6
aconst_null
astore 2
L7:
aload 2
areturn
L6:
aload 4
astore 2
aload 4
instanceof java/util/Date
ifne L7
aload 4
instanceof java/lang/Number
ifeq L8
new java/util/Date
dup
aload 4
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokespecial java/util/Date/<init>(J)V
areturn
L8:
aload 4
instanceof java/lang/String
ifeq L9
aload 4
checkcast java/lang/String
astore 2
aload 2
invokevirtual java/lang/String/length()I
ifne L10
aconst_null
areturn
L10:
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 2
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 3
L0:
aload 3
iconst_0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch(Z)Z
ifeq L11
aload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 1
L1:
aload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 1
areturn
L11:
aload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getDateFormat()Ljava/text/DateFormat;
astore 1
L3:
aload 1
aload 2
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 1
L4:
aload 1
areturn
L2:
astore 1
aload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 1
athrow
L5:
astore 1
new java/util/Date
dup
aload 2
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokespecial java/util/Date/<init>(J)V
areturn
L9:
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
