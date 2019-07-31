.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/TimeDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/TimeDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/TimeDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/TimeDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
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
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L0
aload 2
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
iconst_2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 4
aload 2
bipush 13
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
new java/sql/Time
dup
lload 4
invokespecial java/sql/Time/<init>(J)V
astore 1
L4:
aload 1
areturn
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 2
aload 2
ifnonnull L5
aconst_null
areturn
L5:
aload 2
astore 1
aload 2
instanceof java/sql/Time
ifne L4
aload 2
instanceof java/lang/Number
ifeq L6
new java/sql/Time
dup
aload 2
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokespecial java/sql/Time/<init>(J)V
areturn
L6:
aload 2
instanceof java/lang/String
ifeq L7
aload 2
checkcast java/lang/String
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L8
aconst_null
areturn
L8:
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 1
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch()Z
ifeq L9
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 4
L10:
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
new java/sql/Time
dup
lload 4
invokespecial java/sql/Time/<init>(J)V
areturn
L9:
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 4
goto L10
L7:
new com/alibaba/fastjson/JSONException
dup
ldc "parse error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
