.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/SqlDateDeserializer
.super com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/SqlDateDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/SqlDateDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/SqlDateDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
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
.catch all from L3 to L4 using L2
.catch java/text/ParseException from L4 to L5 using L6
.catch all from L4 to L5 using L2
.catch all from L7 to L8 using L2
aload 4
ifnonnull L9
L10:
aconst_null
areturn
L9:
aload 4
instanceof java/util/Date
ifeq L11
new java/sql/Date
dup
aload 4
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Date/<init>(J)V
astore 1
L12:
aload 1
areturn
L11:
aload 4
instanceof java/lang/Number
ifeq L13
new java/sql/Date
dup
aload 4
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokespecial java/sql/Date/<init>(J)V
astore 1
goto L12
L13:
aload 4
instanceof java/lang/String
ifeq L14
aload 4
checkcast java/lang/String
astore 3
aload 3
invokevirtual java/lang/String/length()I
ifeq L10
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 3
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 2
L0:
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L3
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 5
L1:
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
new java/sql/Date
dup
lload 5
invokespecial java/sql/Date/<init>(J)V
areturn
L3:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getDateFormat()Ljava/text/DateFormat;
astore 1
L4:
new java/sql/Date
dup
aload 1
aload 3
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Date/<init>(J)V
astore 1
L5:
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 1
areturn
L6:
astore 1
L7:
aload 3
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 5
L8:
goto L1
L2:
astore 1
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 1
athrow
L14:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "parse error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
