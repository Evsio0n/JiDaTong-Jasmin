.bytecode 50.0
.class public final synchronized com/google/gson/JsonIOException
.super com/google/gson/JsonParseException

.field private static final 'serialVersionUID' J = 1L


.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 2
.end method
