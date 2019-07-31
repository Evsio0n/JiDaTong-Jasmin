.bytecode 50.0
.class synchronized com/google/gson/Gson$4
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
.enclosing method com/google/gson/Gson/floatAdapter(Z)Lcom/google/gson/TypeAdapter;
.inner class inner com/google/gson/Gson$4

.field final synthetic 'this$0' Lcom/google/gson/Gson;

.method <init>(Lcom/google/gson/Gson;)V
aload 0
aload 1
putfield com/google/gson/Gson$4/this$0 Lcom/google/gson/Gson;
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Float;
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
invokevirtual com/google/gson/stream/JsonReader/nextDouble()D
d2f
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/Gson$4/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Float;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 2
invokevirtual java/lang/Number/floatValue()F
fstore 3
aload 0
getfield com/google/gson/Gson$4/this$0 Lcom/google/gson/Gson;
fload 3
f2d
invokestatic com/google/gson/Gson/access$000(Lcom/google/gson/Gson;D)V
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/lang/Number
invokevirtual com/google/gson/Gson$4/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
return
.limit locals 3
.limit stack 3
.end method
