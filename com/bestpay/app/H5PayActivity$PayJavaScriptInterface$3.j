.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/app/H5PayActivity$PayJavaScriptInterface/cancel()V
.inner class public PayJavaScriptInterface inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3

.field final synthetic 'this$1' Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

.method <init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
invokevirtual com/bestpay/app/H5PayActivity/finish()V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
iconst_1
invokevirtual android/webkit/WebView/clearCache(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/clearHistory()V
return
.limit locals 3
.limit stack 2
.end method
