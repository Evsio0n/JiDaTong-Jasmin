.bytecode 50.0
.class synchronized com/google/gson/TypeAdapter$1
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<TT;>;"
.enclosing method com/google/gson/TypeAdapter/nullSafe()Lcom/google/gson/TypeAdapter;
.inner class inner com/google/gson/TypeAdapter$1

.field final synthetic 'this$0' Lcom/google/gson/TypeAdapter;

.method <init>(Lcom/google/gson/TypeAdapter;)V
aload 0
aload 1
putfield com/google/gson/TypeAdapter$1/this$0 Lcom/google/gson/TypeAdapter;
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
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
getfield com/google/gson/TypeAdapter$1/this$0 Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 0
getfield com/google/gson/TypeAdapter$1/this$0 Lcom/google/gson/TypeAdapter;
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
