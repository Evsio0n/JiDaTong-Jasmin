.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$4
.inner class private AddFriendFollowTask inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity
.inner class private AddFriendGroupTask inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity
.inner class static ViewHolder inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity

.field public static final 'ADD_FRIEND_CONCERN' I = 1


.field public static final 'FRIEND_MANAGER_REQUEST_CODE' I = 1


.field private 'adapter' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;

.field private 'friendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'isFromChat' Z

.field private 'mAddFriendFollowTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFriendFollowTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mAddFriendGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFriendGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mFriendGroupName' Ljava/lang/String;

.field private 'mIvAddFriendsGroup' Landroid/widget/ImageView;

.field private 'mIvConcernFriend' Landroid/widget/ImageView;

.field private 'mLvFriendsManager' Landroid/widget/ListView;

.field private 'mRlAddFriendGroup' Landroid/widget/RelativeLayout;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'newFriendUid' J

.field private 'selectPosition' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mFriendGroupName Ljava/lang/String;
aload 0
ldc2_w -1L
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/newFriendUid J
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/isFromChat Z
aload 0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$4/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/selectPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/selectPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onAddFriendFollowFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1202(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;J)J
aload 0
lload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/newFriendUid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/adapter Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mFriendGroupName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mFriendGroupName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/friendGroupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onAddSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onAddFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onAddFriendFollowSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method private onAddFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
aload 1
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onAddFriendFollowFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_follow_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method private onAddFriendFollowSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/newFriendUid J
ldc2_w -1L
lcmp
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/newFriendUid J
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/isFromChat Z
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/openNewFriendChatActivity(Landroid/content/Context;JZ)I
pop
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/finish()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_follow_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method

.method private onAddSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/adapter Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/notifyDataSetChanged()V
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
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method public addFriendFollow()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public addFriendGroup()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/adapter Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mTitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_header_search_more I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvConcernFriend Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lv_friends_manager I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mLvFriendsManager Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_add_friends_group I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvAddFriendsGroup Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/rl_add_friend_group I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mTitleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/friends_group_manager I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvConcernFriend Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvConcernFriend Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_header_determine_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/friendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/friendGroupList Ljava/util/List;
aload 0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/adapter Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mLvFriendsManager Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/adapter Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mLvFriendsManager Landroid/widget/ListView;
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvConcernFriend Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mIvAddFriendsGroup Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mRlAddFriendGroup Landroid/widget/RelativeLayout;
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
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/finish()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_header_search_more I
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/selectPosition I
iflt L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/selectPosition I
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/addFriendFollow()V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/iv_add_friends_group I
if_icmpeq L3
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_add_friend_group I
if_icmpne L1
L3:
new com/nd/android/u/contact/dialog/AddFriendGroupDialog
dup
aload 0
getstatic com/nd/android/u/contact/R$style/MyDialog I
invokespecial com/nd/android/u/contact/dialog/AddFriendGroupDialog/<init>(Landroid/content/Context;I)V
astore 1
aload 1
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/show()V
aload 1
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "isFromChat"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "isFromChat"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/isFromChat Z
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/friends_group_manager I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity/mAddFriendFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
.limit locals 1
.limit stack 2
.end method
