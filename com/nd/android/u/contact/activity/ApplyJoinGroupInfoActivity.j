.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1
.inner class inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2
.inner class private mSendApplyTask inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask outer com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity

.field private 'mApplyJoinGroupInfo' Landroid/widget/EditText;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mGroup' Lcom/product/android/commonInterface/contact/OapGroup;

.field private 'mInputCount' Landroid/widget/TextView;

.field private 'mIvSend' Landroid/widget/ImageView;

.field private 'mSendApplyTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSendApplyTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTitleText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
new com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/<init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mInputCount Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mApplyJoinGroupInfo Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
new com/nd/android/u/contact/dialog/CustomLoadingDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CustomLoadingDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onSearchFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/send_message_fail I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lconst_0
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
iconst_m1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/finish()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/send_message_success I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mTitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_send_apply I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mIvSend Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/et_apply_group_info I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mApplyJoinGroupInfo Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_input_count I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mInputCount Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/confirm_info I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mIvSend Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mIvSend Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mApplyJoinGroupInfo Landroid/widget/EditText;
new com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1/<init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/finish()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_send_apply I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/sendApplyInfo()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/apply_join_group_info I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getIntent()Landroid/content/Intent;
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "group"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapGroup
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method public sendApplyInfo()V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask/<init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1;)V
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/mSendApplyTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
