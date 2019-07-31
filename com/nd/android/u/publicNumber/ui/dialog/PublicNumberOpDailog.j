.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1

.field public static final 'FEEDBACK_WAITTIME' I = 18000


.field private static final 'MESSAGE_WHAT' I = 1


.field public static final 'OPTTYPEFOLLOW' I = 1


.field public static final 'OPTTYPEUNFOLLOW' I = 0


.field private 'mConfirmDialog' Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;

.field private 'mContext' Landroid/content/Context;

.field public 'mGenKey' Ljava/lang/String;

.field public 'mGroupOpdialog' Landroid/app/ProgressDialog;

.field private 'mOptType' I

.field private 'mPspId' Ljava/lang/String;

.field private 'mTipMsg' Ljava/lang/String;

.field private 'mhandler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mOptType I
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGenKey Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mTipMsg Ljava/lang/String;
aload 0
new com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/<init>(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)V
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mhandler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
aload 0
iload 4
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mOptType I
iload 4
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/waiting I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/confirm_unfollow I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mTipMsg Ljava/lang/String;
L1:
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
aload 1
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/adding_psp I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L1
.limit locals 5
.limit stack 7
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mOptType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private dobussiness()V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
getstatic com/nd/android/u/chat/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
return
L0:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L2
getstatic com/nd/android/u/chat/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mOptType I
ifne L3
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
astore 1
aload 1
ifnull L1
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 2
aload 2
ifnull L1
aload 2
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
iconst_4
if_icmpne L4
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumber(Ljava/lang/String;)V
getstatic com/nd/android/u/chat/R$string/unfollow_success I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L4:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/startGroupOp()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
ldc "UNFOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
bipush 40
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/pspUnsubscribe(Ljava/lang/String;I)V
L5:
aload 1
ifnull L6
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/setGenKey(Ljava/lang/String;)V
return
L3:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/startGroupOp()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
ldc "FOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mPspId Ljava/lang/String;
bipush 40
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/pspSubscribe(Ljava/lang/String;I)V
goto L5
L6:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/dismissDialog()V
return
.limit locals 3
.limit stack 2
.end method

.method private final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private startGroupOp()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mhandler Landroid/os/Handler;
iconst_1
ldc2_w 18000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public dismissDialog()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public followOption()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/dobussiness()V
return
.limit locals 1
.limit stack 1
.end method

.method public getOptType()I
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mOptType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/chat/R$id/tv_clickable_left I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/dobussiness()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/dismiss()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/chat/R$id/tv_clickable_right I
if_icmpne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/dismiss()V
return
.limit locals 2
.limit stack 2
.end method

.method public removeMessage()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public show()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/isShow()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/dismiss()V
L0:
aload 0
new com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokespecial com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
getstatic com/nd/android/u/chat/R$string/tip I
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/setTitle(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mTipMsg Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/setValue(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/yes_i_want_to_unfollow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mConfirmDialog Lcom/nd/android/u/publicNumber/ui/dialog/ConfirmDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/no_let_me_think I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/dialog/ConfirmDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method
