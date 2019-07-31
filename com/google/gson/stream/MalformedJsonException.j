.bytecode 50.0
.class public final synchronized com/google/gson/stream/MalformedJsonException
.super java/io/IOException

.field private static final 'serialVersionUID' J = 1L


.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual com/google/gson/stream/MalformedJsonException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
pop
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/Throwable;)V
aload 0
invokespecial java/io/IOException/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/stream/MalformedJsonException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
pop
return
.limit locals 2
.limit stack 2
.end method
