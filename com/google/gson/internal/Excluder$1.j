.bytecode 50.0
.class synchronized com/google/gson/internal/Excluder$1
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<TT;>;"
.enclosing method com/google/gson/internal/Excluder/create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.inner class inner com/google/gson/internal/Excluder$1

.field private 'delegate' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TT;>;"

.field final synthetic 'this$0' Lcom/google/gson/internal/Excluder;

.field final synthetic 'val$gson' Lcom/google/gson/Gson;

.field final synthetic 'val$skipDeserialize' Z

.field final synthetic 'val$skipSerialize' Z

.field final synthetic 'val$type' Lcom/google/gson/reflect/TypeToken;

.method <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
aload 0
aload 1
putfield com/google/gson/internal/Excluder$1/this$0 Lcom/google/gson/internal/Excluder;
aload 0
iload 2
putfield com/google/gson/internal/Excluder$1/val$skipDeserialize Z
aload 0
iload 3
putfield com/google/gson/internal/Excluder$1/val$skipSerialize Z
aload 0
aload 4
putfield com/google/gson/internal/Excluder$1/val$gson Lcom/google/gson/Gson;
aload 0
aload 5
putfield com/google/gson/internal/Excluder$1/val$type Lcom/google/gson/reflect/TypeToken;
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 6
.limit stack 2
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
.signature "()Lcom/google/gson/TypeAdapter<TT;>;"
aload 0
getfield com/google/gson/internal/Excluder$1/delegate Lcom/google/gson/TypeAdapter;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
aload 0
getfield com/google/gson/internal/Excluder$1/val$gson Lcom/google/gson/Gson;
aload 0
getfield com/google/gson/internal/Excluder$1/this$0 Lcom/google/gson/internal/Excluder;
aload 0
getfield com/google/gson/internal/Excluder$1/val$type Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
astore 1
aload 0
aload 1
putfield com/google/gson/internal/Excluder$1/delegate Lcom/google/gson/TypeAdapter;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/Excluder$1/val$skipDeserialize Z
ifeq L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/skipValue()V
aconst_null
areturn
L0:
aload 0
invokespecial com/google/gson/internal/Excluder$1/delegate()Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/Excluder$1/val$skipSerialize Z
ifeq L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 0
invokespecial com/google/gson/internal/Excluder$1/delegate()Lcom/google/gson/TypeAdapter;
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
