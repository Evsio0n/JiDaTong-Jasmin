.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SelectGiftUserActivity
.super android/support/v4/app/FragmentActivity
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.implements android/view/View$OnClickListener
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.inner class inner com/nd/android/u/contact/activity/SelectGiftUserActivity$1
.inner class inner com/nd/android/u/contact/activity/SelectGiftUserActivity$2
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask outer com/nd/android/u/contact/activity/SelectGiftUserActivity

.field private static final 'maxListSize' I = 500


.field private static final 'maxSize' I = 20


.field protected 'adapter' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;

.field protected 'canLoadHeader' Z

.field private 'count' I

.field protected 'filter' Ljava/lang/String;

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'getMoreflag' Z

.field private 'isloading' Z

.field private 'key' Ljava/lang/String;

.field private 'lvSearch' Landroid/widget/ListView;

.field private 'mBackpackHasSend' Z

.field protected 'mIsBackpackSendflower' Z

.field private 'mLeftBtn' Landroid/widget/ImageView;

.field private 'mOrgFragment' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.field private 'mSearchBarWidget' Lcom/product/android/ui/widget/SearchBarWidget;

.field private 'mSearchResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'mXYSearchBarWidget' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'member' Landroid/widget/LinearLayout;

.field protected 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'pageNo' I

.field private final 'pos' I

.field private 'searchAdapter' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;

.field private 'total' I

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/count I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/isloading Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pos I
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/filter Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/canLoadHeader Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mIsBackpackSendflower Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mBackpackHasSend Z
aload 0
new com/nd/android/u/contact/activity/SelectGiftUserActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectGiftUserActivity$1/<init>(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)V
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/SelectGiftUserActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectGiftUserActivity$2/<init>(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)V
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreflag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/isloading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/isloading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$208(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pageNo I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private searchUser(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreflag Z
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)V
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public final canToLoadHeader()Z
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/canLoadHeader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public doSearch(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreflag Z
ifeq L0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pageNo I
iconst_1
iadd
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 1
L1:
aload 1
ifnull L2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 3
aload 3
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L5
aload 3
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L3
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask/setTempTotal(I)V
aload 2
astore 1
goto L1
L5:
aload 3
aload 3
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/NdWeiboManagerCheckUidIsMyFolling(J)Z
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
return
.limit locals 4
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_left I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mLeftBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/search_contact I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/member I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/member Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
getstatic com/nd/android/u/contact/R$id/fragment_org I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/contact/ui/fragment/OrganizationFragment
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mOrgFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mOrgFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
iconst_1
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setBackpack(Z)V
aload 0
new com/nd/android/u/contact/adapter/SearchFriendAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mIsBackpackSendflower Z
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/<init>(Landroid/content/Context;Ljava/util/List;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mXYSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mXYSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
L1:
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreView Landroid/widget/LinearLayout;
return
L0:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/SearchBarWidget
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/SearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;)V
goto L1
.limit locals 1
.limit stack 7
.end method

.method protected final initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mLeftBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public moreSearchContact()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/isloading Z
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/SelectGiftUserActivity/searchUser(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/finish()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 1
ldc "backpack_sendflower"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "backpack_sendflower"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mIsBackpackSendflower Z
L1:
aload 1
ldc "itemid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
ldc "itemid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
L2:
aload 1
ldc "sendCount"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
ldc "sendCount"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
L0:
iconst_0
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setSearchDept(Z)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_search_contact_member I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/setContentView(I)V
L4:
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/initEvent()V
return
L3:
aload 0
getstatic com/nd/android/u/contact/R$layout/search_contact_member I
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/setContentView(I)V
goto L4
.limit locals 2
.limit stack 3
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
lconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/clearFlowerBackPackMap()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 3
.end method

.method public onSearchCancel()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/member Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/key Ljava/lang/String;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/onSearchCancel()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/pageNo I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/SelectGiftUserActivity/searchUser(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public final selectedUserFid(JLjava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mBackpackHasSend Z
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 4
aload 3
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 0
aload 4
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toBackpackSendFlower(Landroid/app/Activity;Lcom/product/android/commonInterface/contact/OapUserSimple;JI)V
return
.limit locals 5
.limit stack 5
.end method

.method public showListView()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/lvSearch Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/mSearchResultList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity/member Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
