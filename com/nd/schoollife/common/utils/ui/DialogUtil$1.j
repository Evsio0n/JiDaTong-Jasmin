.bytecode 50.0
.class final synchronized com/nd/schoollife/common/utils/ui/DialogUtil$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/schoollife/common/utils/ui/DialogUtil/showAlertDialogWithoutBtnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.inner class static final inner com/nd/schoollife/common/utils/ui/DialogUtil$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
