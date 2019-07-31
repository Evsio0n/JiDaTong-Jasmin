.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/CommonLoadingDialog
.super android/app/AlertDialog

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/AlertDialog/<init>(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/AlertDialog/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/schoollife/R$layout/common_loading_dialog_layout I
invokevirtual com/nd/schoollife/ui/common/view/CommonLoadingDialog/setContentView(I)V
return
.limit locals 2
.limit stack 2
.end method
