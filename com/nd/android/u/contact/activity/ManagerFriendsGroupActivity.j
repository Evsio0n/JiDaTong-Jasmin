.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$4
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$5
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$6
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7
.inner class private AddFriendGroupTask inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$AddFriendGroupTask outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class private DeleteFriendGroupTask inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2
.inner class static ViewHolder inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity

.field private 'adapter' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;

.field private 'currentEditPosition' I

.field private 'deleteFriendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'friendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Integer;>;"

.field private 'mAddFriendGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFriendGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mDeleteFlag' Z

.field private 'mDeleteFriendGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mDeleteFriendGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mFriendGroupName' Ljava/lang/String;

.field private 'mIvAddFriendsGroup' Landroid/widget/ImageView;

.field private 'mIvEditFriendGroup' Landroid/widget/ImageView;

.field private 'mLvFriendsManager' Landroid/widget/ListView;

.field private 'mRlAddFriendGroup' Landroid/widget/RelativeLayout;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'positionList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Integer;>;"

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mFriendGroupName Ljava/lang/String;
aload 0
iconst_m1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
aload 0
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$6/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/onDeleteSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/onAddSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/onAddFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mFriendGroupName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mFriendGroupName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$510(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
istore 1
aload 0
iload 1
iconst_1
isub
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getCurDataIsChange(I)V
iload 1
ifle L0
iload 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/EditText
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friend_group_name_is_null I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 2
aload 3
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
aload 3
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 5
.limit stack 3
.end method

.method private getCurDataIsEmpty(I)Z
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/EditText
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private onAddFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
aload 1
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onAddSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/notifyDataSetChanged()V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131075
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
new com/nd/android/u/contact/dialog/CustomLoadingDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CustomLoadingDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onDeleteSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131075
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public addFriendGroup()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$AddFriendGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$AddFriendGroupTask/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public deleteFriendGroup()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mTitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_header_search_more I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvEditFriendGroup Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lv_friends_manager I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_add_friends_group I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvAddFriendsGroup Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/rl_add_friend_group I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mTitleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/friends_group_manager I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvEditFriendGroup Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvEditFriendGroup Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_header_edit_tag_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
ifnonnull L1
aload 0
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1;)V
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mLvFriendsManager Landroid/widget/ListView;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/notifyDataSetChanged()V
goto L2
.limit locals 1
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvEditFriendGroup Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvAddFriendsGroup Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
if_icmpne L0
bipush 8
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
if_icmpne L1
aload 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getCurDataIsEmpty(I)Z
ifne L2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getCurDataIsChange(I)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L2
L3:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L2
L4:
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
L5:
return
L2:
new com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/dialog_groupmanager_back_title I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setTitle(I)V
aload 1
getstatic com/nd/android/u/contact/R$string/dialog_groupmanager_back_content I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setValue(I)V
aload 1
aload 0
getstatic com/nd/android/u/contact/R$string/dialog_groupmanager_back_leftbtn I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
getstatic com/nd/android/u/contact/R$string/dialog_groupmanager_back_rightbtn I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$4/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_header_search_more I
if_icmpne L6
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L7
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mIvEditFriendGroup Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_header_determine_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFlag Z
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/adapter Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L7:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getCurDataIsEmpty(I)Z
ifne L8
aload 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/currentEditPosition I
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getCurDataIsChange(I)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
ifnull L9
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/positionList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L10
L9:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
ifnull L11
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L10
L11:
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
return
L10:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L12:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L13
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
goto L12
L13:
aload 1
invokeinterface java/util/Set/size()I 0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L14
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friend_group_is_exist I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
return
L14:
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/deleteFriendGroup()V
return
L8:
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friend_group_name_is_null I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/finish()V
return
L6:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/iv_add_friends_group I
if_icmpeq L15
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_add_friend_group I
if_icmpne L5
L15:
new com/nd/android/u/contact/dialog/AddFriendGroupDialog
dup
aload 0
getstatic com/nd/android/u/contact/R$style/MyDialog I
invokespecial com/nd/android/u/contact/dialog/AddFriendGroupDialog/<init>(Landroid/content/Context;I)V
astore 1
aload 1
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/show()V
aload 1
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$5
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$5/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
return
.limit locals 3
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/friends_group_manager I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mDeleteFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
.limit locals 1
.limit stack 2
.end method
