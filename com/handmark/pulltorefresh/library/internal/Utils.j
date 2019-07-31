.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/internal/Utils
.super java/lang/Object

.field static final 'LOG_TAG' Ljava/lang/String; = "PullToRefresh"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
ldc "PullToRefresh"
new java/lang/StringBuilder
dup
ldc "You're using the deprecated "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " attr, please switch over to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method
