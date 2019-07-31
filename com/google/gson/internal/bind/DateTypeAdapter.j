.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/DateTypeAdapter
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;"
.inner class static final inner com/google/gson/internal/bind/DateTypeAdapter$1

.field public static final 'FACTORY' Lcom/google/gson/TypeAdapterFactory;

.field private final 'enUsFormat' Ljava/text/DateFormat;

.field private final 'iso8601Format' Ljava/text/DateFormat;

.field private final 'localFormat' Ljava/text/DateFormat;

.method static <clinit>()V
new com/google/gson/internal/bind/DateTypeAdapter$1
dup
invokespecial com/google/gson/internal/bind/DateTypeAdapter$1/<init>()V
putstatic com/google/gson/internal/bind/DateTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
iconst_2
iconst_2
getstatic java/util/Locale/US Ljava/util/Locale;
invokestatic java/text/DateFormat/getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
putfield com/google/gson/internal/bind/DateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 0
iconst_2
iconst_2
invokestatic java/text/DateFormat/getDateTimeInstance(II)Ljava/text/DateFormat;
putfield com/google/gson/internal/bind/DateTypeAdapter/localFormat Ljava/text/DateFormat;
aload 0
invokestatic com/google/gson/internal/bind/DateTypeAdapter/buildIso8601Format()Ljava/text/DateFormat;
putfield com/google/gson/internal/bind/DateTypeAdapter/iso8601Format Ljava/text/DateFormat;
return
.limit locals 1
.limit stack 4
.end method

.method private static buildIso8601Format()Ljava/text/DateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd'T'HH:mm:ss'Z'"
getstatic java/util/Locale/US Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
astore 0
aload 0
ldc "UTC"
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/text/DateFormat/setTimeZone(Ljava/util/TimeZone;)V
aload 0
areturn
.limit locals 1
.limit stack 4
.end method

.method private deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/text/ParseException from L4 to L5 using L6
.catch all from L4 to L5 using L3
.catch java/text/ParseException from L7 to L8 using L9
.catch all from L7 to L8 using L3
.catch all from L10 to L3 using L3
aload 0
monitorenter
L0:
aload 0
getfield com/google/gson/internal/bind/DateTypeAdapter/localFormat Ljava/text/DateFormat;
aload 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
L1:
aload 2
astore 1
L11:
aload 0
monitorexit
aload 1
areturn
L2:
astore 2
L4:
aload 0
getfield com/google/gson/internal/bind/DateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
L5:
aload 2
astore 1
goto L11
L6:
astore 2
L7:
aload 0
getfield com/google/gson/internal/bind/DateTypeAdapter/iso8601Format Ljava/text/DateFormat;
aload 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
L8:
aload 2
astore 1
goto L11
L9:
astore 2
L10:
new com/google/gson/JsonSyntaxException
dup
aload 1
aload 2
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/DateTypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokespecial com/google/gson/internal/bind/DateTypeAdapter/deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/Date
invokevirtual com/google/gson/internal/bind/DateTypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
aload 2
ifnonnull L3
L0:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
L1:
aload 0
monitorexit
return
L3:
aload 1
aload 0
getfield com/google/gson/internal/bind/DateTypeAdapter/enUsFormat Ljava/text/DateFormat;
aload 2
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
L4:
goto L1
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method
