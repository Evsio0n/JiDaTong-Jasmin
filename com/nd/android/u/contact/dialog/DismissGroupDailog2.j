.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/DismissGroupDailog2
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/contact/dialog/DismissGroupDailog2$1
.inner class inner com/nd/android/u/contact/dialog/DismissGroupDailog2$2
.inner class inner com/nd/android/u/contact/dialog/DismissGroupDailog2$3

.field public static final 'FEEDBACK_WAITTIME' I = 15000


.field private static final 'MESSAGE_WHAT' I = 1


.field private 'mContext' Landroid/content/Context;

.field public 'mGenKey' Ljava/lang/String;

.field private 'mGroup' Lcom/product/android/commonInterface/contact/OapGroup;

.field public 'mGroupOpdialog' Landroid/app/ProgressDialog;

.field public 'mGroupOpmessage' Ljava/lang/String;

.field private 'mOptType' I

.field protected 'mhandler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
aload 0
ldc ""
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/DismissGroupDailog2$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog2$1/<init>(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)V
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mhandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
aload 0
ldc ""
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/DismissGroupDailog2$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog2$1/<init>(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)V
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mhandler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
iload 3
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
iload 3
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/dissolution_group I
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_dismiss_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/sure_dissolution_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\"."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
L1:
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc com/nd/android/u/contact/activity/base/GroupOpActivity$Params
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/initEvent()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$string/exit_group I
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_quit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/sure_exit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\"."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
goto L1
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)I
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final dismissDialog()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected final groupOpMsgFail()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_fail I
istore 1
L1:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
getstatic com/nd/android/u/contact/R$string/exit_group_fail I
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected final groupOpMsgSuccess()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_success I
istore 1
L1:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
getstatic com/nd/android/u/contact/R$string/exit_group_success I
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public final initEvent()V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/DismissGroupDailog2$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog2$2/<init>(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)V
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/DismissGroupDailog2$3
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog2$3/<init>(Lcom/nd/android/u/contact/dialog/DismissGroupDailog2;)V
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public final onEventMainThread(Lcom/nd/android/u/contact/activity/base/GroupOpActivity$Params;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 1
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$Params/iRet I
ifne L2
aload 0
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/groupOpMsgSuccess()V
L1:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog2/groupOpMsgFail()V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected final startGroupOp()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog2/mhandler Landroid/os/Handler;
iconst_1
ldc2_w 15000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
