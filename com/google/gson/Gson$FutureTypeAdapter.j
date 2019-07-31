.bytecode 50.0
.class synchronized com/google/gson/Gson$FutureTypeAdapter
.super com/google/gson/TypeAdapter
.signature "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;"
.inner class static FutureTypeAdapter inner com/google/gson/Gson$FutureTypeAdapter outer com/google/gson/Gson

.field private 'delegate' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TT;>;"

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
aload 0
getfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
ifnonnull L0
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
aload 0
getfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDelegate(Lcom/google/gson/TypeAdapter;)V
.signature "(Lcom/google/gson/TypeAdapter<TT;>;)V"
aload 0
getfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
ifnull L0
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L0:
aload 0
aload 1
putfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
return
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 0
getfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
ifnonnull L0
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
aload 0
getfield com/google/gson/Gson$FutureTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
