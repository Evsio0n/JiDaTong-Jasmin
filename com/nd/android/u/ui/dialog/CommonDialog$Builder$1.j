.bytecode 50.0
.class synchronized com/nd/android/u/ui/dialog/CommonDialog$Builder$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/dialog/CommonDialog$Builder/create()Lcom/nd/android/u/ui/dialog/CommonDialog;
.inner class public static Builder inner com/nd/android/u/ui/dialog/CommonDialog$Builder outer com/nd/android/u/ui/dialog/CommonDialog
.inner class inner com/nd/android/u/ui/dialog/CommonDialog$Builder$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;

.field final synthetic 'val$dialog' Lcom/nd/android/u/ui/dialog/CommonDialog;

.field final synthetic 'val$dialogLeftBtnClickListener' Landroid/content/DialogInterface$OnClickListener;

.method <init>(Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;Landroid/content/DialogInterface$OnClickListener;Lcom/nd/android/u/ui/dialog/CommonDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/this$0 Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/val$dialogLeftBtnClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
aload 3
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/val$dialog Lcom/nd/android/u/ui/dialog/CommonDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/val$dialogLeftBtnClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/val$dialog Lcom/nd/android/u/ui/dialog/CommonDialog;
iconst_m1
invokeinterface android/content/DialogInterface$OnClickListener/onClick(Landroid/content/DialogInterface;I)V 2
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder$1/val$dialog Lcom/nd/android/u/ui/dialog/CommonDialog;
invokevirtual com/nd/android/u/ui/dialog/CommonDialog/dismiss()V
return
.limit locals 2
.limit stack 3
.end method
