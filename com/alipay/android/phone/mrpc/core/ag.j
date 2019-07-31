.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/ag
.super java/lang/Object

.field private static final 'a' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"

.field private static final 'b' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"

.field private 'c' B

.field private 'd' Ljava/util/concurrent/atomic/AtomicInteger;

.field private 'e' Lcom/alipay/android/phone/mrpc/core/ae;

.method static <clinit>()V
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alipay/android/phone/mrpc/core/ag/a Ljava/lang/ThreadLocal;
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alipay/android/phone/mrpc/core/ag/b Ljava/lang/ThreadLocal;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/alipay/android/phone/mrpc/core/ae;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alipay/android/phone/mrpc/core/ag/c B
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/ag/e Lcom/alipay/android/phone/mrpc/core/ae;
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>()V
putfield com/alipay/android/phone/mrpc/core/ag/d Ljava/util/concurrent/atomic/AtomicInteger;
return
.limit locals 2
.limit stack 3
.end method

.method public final a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.signature "(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"
.catch com/alipay/android/phone/mrpc/core/c from L0 to L1 using L2
.catch com/alipay/android/phone/mrpc/core/c from L1 to L3 using L2
iconst_1
istore 4
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
ifnull L4
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L4
iconst_1
istore 3
L5:
iload 3
ifeq L6
new java/lang/IllegalThreadStateException
dup
ldc "can't in main thread call rpc ."
invokespecial java/lang/IllegalThreadStateException/<init>(Ljava/lang/String;)V
athrow
L4:
iconst_0
istore 3
goto L5
L6:
aload 1
ldc com/alipay/mobile/framework/service/annotation/a
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alipay/mobile/framework/service/annotation/a
astore 6
aload 1
ldc com/alipay/mobile/framework/service/annotation/b
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
ifnull L7
L8:
aload 1
invokevirtual java/lang/reflect/Method/getGenericReturnType()Ljava/lang/reflect/Type;
astore 5
aload 1
invokevirtual java/lang/reflect/Method/getAnnotations()[Ljava/lang/annotation/Annotation;
pop
getstatic com/alipay/android/phone/mrpc/core/ag/a Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
getstatic com/alipay/android/phone/mrpc/core/ag/b Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
aload 6
ifnonnull L9
new java/lang/IllegalStateException
dup
ldc "OperationType must be set."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L7:
iconst_0
istore 4
goto L8
L9:
aload 6
invokeinterface com/alipay/mobile/framework/service/annotation/a/a()Ljava/lang/String; 0
astore 6
aload 0
getfield com/alipay/android/phone/mrpc/core/ag/d Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/incrementAndGet()I
istore 3
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/ag/c B
ifne L3
new com/alipay/android/phone/mrpc/core/a/e
dup
iload 3
aload 6
aload 2
invokespecial com/alipay/android/phone/mrpc/core/a/e/<init>(ILjava/lang/String;Ljava/lang/Object;)V
astore 2
getstatic com/alipay/android/phone/mrpc/core/ag/b Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
ifnull L1
aload 2
getstatic com/alipay/android/phone/mrpc/core/ag/b Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
invokeinterface com/alipay/android/phone/mrpc/core/a/f/a(Ljava/lang/Object;)V 1
L1:
aload 2
invokeinterface com/alipay/android/phone/mrpc/core/a/f/a()[B 0
astore 2
new com/alipay/android/phone/mrpc/core/q
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/ag/e Lcom/alipay/android/phone/mrpc/core/ae;
getfield com/alipay/android/phone/mrpc/core/ae/a Lcom/alipay/android/phone/mrpc/core/n;
aload 1
iload 3
aload 6
aload 2
iload 4
invokespecial com/alipay/android/phone/mrpc/core/q/<init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
invokeinterface com/alipay/android/phone/mrpc/core/ac/a()Ljava/lang/Object; 0
checkcast [B
astore 1
getstatic com/alipay/android/phone/mrpc/core/ag/b Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
new com/alipay/android/phone/mrpc/core/a/d
dup
aload 5
aload 1
invokespecial com/alipay/android/phone/mrpc/core/a/d/<init>(Ljava/lang/reflect/Type;[B)V
invokeinterface com/alipay/android/phone/mrpc/core/a/c/a()Ljava/lang/Object; 0
astore 1
aload 5
getstatic java/lang/Void/TYPE Ljava/lang/Class;
if_acmpeq L3
getstatic com/alipay/android/phone/mrpc/core/ag/a Ljava/lang/ThreadLocal;
aload 1
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L3:
getstatic com/alipay/android/phone/mrpc/core/ag/a Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
areturn
L2:
astore 1
aload 1
aload 6
invokevirtual com/alipay/android/phone/mrpc/core/c/a(Ljava/lang/String;)V
aload 1
athrow
.limit locals 7
.limit stack 8
.end method
