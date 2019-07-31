.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/XYDismissGroupDailog2
.super com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1

.field public static final 'FEEDBACK_WAITTIME' I = 15000


.field private static final 'MESSAGE_WHAT' I = 1


.field public 'mGenKey' Ljava/lang/String;

.field private 'mGroup' Lcom/product/android/commonInterface/contact/OapGroup;

.field public 'mGroupOpdialog' Landroid/app/ProgressDialog;

.field public 'mGroupOpmessage' Ljava/lang/String;

.field private 'mOptType' I

.field protected 'mhandler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
aload 0
ldc ""
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/<init>(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;)V
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mhandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
aload 0
ldc ""
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/<init>(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;)V
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mhandler Landroid/os/Handler;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
iload 3
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
iload 3
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/following I
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setTitle(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_dismiss_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
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
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setValue(Ljava/lang/String;)V
L1:
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc com/nd/android/u/contact/activity/base/GroupOpActivity$Params
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/initEvent()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$string/exit_group I
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setTitle(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_quit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpmessage Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
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
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setValue(Ljava/lang/String;)V
goto L1
.limit locals 4
.limit stack 4
.end method

.method protected final dismissDialog()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
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
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_fail I
istore 1
L1:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
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
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_success I
istore 1
L1:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
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
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_clickable_left I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L3:
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mOptType I
ifne L4
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandDimssGroup(J)Ljava/lang/String;
astore 1
L5:
aload 1
ifnull L6
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/setGenKey(Ljava/lang/String;)V
return
L4:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandQuitGroup(IJ)Ljava/lang/String;
astore 1
goto L5
L6:
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/dismissDialog()V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_clickable_right I
if_icmpne L2
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/dismiss()V
return
.limit locals 2
.limit stack 4
.end method

.method public final onEventMainThread(Lcom/nd/android/u/contact/activity/base/GroupOpActivity$Params;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 1
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$Params/iRet I
ifne L2
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/groupOpMsgSuccess()V
L1:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/groupOpMsgFail()V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected final startGroupOp()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mhandler Landroid/os/Handler;
iconst_1
ldc2_w 15000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
