.bytecode 50.0
.class synchronized com/bestpay/ui/CustomDialog$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/bestpay/ui/CustomDialog/onCreate(Landroid/os/Bundle;)V
.inner class inner com/bestpay/ui/CustomDialog$2

.field final synthetic 'this$0' Lcom/bestpay/ui/CustomDialog;

.method <init>(Lcom/bestpay/ui/CustomDialog;)V
aload 0
aload 1
putfield com/bestpay/ui/CustomDialog$2/this$0 Lcom/bestpay/ui/CustomDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/bestpay/ui/CustomDialog$2/this$0 Lcom/bestpay/ui/CustomDialog;
getfield com/bestpay/ui/CustomDialog/mClickLister Lcom/bestpay/ui/CustomDialog$ClickListener;
invokeinterface com/bestpay/ui/CustomDialog$ClickListener/doCancel()V 0
return
.limit locals 2
.limit stack 1
.end method
