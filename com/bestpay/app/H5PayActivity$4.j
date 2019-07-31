.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$4
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/app/H5PayActivity/goback()V
.inner class inner com/bestpay/app/H5PayActivity$4

.field final synthetic 'this$0' Lcom/bestpay/app/H5PayActivity;

.method <init>(Lcom/bestpay/app/H5PayActivity;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "result"
ldc "\u53d6\u6d88\u652f\u4ed8"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
iconst_0
aload 1
invokevirtual com/bestpay/app/H5PayActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
invokevirtual com/bestpay/app/H5PayActivity/finish()V
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
iconst_1
invokevirtual android/webkit/WebView/clearCache(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/clearHistory()V
return
L0:
aload 0
getfield com/bestpay/app/H5PayActivity$4/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$6(Lcom/bestpay/app/H5PayActivity;)V
return
.limit locals 3
.limit stack 3
.end method
