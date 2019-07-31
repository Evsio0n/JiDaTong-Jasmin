.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/af
.super java/lang/Object
.implements java/lang/reflect/InvocationHandler

.field protected 'a' Lcom/alipay/android/phone/mrpc/core/n;

.field protected 'b' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field protected 'c' Lcom/alipay/android/phone/mrpc/core/ag;

.method public <init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/ag;)V
.signature "(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/Class<*>;Lcom/alipay/android/phone/mrpc/core/ag;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/af/a Lcom/alipay/android/phone/mrpc/core/n;
aload 0
aload 2
putfield com/alipay/android/phone/mrpc/core/af/b Ljava/lang/Class;
aload 0
aload 3
putfield com/alipay/android/phone/mrpc/core/af/c Lcom/alipay/android/phone/mrpc/core/ag;
return
.limit locals 4
.limit stack 2
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alipay/android/phone/mrpc/core/af/c Lcom/alipay/android/phone/mrpc/core/ag;
astore 1
aload 0
getfield com/alipay/android/phone/mrpc/core/af/b Ljava/lang/Class;
astore 4
aload 1
aload 2
aload 3
invokevirtual com/alipay/android/phone/mrpc/core/ag/a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 5
.limit stack 3
.end method
