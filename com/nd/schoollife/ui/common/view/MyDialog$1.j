.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/view/MyDialog$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/common/view/MyDialog/setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.inner class inner com/nd/schoollife/ui/common/view/MyDialog$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/view/MyDialog;

.field final synthetic 'val$positiveEvent' Landroid/content/DialogInterface$OnClickListener;

.method <init>(Lcom/nd/schoollife/ui/common/view/MyDialog;Landroid/content/DialogInterface$OnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/MyDialog$1/this$0 Lcom/nd/schoollife/ui/common/view/MyDialog;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/view/MyDialog$1/val$positiveEvent Landroid/content/DialogInterface$OnClickListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog$1/val$positiveEvent Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog$1/this$0 Lcom/nd/schoollife/ui/common/view/MyDialog;
iconst_m1
invokeinterface android/content/DialogInterface$OnClickListener/onClick(Landroid/content/DialogInterface;I)V 2
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog$1/this$0 Lcom/nd/schoollife/ui/common/view/MyDialog;
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/dismiss()V
return
.limit locals 2
.limit stack 3
.end method
