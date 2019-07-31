.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/c
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Ljava/lang/String;

.field final synthetic 'b' Lcom/alipay/sdk/auth/AuthActivity;

.method <init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/c/b Lcom/alipay/sdk/auth/AuthActivity;
aload 0
aload 2
putfield com/alipay/sdk/auth/c/a Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/auth/c/b Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/h(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/c/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 4
.end method
