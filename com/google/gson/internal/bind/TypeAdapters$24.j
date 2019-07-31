.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$24
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/util/Locale;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$24

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
invokevirtual com/google/gson/internal/bind/TypeAdapters$24/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;
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
new java/util/StringTokenizer
dup
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
ldc "_"
invokespecial java/util/StringTokenizer/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 4
aconst_null
astore 1
aconst_null
astore 2
aconst_null
astore 3
aload 4
invokevirtual java/util/StringTokenizer/hasMoreElements()Z
ifeq L1
aload 4
invokevirtual java/util/StringTokenizer/nextToken()Ljava/lang/String;
astore 1
L1:
aload 4
invokevirtual java/util/StringTokenizer/hasMoreElements()Z
ifeq L2
aload 4
invokevirtual java/util/StringTokenizer/nextToken()Ljava/lang/String;
astore 2
L2:
aload 4
invokevirtual java/util/StringTokenizer/hasMoreElements()Z
ifeq L3
aload 4
invokevirtual java/util/StringTokenizer/nextToken()Ljava/lang/String;
astore 3
L3:
aload 2
ifnonnull L4
aload 3
ifnonnull L4
new java/util/Locale
dup
aload 1
invokespecial java/util/Locale/<init>(Ljava/lang/String;)V
areturn
L4:
aload 3
ifnonnull L5
new java/util/Locale
dup
aload 1
aload 2
invokespecial java/util/Locale/<init>(Ljava/lang/String;Ljava/lang/String;)V
areturn
L5:
new java/util/Locale
dup
aload 1
aload 2
aload 3
invokespecial java/util/Locale/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
areturn
.limit locals 5
.limit stack 5
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/Locale
invokevirtual com/google/gson/internal/bind/TypeAdapters$24/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aconst_null
astore 2
L1:
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 2
invokevirtual java/util/Locale/toString()Ljava/lang/String;
astore 2
goto L1
.limit locals 3
.limit stack 2
.end method
