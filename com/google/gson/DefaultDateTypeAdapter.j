.bytecode 50.0
.class final synchronized com/google/gson/DefaultDateTypeAdapter
.super java/lang/Object
.implements com/google/gson/JsonSerializer
.implements com/google/gson/JsonDeserializer
.signature "Ljava/lang/Object;Lcom/google/gson/JsonSerializer<Ljava/util/Date;>;Lcom/google/gson/JsonDeserializer<Ljava/util/Date;>;"

.field private final 'enUsFormat' Ljava/text/DateFormat;

.field private final 'iso8601Format' Ljava/text/DateFormat;

.field private final 'localFormat' Ljava/text/DateFormat;

.method <init>()V
aload 0
iconst_2
iconst_2
getstatic java/util/Locale/US Ljava/util/Locale;
invokestatic java/text/DateFormat/getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
iconst_2
iconst_2
invokestatic java/text/DateFormat/getDateTimeInstance(II)Ljava/text/DateFormat;
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
return
.limit locals 1
.limit stack 4
.end method

.method <init>(I)V
aload 0
iload 1
getstatic java/util/Locale/US Ljava/util/Locale;
invokestatic java/text/DateFormat/getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
iload 1
invokestatic java/text/DateFormat/getDateInstance(I)Ljava/text/DateFormat;
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(II)V
aload 0
iload 1
iload 2
getstatic java/util/Locale/US Ljava/util/Locale;
invokestatic java/text/DateFormat/getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
iload 1
iload 2
invokestatic java/text/DateFormat/getDateTimeInstance(II)Ljava/text/DateFormat;
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
return
.limit locals 3
.limit stack 4
.end method

.method <init>(Ljava/lang/String;)V
aload 0
new java/text/SimpleDateFormat
dup
aload 1
getstatic java/util/Locale/US Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
new java/text/SimpleDateFormat
dup
aload 1
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
return
.limit locals 2
.limit stack 5
.end method

.method <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/DefaultDateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 0
aload 2
putfield com/google/gson/DefaultDateTypeAdapter/localFormat Ljava/text/DateFormat;
aload 0
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd'T'HH:mm:ss'Z'"
getstatic java/util/Locale/US Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
putfield com/google/gson/DefaultDateTypeAdapter/iso8601Format Ljava/text/DateFormat;
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/iso8601Format Ljava/text/DateFormat;
ldc "UTC"
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/text/DateFormat/setTimeZone(Ljava/util/TimeZone;)V
return
.limit locals 3
.limit stack 5
.end method

.method private deserializeToDate(Lcom/google/gson/JsonElement;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L3
.catch java/text/ParseException from L5 to L6 using L7
.catch all from L5 to L6 using L3
.catch all from L6 to L8 using L3
.catch all from L9 to L10 using L3
.catch java/text/ParseException from L11 to L12 using L13
.catch all from L11 to L12 using L3
.catch all from L12 to L14 using L3
.catch all from L15 to L16 using L3
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/localFormat Ljava/text/DateFormat;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/localFormat Ljava/text/DateFormat;
aload 1
invokevirtual com/google/gson/JsonElement/getAsString()Ljava/lang/String;
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 3
L1:
aload 2
monitorexit
L4:
aload 3
areturn
L2:
astore 3
L5:
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 1
invokevirtual com/google/gson/JsonElement/getAsString()Ljava/lang/String;
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 3
L6:
aload 2
monitorexit
L8:
aload 3
areturn
L3:
astore 1
L9:
aload 2
monitorexit
L10:
aload 1
athrow
L7:
astore 3
L11:
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/iso8601Format Ljava/text/DateFormat;
aload 1
invokevirtual com/google/gson/JsonElement/getAsString()Ljava/lang/String;
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 3
L12:
aload 2
monitorexit
L14:
aload 3
areturn
L13:
astore 3
L15:
new com/google/gson/JsonSyntaxException
dup
aload 1
invokevirtual com/google/gson/JsonElement/getAsString()Ljava/lang/String;
aload 3
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L16:
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
.throws com/google/gson/JsonParseException
aload 0
aload 1
aload 2
aload 3
invokevirtual com/google/gson/DefaultDateTypeAdapter/deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
areturn
.limit locals 4
.limit stack 4
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
.throws com/google/gson/JsonParseException
aload 1
instanceof com/google/gson/JsonPrimitive
ifne L0
new com/google/gson/JsonParseException
dup
ldc "The date should be a string value"
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
invokespecial com/google/gson/DefaultDateTypeAdapter/deserializeToDate(Lcom/google/gson/JsonElement;)Ljava/util/Date;
astore 1
aload 2
ldc java/util/Date
if_acmpne L1
aload 1
areturn
L1:
aload 2
ldc java/sql/Timestamp
if_acmpne L2
new java/sql/Timestamp
dup
aload 1
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L2:
aload 2
ldc java/sql/Date
if_acmpne L3
new java/sql/Date
dup
aload 1
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Date/<init>(J)V
areturn
L3:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " cannot deserialize to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
aload 0
aload 1
checkcast java/util/Date
aload 2
aload 3
invokevirtual com/google/gson/DefaultDateTypeAdapter/serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
areturn
.limit locals 4
.limit stack 4
.end method

.method public serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/localFormat Ljava/text/DateFormat;
astore 2
aload 2
monitorenter
L0:
new com/google/gson/JsonPrimitive
dup
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 1
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/String;)V
astore 1
aload 2
monitorexit
L1:
aload 1
areturn
L2:
astore 1
L3:
aload 2
monitorexit
L4:
aload 1
athrow
.limit locals 4
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc com/google/gson/DefaultDateTypeAdapter
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
bipush 40
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/DefaultDateTypeAdapter/localFormat Ljava/text/DateFormat;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 41
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
