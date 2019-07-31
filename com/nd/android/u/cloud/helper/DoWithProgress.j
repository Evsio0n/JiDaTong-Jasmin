.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/DoWithProgress
.super java/lang/Object
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$1
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$2
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$3

.field public static final 'MSG_SYNCH_FINISH' I = 257


.field public static final 'MSG_SYNCH_PROGRESS' I = 258


.field protected 'isCancel' Z

.field protected 'mContext' Landroid/content/Context;

.field protected 'mErrorMsg' Ljava/lang/StringBuffer;

.field protected 'mWaitMessage' Ljava/lang/String;

.field protected 'messageHandler' Landroid/os/Handler;

.field protected 'progressDialog' Landroid/app/ProgressDialog;

.field protected 'thread' Ljava/lang/Thread;

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
aload 0
aload 1
iload 2
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/helper/DoWithProgress/mWaitMessage Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doInit()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;IZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
iload 3
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
aload 0
aload 1
iload 2
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/helper/DoWithProgress/mWaitMessage Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doInit()V
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
aload 2
putfield com/nd/android/u/cloud/helper/DoWithProgress/mWaitMessage Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doInit()V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
iload 3
putfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
aload 0
aload 2
putfield com/nd/android/u/cloud/helper/DoWithProgress/mWaitMessage Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doInit()V
return
.limit locals 4
.limit stack 2
.end method

.method public Execute()V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mWaitMessage Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
new com/nd/android/u/cloud/helper/DoWithProgress$2
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/DoWithProgress$2/<init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
putfield com/nd/android/u/cloud/helper/DoWithProgress/messageHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/cloud/helper/DoWithProgress$3
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/DoWithProgress$3/<init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
putfield com/nd/android/u/cloud/helper/DoWithProgress/thread Ljava/lang/Thread;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/thread Ljava/lang/Thread;
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 4
.end method

.method public doFail(I)V
iload 1
ldc_w 2131493349
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
invokestatic com/nd/android/u/cloud/helper/PubFunction/ShowSettingNetWork(Landroid/content/Context;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mErrorMsg Ljava/lang/StringBuffer;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mErrorMsg Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/length()I
ifle L2
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mErrorMsg Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
iload 1
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method

.method public doInit()V
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/mContext Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/isCancel Z
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
new com/nd/android/u/cloud/helper/DoWithProgress$1
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/DoWithProgress$1/<init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
invokevirtual android/app/ProgressDialog/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public doProcedure()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public doSuccess()V
return
.limit locals 1
.limit stack 0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method
