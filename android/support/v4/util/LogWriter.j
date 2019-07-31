.bytecode 50.0
.class public synchronized android/support/v4/util/LogWriter
.super java/io/Writer

.field private 'mBuilder' Ljava/lang/StringBuilder;

.field private final 'mTag' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/io/Writer/<init>()V
aload 0
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
putfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
aload 0
aload 1
putfield android/support/v4/util/LogWriter/mTag Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method private flushBuilder()V
aload 0
getfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/length()I
ifle L0
aload 0
getfield android/support/v4/util/LogWriter/mTag Ljava/lang/String;
aload 0
getfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
iconst_0
aload 0
getfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public close()V
aload 0
invokespecial android/support/v4/util/LogWriter/flushBuilder()V
return
.limit locals 1
.limit stack 1
.end method

.method public flush()V
aload 0
invokespecial android/support/v4/util/LogWriter/flushBuilder()V
return
.limit locals 1
.limit stack 1
.end method

.method public write([CII)V
iconst_0
istore 5
L0:
iload 5
iload 3
if_icmpge L1
aload 1
iload 2
iload 5
iadd
caload
istore 4
iload 4
bipush 10
if_icmpne L2
aload 0
invokespecial android/support/v4/util/LogWriter/flushBuilder()V
L3:
iload 5
iconst_1
iadd
istore 5
goto L0
L2:
aload 0
getfield android/support/v4/util/LogWriter/mBuilder Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L3
L1:
return
.limit locals 6
.limit stack 3
.end method
