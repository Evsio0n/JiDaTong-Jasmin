.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/SqlDateTypeAdapter
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
.inner class static final inner com/google/gson/internal/bind/SqlDateTypeAdapter$1

.field public static final 'FACTORY' Lcom/google/gson/TypeAdapterFactory;

.field private final 'format' Ljava/text/DateFormat;

.method static <clinit>()V
new com/google/gson/internal/bind/SqlDateTypeAdapter$1
dup
invokespecial com/google/gson/internal/bind/SqlDateTypeAdapter$1/<init>()V
putstatic com/google/gson/internal/bind/SqlDateTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
new java/text/SimpleDateFormat
dup
ldc "MMM d, yyyy"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/google/gson/internal/bind/SqlDateTypeAdapter/format Ljava/text/DateFormat;
return
.limit locals 1
.limit stack 4
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/SqlDateTypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch java/text/ParseException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L2 using L2
aload 0
monitorenter
L0:
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L3
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
L1:
aconst_null
astore 1
L7:
aload 0
monitorexit
aload 1
areturn
L3:
new java/sql/Date
dup
aload 0
getfield com/google/gson/internal/bind/SqlDateTypeAdapter/format Ljava/text/DateFormat;
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Date/<init>(J)V
astore 1
L4:
goto L7
L5:
astore 1
L6:
new com/google/gson/JsonSyntaxException
dup
aload 1
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/sql/Date
invokevirtual com/google/gson/internal/bind/SqlDateTypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
aload 2
ifnonnull L3
aconst_null
astore 2
L0:
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
L1:
aload 0
monitorexit
return
L3:
aload 0
getfield com/google/gson/internal/bind/SqlDateTypeAdapter/format Ljava/text/DateFormat;
aload 2
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 2
L4:
goto L0
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method
