.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$6
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/app/H5PayActivity/gobackpro()V
.inner class inner com/bestpay/app/H5PayActivity$6

.field final synthetic 'this$0' Lcom/bestpay/app/H5PayActivity;

.method <init>(Lcom/bestpay/app/H5PayActivity;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$6/this$0 Lcom/bestpay/app/H5PayActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/bestpay/app/H5PayActivity$6/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
iconst_1
invokevirtual android/webkit/WebView/clearCache(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity$6/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/clearHistory()V
return
.limit locals 3
.limit stack 2
.end method
