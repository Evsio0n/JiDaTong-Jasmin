.bytecode 50.0
.class final synchronized com/nd/android/u/cloud/helper/Utils$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/helper/Utils/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
.inner class static final inner com/nd/android/u/cloud/helper/Utils$2

.field final synthetic 'val$listener' Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;

.method <init>(Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/Utils$2/val$listener Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/cloud/helper/Utils$2/val$listener Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/helper/Utils$2/val$listener Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;
aload 1
iload 2
invokeinterface com/nd/android/u/cloud/helper/Utils$DoDialogListener/onPositiveClick(Landroid/content/DialogInterface;I)V 2
L0:
return
.limit locals 3
.limit stack 3
.end method
