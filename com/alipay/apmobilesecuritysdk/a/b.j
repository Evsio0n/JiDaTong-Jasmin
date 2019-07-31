.bytecode 50.0
.class final synchronized com/alipay/apmobilesecuritysdk/a/b
.super java/lang/Thread

.field final synthetic 'a' Ljava/lang/String;

.field final synthetic 'b' Ljava/lang/String;

.field final synthetic 'c' Ljava/lang/String;

.field final synthetic 'd' Lcom/alipay/apmobilesecuritysdk/a/a;

.method <init>(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/a/b/d Lcom/alipay/apmobilesecuritysdk/a/a;
aload 0
aload 2
putfield com/alipay/apmobilesecuritysdk/a/b/a Ljava/lang/String;
aload 0
aload 3
putfield com/alipay/apmobilesecuritysdk/a/b/b Ljava/lang/String;
aload 0
aload 4
putfield com/alipay/apmobilesecuritysdk/a/b/c Ljava/lang/String;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/alipay/apmobilesecuritysdk/a/b/d Lcom/alipay/apmobilesecuritysdk/a/a;
aload 0
getfield com/alipay/apmobilesecuritysdk/a/b/a Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/a/b/b Ljava/lang/String;
aload 0
getfield com/alipay/apmobilesecuritysdk/a/b/c Ljava/lang/String;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method
