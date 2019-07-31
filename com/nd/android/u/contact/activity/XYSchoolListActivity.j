.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYSchoolListActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.inner class inner com/nd/android/u/contact/activity/XYSchoolListActivity$1
.inner class inner com/nd/android/u/contact/activity/XYSchoolListActivity$2
.inner class inner com/nd/android/u/contact/activity/XYSchoolListActivity$3
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask outer com/nd/android/u/contact/activity/XYSchoolListActivity

.field public static 'fm' Landroid/support/v4/app/FragmentManager;

.field private static final 'maxListSize' I = 500


.field private static final 'maxSize' I = 20


.field private 'canLoadHeader' Z

.field private 'fragment' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'getMoreflag' Z

.field private 'isloading' Z

.field private 'key' Ljava/lang/String;

.field private 'lvSearch' Landroid/widget/ListView;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mMask' Landroid/view/View;

.field private 'mOrganizationOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;

.field private 'mRoot' Landroid/widget/LinearLayout;

.field private 'mSearchBarWidget' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'middleContent' Landroid/widget/RelativeLayout;

.field private 'middleView' I

.field private 'noResult' Landroid/widget/TextView;

.field protected 'no_data_list_foot_layout' Landroid/widget/LinearLayout;

.field protected 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'pageNo' I

.field private final 'pos' I

.field private 'searchAdapter' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/pos I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/isloading Z
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/canLoadHeader Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchResultList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/fragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
new com/nd/android/u/contact/activity/XYSchoolListActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity$2/<init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
aload 0
new com/nd/android/u/contact/activity/XYSchoolListActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity$3/<init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/canLoadHeader Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/middleContent Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/noResult Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/isloading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/isloading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreflag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$608(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/pageNo I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private searchUser(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreflag Z
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public canToLoadHeader()Z
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/canLoadHeader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public doSearch(Lcom/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreflag Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mOrganizationOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/pageNo I
iconst_1
iadd
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/searchUserByDB(IILjava/lang/String;)Ljava/util/List; 3
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
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mOrganizationOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
iconst_0
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/searchUserByDB(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mOrganizationOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/GetSearchUserCount(Ljava/lang/String;)I 1
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask/setTempTotal(I)V
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
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchResultList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
return
.limit locals 4
.limit stack 4
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ll_actvity_root I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mRoot Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/middle_content I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/middleContent Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/school I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_my_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_transparent I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_user_list_foot_layout I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_search_result I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/noResult Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method protected final initComponentValue()V
getstatic com/nd/android/u/contact/activity/XYSchoolListActivity/fm Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mTitleText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
checkcast java/lang/String
astore 2
iconst_0
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setSearchDept(Z)V
aload 0
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/newInstance()Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/fragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 1
getstatic com/nd/android/u/contact/R$id/middle_content I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/fragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
aload 0
new com/nd/android/u/contact/adapter/FriendSelectAdapter
dup
aload 0
iconst_0
aconst_null
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/<init>(Landroid/content/Context;ZLandroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/mOrganizationOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
return
.limit locals 3
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
new com/nd/android/u/contact/activity/XYSchoolListActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity$1/<init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public moreSearchContact()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/isloading Z
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity/searchUser(Z)V
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
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/finish()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_school I
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
putstatic com/nd/android/u/contact/activity/XYSchoolListActivity/fm Landroid/support/v4/app/FragmentManager;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGlobalLayout()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getRootView()Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
isub
invokestatic java/lang/Math/abs(I)I
bipush 100
if_icmple L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
invokevirtual android/widget/ListView/getVisibility()I
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/middleContent Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/key Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/onSearchCancel()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/pageNo I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSchoolListActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/XYSchoolListActivity/searchUser(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public selectedUserFid(JLjava/lang/String;)V
return
.limit locals 4
.limit stack 0
.end method

.method public showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/lvSearch Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mMask Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/mSearchResultList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/setSearchList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/middleContent Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
