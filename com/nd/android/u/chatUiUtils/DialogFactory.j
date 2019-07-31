.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/DialogFactory
.super java/lang/Object
.inner class static final inner com/nd/android/u/chatUiUtils/DialogFactory$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
aload 0
iload 1
aload 2
aload 3
aload 0
getstatic com/nd/android/u/chat/R$string/confirm I
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
aload 0
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
aload 4
aload 5
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
.limit locals 6
.limit stack 8
.end method

.method public static getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
new com/nd/android/u/ui/dialog/CommonDialog$Builder
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
iload 1
iconst_m1
if_icmpeq L0
aload 0
iload 1
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setIcon(I)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
pop
L0:
aload 0
aload 2
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setTitle(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 3
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setMessage(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 4
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setContentView(Landroid/view/View;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 5
aload 7
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
pop
aload 8
ifnull L1
aload 0
aload 6
aload 8
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
pop
L2:
aload 0
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/create()Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
L1:
aload 0
aload 6
new com/nd/android/u/chatUiUtils/DialogFactory$1
dup
invokespecial com/nd/android/u/chatUiUtils/DialogFactory$1/<init>()V
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
pop
goto L2
.limit locals 9
.limit stack 4
.end method

.method public static getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
aload 0
iload 1
aload 2
aload 3
aconst_null
aload 4
aload 5
aload 6
aload 7
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
.limit locals 8
.limit stack 9
.end method

.method public static getAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
aload 0
aload 1
aload 2
aload 3
aconst_null
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
.limit locals 4
.limit stack 5
.end method

.method public static getAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
aload 0
iconst_m1
aload 1
aload 2
aload 3
aload 4
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
.limit locals 5
.limit stack 6
.end method

.method public static getAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/nd/android/u/ui/dialog/CommonDialog;
iload 4
ifeq L0
new com/nd/android/u/ui/dialog/CommonDialog$Builder
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 1
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setTitle(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 2
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setMessage(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
getstatic com/nd/android/u/chat/R$string/confirm I
aload 3
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/ui/dialog/CommonDialog$Builder/create()Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
L0:
aload 0
aload 1
aload 2
aload 3
aconst_null
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
areturn
.limit locals 5
.limit stack 5
.end method
