.bytecode 50.0
.class synchronized com/google/gson/internal/bind/TypeAdapters$22$1
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters$22/create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$22
.inner class inner com/google/gson/internal/bind/TypeAdapters$22$1

.field final synthetic 'this$0' Lcom/google/gson/internal/bind/TypeAdapters$22;

.field final synthetic 'val$dateTypeAdapter' Lcom/google/gson/TypeAdapter;

.method <init>(Lcom/google/gson/internal/bind/TypeAdapters$22;Lcom/google/gson/TypeAdapter;)V
aload 0
aload 1
putfield com/google/gson/internal/bind/TypeAdapters$22$1/this$0 Lcom/google/gson/internal/bind/TypeAdapters$22;
aload 0
aload 2
putfield com/google/gson/internal/bind/TypeAdapters$22$1/val$dateTypeAdapter Lcom/google/gson/TypeAdapter;
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$22$1/read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$22$1/val$dateTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
checkcast java/util/Date
astore 1
aload 1
ifnull L0
new java/sql/Timestamp
dup
aload 1
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/sql/Timestamp
invokevirtual com/google/gson/internal/bind/TypeAdapters$22$1/write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$22$1/val$dateTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
