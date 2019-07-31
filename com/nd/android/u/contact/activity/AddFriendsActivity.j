.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/AddFriendsActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$1
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$2
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$3
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$4
.inner class private ImageAdapter inner com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter outer com/nd/android/u/contact/activity/AddFriendsActivity
.inner class private SearchFriendTask inner com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask outer com/nd/android/u/contact/activity/AddFriendsActivity
.inner class static ViewHolder inner com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder outer com/nd/android/u/contact/activity/AddFriendsActivity

.field private static final 'FIFTH_POSITION' I = 4


.field private static final 'FIRST_POSITION' I = 0


.field private static final 'FOURTH_POSITION' I = 3


.field private static final 'MESSAGE_QUENE' I = 1


.field private static final 'SECOND_POSITION' I = 1


.field private static final 'THIRD_POSITION' I = 2


.field private static final 'ids' [I

.field private 'adapter' Lcom/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter;

.field private 'array' [Ljava/lang/String;

.field private 'handler' Landroid/os/Handler;

.field private 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mBtnSearch' Landroid/widget/Button;

.field private 'mBtnSearchClear' Landroid/widget/Button;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mEtSeachInput' Landroid/widget/EditText;

.field private 'mLvContentDisplay' Landroid/widget/ListView;

.field private 'mSearchFriendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mSearchResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.field private 'mSearchTextWatcher' Landroid/text/TextWatcher;

.method static <clinit>()V
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/contact/R$drawable/btn_search_around I
iastore
dup
iconst_1
getstatic com/nd/android/u/contact/R$drawable/btn_search_group I
iastore
dup
iconst_2
getstatic com/nd/android/u/contact/R$drawable/btn_create_group I
iastore
dup
iconst_3
getstatic com/nd/android/u/contact/R$drawable/btn_search_public I
iastore
dup
iconst_4
getstatic com/nd/android/u/contact/R$drawable/btn_search_condition I
iastore
putstatic com/nd/android/u/contact/activity/AddFriendsActivity/ids [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$array/add_friends I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/u/contact/activity/AddFriendsActivity/array [Ljava/lang/String;
aload 0
new com/nd/android/u/contact/activity/AddFriendsActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$2/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchTextWatcher Landroid/text/TextWatcher;
aload 0
new com/nd/android/u/contact/activity/AddFriendsActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$3/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/AddFriendsActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$4/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearchClear Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500()[I
getstatic com/nd/android/u/contact/activity/AddFriendsActivity/ids [I
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
new com/nd/android/u/contact/dialog/CustomLoadingDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CustomLoadingDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onSearchFailure(Ljava/lang/String;)V
new com/nd/android/u/contact/dialog/SearchGroupResultDialog
dup
aload 0
getstatic com/nd/android/u/contact/R$style/MyDialog I
aload 0
getstatic com/nd/android/u/contact/R$string/search_no_result_title I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
aload 0
getstatic com/nd/android/u/contact/R$string/search_no_result_content I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
invokevirtual android/app/Dialog/show()V
return
.limit locals 2
.limit stack 7
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpne L1
aload 0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
L1:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "friends"
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
checkcast java/io/Serializable
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/SearchFriendsResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/startActivity(Landroid/content/Intent;)V
return
L0:
new com/nd/android/u/contact/dialog/SearchGroupResultDialog
dup
aload 0
getstatic com/nd/android/u/contact/R$style/MyDialog I
aload 0
getstatic com/nd/android/u/contact/R$string/search_no_result_title I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
aload 0
getstatic com/nd/android/u/contact/R$string/search_no_result_content I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
invokevirtual android/app/Dialog/show()V
return
.limit locals 3
.limit stack 7
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_search_clear I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearchClear Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_search I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearch Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/et_search_input I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lv_content_display I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mLvContentDisplay Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/add_friends I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearch Landroid/widget/Button;
aload 0
getstatic com/nd/android/u/contact/R$string/search_btn I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
aload 0
getstatic com/nd/android/u/contact/R$string/search_input_notify_text I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
aload 0
new java/util/ArrayList
dup
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/array [Ljava/lang/String;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/list Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mLvContentDisplay Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchResultList Ljava/util/List;
return
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearchClear Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mBtnSearch Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchTextWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/adapter Lcom/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Lcom/nd/android/u/contact/activity/AddFriendsActivity$1;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/adapter Lcom/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mLvContentDisplay Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/adapter Lcom/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mLvContentDisplay Landroid/widget/ListView;
new com/nd/android/u/contact/activity/AddFriendsActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$1/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/adapter Lcom/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/notifyDataSetChanged()V
goto L1
.limit locals 1
.limit stack 5
.end method

.method public netSearchFriend()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Lcom/nd/android/u/contact/activity/AddFriendsActivity$1;)V
putfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_search_clear I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_search I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mEtSeachInput Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/search_friends_notify I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/handler Landroid/os/Handler;
aload 1
ldc2_w 10000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/netSearchFriend()V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/add_friends_list I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity/mSearchFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
return
.limit locals 1
.limit stack 2
.end method
