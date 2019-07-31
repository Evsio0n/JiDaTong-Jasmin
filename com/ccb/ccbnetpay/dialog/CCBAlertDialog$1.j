.bytecode 50.0
.class synchronized com/ccb/ccbnetpay/dialog/CCBAlertDialog$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/ccb/ccbnetpay/dialog/CCBAlertDialog/initLayout(Ljava/lang/String;)V
.inner class inner com/ccb/ccbnetpay/dialog/CCBAlertDialog$1

.field final synthetic 'this$0' Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;

.method <init>(Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;)V
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog$1/this$0 Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
ldc "tag"
ldc "onClick:\u70b9\u51fb\u786e\u5b9a"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog$1/this$0 Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/disDialog()V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog$1/this$0 Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
invokestatic com/ccb/ccbnetpay/dialog/CCBAlertDialog/access$0(Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 2
.limit stack 2
.end method
