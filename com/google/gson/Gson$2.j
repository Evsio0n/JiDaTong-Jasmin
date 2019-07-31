.bytecode 50.0
.class synchronized com/google/gson/Gson$2
.super java/lang/Object
.implements com/google/gson/JsonSerializationContext
.enclosing method com/google/gson/Gson
.inner class inner com/google/gson/Gson$2

.field final synthetic 'this$0' Lcom/google/gson/Gson;

.method <init>(Lcom/google/gson/Gson;)V
aload 0
aload 1
putfield com/google/gson/Gson$2/this$0 Lcom/google/gson/Gson;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/Gson$2/this$0 Lcom/google/gson/Gson;
aload 1
invokevirtual com/google/gson/Gson/toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
areturn
.limit locals 2
.limit stack 2
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/Gson$2/this$0 Lcom/google/gson/Gson;
aload 1
aload 2
invokevirtual com/google/gson/Gson/toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
areturn
.limit locals 3
.limit stack 3
.end method
