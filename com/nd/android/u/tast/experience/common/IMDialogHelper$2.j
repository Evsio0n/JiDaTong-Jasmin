.bytecode 50.0
.class final synchronized com/nd/android/u/tast/experience/common/IMDialogHelper$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/tast/experience/common/IMDialogHelper/toLotActivityDialog(Landroid/content/Context;Ljava/lang/String;)V
.inner class static final inner com/nd/android/u/tast/experience/common/IMDialogHelper$2

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
