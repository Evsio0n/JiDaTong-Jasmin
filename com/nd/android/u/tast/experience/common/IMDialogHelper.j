.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/experience/common/IMDialogHelper
.super java/lang/Object
.inner class static final inner com/nd/android/u/tast/experience/common/IMDialogHelper$1
.inner class static final inner com/nd/android/u/tast/experience/common/IMDialogHelper$2

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static toLotActivityDialog(Landroid/content/Context;Ljava/lang/String;)V
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
invokevirtual com/nd/android/u/tast/TaskGlobalVariable/isLottery()Z
ifne L0
aload 0
getstatic com/nd/android/u/tasklib/R$string/no_lotter_tip I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 1
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/nd/android/u/tasklib/R$string/btn_lottery_submit I
new com/nd/android/u/tast/experience/common/IMDialogHelper$1
dup
aload 0
invokespecial com/nd/android/u/tast/experience/common/IMDialogHelper$1/<init>(Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/nd/android/u/tasklib/R$string/btn_lottery_cancel I
new com/nd/android/u/tast/experience/common/IMDialogHelper$2
dup
invokespecial com/nd/android/u/tast/experience/common/IMDialogHelper$2/<init>()V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 3
.limit stack 5
.end method
