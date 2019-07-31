.bytecode 50.0
.class final synchronized com/alipay/sdk/app/c
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/webkit/SslErrorHandler;

.field final synthetic 'b' Lcom/alipay/sdk/app/b;

.method <init>(Lcom/alipay/sdk/app/b;Landroid/webkit/SslErrorHandler;)V
aload 0
aload 1
putfield com/alipay/sdk/app/c/b Lcom/alipay/sdk/app/b;
aload 0
aload 2
putfield com/alipay/sdk/app/c/a Landroid/webkit/SslErrorHandler;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/alipay/sdk/app/c/b Lcom/alipay/sdk/app/b;
invokestatic com/alipay/sdk/app/b/a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
ldc "\u5b89\u5168\u8b66\u544a"
ldc "\u5b89\u5168\u8fde\u63a5\u8bc1\u4e66\u6821\u9a8c\u65e0\u6548\uff0c\u5c06\u65e0\u6cd5\u4fdd\u8bc1\u8bbf\u95ee\u6570\u636e\u7684\u5b89\u5168\u6027\uff0c\u53ef\u80fd\u5b58\u5728\u98ce\u9669\uff0c\u8bf7\u9009\u62e9\u662f\u5426\u7ee7\u7eed\uff1f"
ldc "\u7ee7\u7eed"
new com/alipay/sdk/app/d
dup
aload 0
invokespecial com/alipay/sdk/app/d/<init>(Lcom/alipay/sdk/app/c;)V
ldc "\u9000\u51fa"
new com/alipay/sdk/app/e
dup
aload 0
invokespecial com/alipay/sdk/app/e/<init>(Lcom/alipay/sdk/app/c;)V
invokestatic com/alipay/sdk/widget/d/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
pop
return
.limit locals 1
.limit stack 9
.end method
