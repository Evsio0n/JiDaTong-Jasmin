.bytecode 50.0
.class final synchronized com/flurry/android/f
.super java/lang/Object

.field final 'a' B

.field final 'b' J

.method <init>(BJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/flurry/android/f/a B
aload 0
lload 2
putfield com/flurry/android/f/b J
return
.limit locals 4
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/f/b J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "] "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/f/a B
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
