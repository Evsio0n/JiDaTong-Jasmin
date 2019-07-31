.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/CopyTextDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1
.inner class inner com/nd/android/u/cloud/ui/dialog/CopyTextDialog$2
.inner class inner com/nd/android/u/cloud/ui/dialog/CopyTextDialog$3

.field final 'TAG' Ljava/lang/String;

.field 'bnOnClicked' Landroid/view/View$OnClickListener;

.field private 'cm' Landroid/text/ClipboardManager;

.field private 'context' Landroid/content/Context;

.field private 'copy_layout' Landroid/widget/LinearLayout;

.field private 'msgtxt' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc "SelectMessageTypeDialog"
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/<init>(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)V
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/bnOnClicked Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/msgtxt Ljava/lang/String;
aload 0
ldc_w 2131493529
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/setListener()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Landroid/text/ClipboardManager;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/cm Landroid/text/ClipboardManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/cm Landroid/text/ClipboardManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/msgtxt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView()Landroid/view/View;
aload 0
ldc_w 2131493529
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903273
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
ldc_w 2131625128
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/copy_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/copy_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/bnOnClicked Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public setListener()V
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493371
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/ui/dialog/CopyTextDialog$2
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/CopyTextDialog$2/<init>(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492869
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/ui/dialog/CopyTextDialog$3
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/CopyTextDialog$3/<init>(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
