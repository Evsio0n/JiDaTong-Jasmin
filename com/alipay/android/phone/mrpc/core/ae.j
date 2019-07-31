.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/ae
.super java/lang/Object

.field 'a' Lcom/alipay/android/phone/mrpc/core/n;

.field 'b' Lcom/alipay/android/phone/mrpc/core/ag;

.method public <init>(Lcom/alipay/android/phone/mrpc/core/n;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/ae/a Lcom/alipay/android/phone/mrpc/core/n;
aload 0
new com/alipay/android/phone/mrpc/core/ag
dup
aload 0
invokespecial com/alipay/android/phone/mrpc/core/ag/<init>(Lcom/alipay/android/phone/mrpc/core/ae;)V
putfield com/alipay/android/phone/mrpc/core/ae/b Lcom/alipay/android/phone/mrpc/core/ag;
return
.limit locals 2
.limit stack 4
.end method

.method private a()Lcom/alipay/android/phone/mrpc/core/n;
aload 0
getfield com/alipay/android/phone/mrpc/core/ae/a Lcom/alipay/android/phone/mrpc/core/n;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
aload 1
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 2
new com/alipay/android/phone/mrpc/core/af
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/ae/a Lcom/alipay/android/phone/mrpc/core/n;
aload 1
aload 0
getfield com/alipay/android/phone/mrpc/core/ae/b Lcom/alipay/android/phone/mrpc/core/ag;
invokespecial com/alipay/android/phone/mrpc/core/af/<init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/ag;)V
astore 3
aload 2
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 1
aastore
aload 3
invokestatic java/lang/reflect/Proxy/newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 5
.end method
