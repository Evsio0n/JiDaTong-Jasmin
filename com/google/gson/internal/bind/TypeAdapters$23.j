.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$23
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/util/Calendar;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$23

.field private static final 'DAY_OF_MONTH' Ljava/lang/String; = "dayOfMonth"

.field private static final 'HOUR_OF_DAY' Ljava/lang/String; = "hourOfDay"

.field private static final 'MINUTE' Ljava/lang/String; = "minute"

.field private static final 'MONTH' Ljava/lang/String; = "month"

.field private static final 'SECOND' Ljava/lang/String; = "second"

.field private static final 'YEAR' Ljava/lang/String; = "year"

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$23/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
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
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginObject()V
iconst_0
istore 8
iconst_0
istore 7
iconst_0
istore 6
iconst_0
istore 5
iconst_0
istore 4
iconst_0
istore 3
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
if_acmpeq L2
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextName()Ljava/lang/String;
astore 9
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextInt()I
istore 2
ldc "year"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iload 2
istore 8
goto L1
L3:
ldc "month"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
iload 2
istore 7
goto L1
L4:
ldc "dayOfMonth"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
iload 2
istore 6
goto L1
L5:
ldc "hourOfDay"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
iload 2
istore 5
goto L1
L6:
ldc "minute"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
iload 2
istore 4
goto L1
L7:
ldc "second"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iload 2
istore 3
goto L1
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endObject()V
new java/util/GregorianCalendar
dup
iload 8
iload 7
iload 6
iload 5
iload 4
iload 3
invokespecial java/util/GregorianCalendar/<init>(IIIIII)V
areturn
.limit locals 10
.limit stack 8
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/Calendar
invokevirtual com/google/gson/internal/bind/TypeAdapters$23/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "year"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
iconst_1
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "month"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
iconst_2
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "dayOfMonth"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
iconst_5
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "hourOfDay"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
bipush 11
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "minute"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
bipush 12
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
ldc "second"
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
aload 2
bipush 13
invokevirtual java/util/Calendar/get(I)I
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 3
.limit stack 3
.end method
