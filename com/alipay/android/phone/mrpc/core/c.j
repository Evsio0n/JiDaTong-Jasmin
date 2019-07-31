.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/c
.super java/lang/RuntimeException

.field private static final 'a' J = -2875437994101380406L


.field private 'b' Ljava/lang/String;

.field private 'c' I

.field private 'd' Ljava/lang/String;

.method public <init>(Ljava/lang/Integer;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokestatic com/alipay/android/phone/mrpc/core/c/a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield com/alipay/android/phone/mrpc/core/c/c I
aload 0
aload 2
putfield com/alipay/android/phone/mrpc/core/c/d Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
invokestatic com/alipay/android/phone/mrpc/core/c/a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
aload 3
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield com/alipay/android/phone/mrpc/core/c/c I
aload 0
aload 2
putfield com/alipay/android/phone/mrpc/core/c/d Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method private <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
aload 0
aload 2
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield com/alipay/android/phone/mrpc/core/c/c I
return
.limit locals 3
.limit stack 2
.end method

.method private <init>(Ljava/lang/String;)V
aload 0
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/alipay/android/phone/mrpc/core/c/c I
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/c/d Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private a()Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/c/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "RPCException: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
ifnull L0
aload 2
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 2
ldc " : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ifnull L1
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method private b()I
aload 0
getfield com/alipay/android/phone/mrpc/core/c/c I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/c/d Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/c/b Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
