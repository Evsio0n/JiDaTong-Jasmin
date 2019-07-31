.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/DateFormatDeserializer
.super com/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/DateFormatDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/DateFormatDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/DateFormatDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;
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
aload 4
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 4
instanceof java/lang/String
ifeq L2
aload 4
checkcast java/lang/String
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifeq L1
new java/text/SimpleDateFormat
dup
aload 1
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
areturn
L2:
new com/alibaba/fastjson/JSONException
dup
ldc "parse error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 3
.end method

.method public getFastMatchToken()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method
