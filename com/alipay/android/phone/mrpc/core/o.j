.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/o
.super com/alipay/android/phone/mrpc/core/ad

.field 'a' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/android/phone/mrpc/core/ad/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/o/a Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private static synthetic a(Lcom/alipay/android/phone/mrpc/core/o;)Landroid/content/Context;
aload 0
getfield com/alipay/android/phone/mrpc/core/o/a Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lcom/alipay/android/phone/mrpc/core/e;)TT;"
new com/alipay/android/phone/mrpc/core/ae
dup
new com/alipay/android/phone/mrpc/core/p
dup
aload 0
aload 2
invokespecial com/alipay/android/phone/mrpc/core/p/<init>(Lcom/alipay/android/phone/mrpc/core/o;Lcom/alipay/android/phone/mrpc/core/e;)V
invokespecial com/alipay/android/phone/mrpc/core/ae/<init>(Lcom/alipay/android/phone/mrpc/core/n;)V
astore 3
aload 1
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 2
new com/alipay/android/phone/mrpc/core/af
dup
aload 3
getfield com/alipay/android/phone/mrpc/core/ae/a Lcom/alipay/android/phone/mrpc/core/n;
aload 1
aload 3
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
.limit stack 6
.end method
