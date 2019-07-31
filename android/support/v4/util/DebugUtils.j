.bytecode 50.0
.class public synchronized android/support/v4/util/DebugUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
aload 0
ifnonnull L0
aload 1
ldc "null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
return
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
astore 4
aload 4
ifnull L1
aload 4
astore 3
aload 4
invokevirtual java/lang/String/length()I
ifgt L2
L1:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 4
aload 4
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 2
aload 4
astore 3
iload 2
ifle L2
aload 4
iload 2
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
L2:
aload 1
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
bipush 123
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
return
.limit locals 5
.limit stack 3
.end method
