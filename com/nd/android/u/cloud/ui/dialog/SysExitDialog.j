.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/SysExitDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/cloud/ui/dialog/SysExitDialog$1
.inner class inner com/nd/android/u/cloud/ui/dialog/SysExitDialog$2

.field private 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc_w 2131493483
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
ldc_w 2131495305
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/SysExitDialog/context Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/setEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SysExitDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setEvent()V
aload 0
ldc_w 2131493765
new com/nd/android/u/cloud/ui/dialog/SysExitDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/SysExitDialog$1/<init>(Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
ldc_w 2131492884
new com/nd/android/u/cloud/ui/dialog/SysExitDialog$2
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/SysExitDialog$2/<init>(Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
