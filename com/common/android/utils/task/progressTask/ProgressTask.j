.bytecode 50.0
.class public synchronized abstract com/common/android/utils/task/progressTask/ProgressTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/Integer;>;"
.inner class inner com/common/android/utils/task/progressTask/ProgressTask$1
.inner class public static abstract interface IProgressDialogIteration inner com/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration outer com/common/android/utils/task/progressTask/ProgressTask

.field protected 'mContext' Landroid/content/Context;

.field protected 'mErrorMsg' Ljava/lang/StringBuilder;

.field private 'mIsCanCancel' Z

.field protected 'mPd' Landroid/app/ProgressDialog;

.field protected 'progressDialogIteration' Lcom/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration;

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
iconst_1
putfield com/common/android/utils/task/progressTask/ProgressTask/mIsCanCancel Z
aload 0
aload 1
putfield com/common/android/utils/task/progressTask/ProgressTask/mContext Landroid/content/Context;
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mContext Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
new com/common/android/utils/task/progressTask/ProgressTask$1
dup
aload 0
invokespecial com/common/android/utils/task/progressTask/ProgressTask$1/<init>(Lcom/common/android/utils/task/progressTask/ProgressTask;)V
invokevirtual android/app/ProgressDialog/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/common/android/utils/task/progressTask/ProgressTask/mErrorMsg Ljava/lang/StringBuilder;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/task/progressTask/ProgressTask;)Z
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mIsCanCancel Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/task/progressTask/ProgressTask;)V
aload 0
invokespecial com/common/android/utils/task/progressTask/ProgressTask/cancelTask()V
return
.limit locals 1
.limit stack 1
.end method

.method private cancelTask()V
aload 0
iconst_1
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/cancel(Z)Z
pop
aload 0
invokespecial com/common/android/utils/task/progressTask/ProgressTask/dismiss()V
return
.limit locals 1
.limit stack 2
.end method

.method private dismiss()V
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/progressDialogIteration Lcom/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration;
ifnull L0
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/progressDialogIteration Lcom/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration;
invokeinterface com/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration/onDismiss()V 0
L1:
return
L0:
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L1
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method protected doFail(I)V
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/length()I
ifgt L0
aload 0
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mContext Landroid/content/Context;
iload 1
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/showToast(Landroid/content/Context;I)V
return
L0:
aload 0
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mContext Landroid/content/Context;
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/showToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected abstract doSuccess()V
.end method

.method protected onCancelled()V
aload 0
invokespecial android/os/AsyncTask/onCancelled()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/isCancelled()Z
ifne L5
aload 0
invokespecial com/common/android/utils/task/progressTask/ProgressTask/dismiss()V
aload 1
invokevirtual java/lang/Integer/intValue()I
ifne L3
aload 0
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/doSuccess()V
L1:
return
L3:
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/doFail(I)V
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L5:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/progressDialogIteration Lcom/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration;
ifnull L0
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/progressDialogIteration Lcom/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration;
invokeinterface com/common/android/utils/task/progressTask/ProgressTask$IProgressDialogIteration/onShow()V 0
return
L0:
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask/mPd Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 1
.limit stack 1
.end method

.method public setIsCanCancel(Z)V
aload 0
iload 1
putfield com/common/android/utils/task/progressTask/ProgressTask/mIsCanCancel Z
return
.limit locals 2
.limit stack 2
.end method

.method public showToast(Landroid/content/Context;I)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
aload 1
aload 2
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 3
.limit stack 3
.end method
