.bytecode 50.0
.class synchronized com/google/gson/Gson$1
.super java/lang/Object
.implements com/google/gson/JsonDeserializationContext
.enclosing method com/google/gson/Gson
.inner class inner com/google/gson/Gson$1

.field final synthetic 'this$0' Lcom/google/gson/Gson;

.method <init>(Lcom/google/gson/Gson;)V
aload 0
aload 1
putfield com/google/gson/Gson$1/this$0 Lcom/google/gson/Gson;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;"
.throws com/google/gson/JsonParseException
aload 0
getfield com/google/gson/Gson$1/this$0 Lcom/google/gson/Gson;
aload 1
aload 2
invokevirtual com/google/gson/Gson/fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method
