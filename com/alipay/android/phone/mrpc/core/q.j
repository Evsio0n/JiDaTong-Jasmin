.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/q
.super com/alipay/android/phone/mrpc/core/d

.field private 'g' Lcom/alipay/android/phone/mrpc/core/n;

.method public <init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
aload 0
aload 2
iload 3
aload 4
aload 5
ldc "application/x-www-form-urlencoded"
iload 6
invokespecial com/alipay/android/phone/mrpc/core/d/<init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/q/g Lcom/alipay/android/phone/mrpc/core/n;
return
.limit locals 7
.limit stack 7
.end method

.method public final a()Ljava/lang/Object;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/util/concurrent/ExecutionException from L0 to L1 using L3
.catch java/util/concurrent/CancellationException from L0 to L1 using L4
.catch java/lang/InterruptedException from L5 to L2 using L2
.catch java/util/concurrent/ExecutionException from L5 to L2 using L3
.catch java/util/concurrent/CancellationException from L5 to L2 using L4
.catch java/lang/InterruptedException from L6 to L7 using L2
.catch java/util/concurrent/ExecutionException from L6 to L7 using L3
.catch java/util/concurrent/CancellationException from L6 to L7 using L4
new com/alipay/android/phone/mrpc/core/v
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/q/g Lcom/alipay/android/phone/mrpc/core/n;
invokeinterface com/alipay/android/phone/mrpc/core/n/a()Ljava/lang/String; 0
invokespecial com/alipay/android/phone/mrpc/core/v/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 0
getfield com/alipay/android/phone/mrpc/core/q/b [B
putfield com/alipay/android/phone/mrpc/core/v/b [B
aload 2
aload 0
getfield com/alipay/android/phone/mrpc/core/q/e Ljava/lang/String;
putfield com/alipay/android/phone/mrpc/core/v/c Ljava/lang/String;
aload 2
aload 0
getfield com/alipay/android/phone/mrpc/core/q/f Z
putfield com/alipay/android/phone/mrpc/core/v/e Z
aload 2
ldc "id"
aload 0
getfield com/alipay/android/phone/mrpc/core/q/d I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/alipay/android/phone/mrpc/core/v/a(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "operationType"
aload 0
getfield com/alipay/android/phone/mrpc/core/q/c Ljava/lang/String;
invokevirtual com/alipay/android/phone/mrpc/core/v/a(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "gzip"
aload 0
getfield com/alipay/android/phone/mrpc/core/q/g Lcom/alipay/android/phone/mrpc/core/n;
invokeinterface com/alipay/android/phone/mrpc/core/n/d()Z 0
invokestatic java/lang/String/valueOf(Z)Ljava/lang/String;
invokevirtual com/alipay/android/phone/mrpc/core/v/a(Ljava/lang/String;Ljava/lang/String;)V
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "uuid"
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual com/alipay/android/phone/mrpc/core/v/a(Lorg/apache/http/Header;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/q/g Lcom/alipay/android/phone/mrpc/core/n;
invokeinterface com/alipay/android/phone/mrpc/core/n/c()Lcom/alipay/android/phone/mrpc/core/e; 0
getfield com/alipay/android/phone/mrpc/core/e/b Ljava/util/List;
astore 3
aload 3
ifnull L8
aload 3
invokeinterface java/util/List/isEmpty()Z 0
ifne L8
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast org/apache/http/Header
invokevirtual com/alipay/android/phone/mrpc/core/v/a(Lorg/apache/http/Header;)V
goto L9
L8:
new java/lang/StringBuilder
dup
ldc "threadid = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "; "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/v/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/q/g Lcom/alipay/android/phone/mrpc/core/n;
invokeinterface com/alipay/android/phone/mrpc/core/n/b()Lcom/alipay/android/phone/mrpc/core/f; 0
aload 2
invokeinterface com/alipay/android/phone/mrpc/core/f/a(Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/util/concurrent/Future; 1
invokeinterface java/util/concurrent/Future/get()Ljava/lang/Object; 0
checkcast com/alipay/android/phone/mrpc/core/ab
astore 2
L1:
aload 2
ifnonnull L6
L5:
new com/alipay/android/phone/mrpc/core/c
dup
bipush 9
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "response is null"
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;)V
athrow
L2:
astore 2
new com/alipay/android/phone/mrpc/core/c
dup
bipush 13
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc ""
aload 2
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/ab/a()[B
astore 2
L7:
aload 2
areturn
L3:
astore 2
aload 2
invokevirtual java/util/concurrent/ExecutionException/getCause()Ljava/lang/Throwable;
astore 3
aload 3
ifnull L10
aload 3
instanceof com/alipay/android/phone/mrpc/core/a
ifeq L10
aload 3
checkcast com/alipay/android/phone/mrpc/core/a
astore 2
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/a/a()I
istore 1
iload 1
tableswitch 1
L11
L12
L13
L14
L15
L16
L17
L18
L19
default : L20
L20:
new com/alipay/android/phone/mrpc/core/c
dup
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/a/b()Ljava/lang/String;
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;)V
athrow
L13:
iconst_4
istore 1
goto L20
L16:
bipush 7
istore 1
goto L20
L17:
bipush 8
istore 1
goto L20
L15:
bipush 6
istore 1
goto L20
L14:
iconst_5
istore 1
goto L20
L12:
iconst_3
istore 1
goto L20
L11:
iconst_2
istore 1
goto L20
L19:
bipush 16
istore 1
goto L20
L18:
bipush 15
istore 1
goto L20
L10:
new com/alipay/android/phone/mrpc/core/c
dup
bipush 9
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc ""
aload 2
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 2
new com/alipay/android/phone/mrpc/core/c
dup
bipush 13
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc ""
aload 2
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 5
.end method
