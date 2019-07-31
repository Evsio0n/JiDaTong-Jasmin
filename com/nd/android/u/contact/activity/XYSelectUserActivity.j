.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYSelectUserActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.implements android/widget/PopupWindow$OnDismissListener
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.implements com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$1
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$2
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$3
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$4
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$5
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$6
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$7
.inner class private AddDiscussionMemberTask inner com/nd/android/u/contact/activity/XYSelectUserActivity$AddDiscussionMemberTask outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class private CreateDiscussionTask inner com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class public ImageAdapter inner com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class Holder inner com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class private MoreActionPopupWindow inner com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/XYSelectUserActivity$SearchUserTask outer com/nd/android/u/contact/activity/XYSelectUserActivity

.field public static final 'FIRST_INTENT_TAG' Ljava/lang/String; = "first"

.field public static final 'FIRST_VIEW' I = 0


.field public static final 'FOUR_VIEW' I = 3


.field public static final 'SECOND_INTENT_TAG' Ljava/lang/String; = "second"

.field public static final 'SECOND_VIEW' I = 1


.field public static final 'THIRD_VIEW' I = 2


.field public static 'fm' Landroid/support/v4/app/FragmentManager;

.field private static final 'maxListSize' I = 500


.field private static final 'maxSize' I = 20


.field private 'adapter' Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;

.field protected 'addDiscussionMemberTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'addDiscussionMemberTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'canLoadHeader' Z

.field protected 'createDiscussionTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'createDiscussionTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field 'dismissListener' Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;

.field private 'finishBtn' Landroid/widget/Button;

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'getMoreflag' Z

.field protected 'gid' J

.field private 'gridView' Landroid/widget/GridView;

.field 'handler' Landroid/os/Handler;

.field private 'imageAdatper' Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;

.field private 'isAddClubMember' Z

.field protected 'isCreate' Z

.field private 'isloading' Z

.field private 'key' Ljava/lang/String;

.field private 'lastPostion' I

.field private 'lvSearch' Landroid/widget/ListView;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mCurrentTabId' I

.field private 'mFriend' Landroid/widget/TextView;

.field private 'mGroup' Landroid/widget/TextView;

.field private 'mIsTalk' Z

.field private 'mMask' Landroid/view/View;

.field private 'mMoreMenu' Landroid/widget/ImageView;

.field private 'mPhotoWall' Landroid/widget/ImageView;

.field private 'mPsp' Landroid/widget/TextView;

.field private 'mRoot' Landroid/widget/LinearLayout;

.field private 'mSchool' Landroid/widget/TextView;

.field protected 'mScreenWidth' I

.field private 'mSearchBarWidget' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTitle' Landroid/widget/RelativeLayout;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field protected 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'pageNo' I

.field public 'pager' Lcom/common/android/ui/widget/CompatibleViewPager;

.field private final 'pos' I

.field private 'searchAdapter' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;

.field private 'selected_tab' I

.field private 'tabImgView' Landroid/widget/ImageView;

.field private 'titles' [Ljava/lang/String;

.field private 'total' I

.field private 'vMember' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/lastPostion I
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isCreate Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pos I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isloading Z
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/canLoadHeader Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchResultList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/selected_tab I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$1/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$3/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/dismissListener Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$4/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$5/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$6/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$7
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$7/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mCurrentTabId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mCurrentTabId I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreflag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/isloading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1202(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isloading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1308(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pageNo I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1802(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/canLoadHeader Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/tabChange(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addDiscussionMember()V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/finish()V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
return
L2:
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$AddDiscussionMemberTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$AddDiscussionMemberTask/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Lcom/nd/android/u/contact/activity/XYSelectUserActivity$1;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private createDiscussion()V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L0
aload 0
bipush -99
aload 1
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/finish()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/showGroupName()V
return
.limit locals 2
.limit stack 4
.end method

.method private getGroupName()Ljava/lang/String;
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 2
new java/text/SimpleDateFormat
dup
ldc "MMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/someone_discussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
aload 2
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionOapGroups()Lcom/nd/android/u/contact/dataStructure/OapGroups;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 3
astore 2
aload 4
invokeinterface java/util/List/size()I 0
ifle L0
iconst_0
istore 1
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
aload 3
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 3
astore 2
iload 1
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method private initTab()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ii_category_selector I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/tabImgView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bottom_arrow I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
istore 1
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
arraylength
idiv
iload 1
isub
iconst_2
idiv
istore 1
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 2
aload 2
iload 1
i2f
fconst_0
invokevirtual android/graphics/Matrix/setTranslate(FF)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/tabImgView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
return
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bottom_arrow I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
istore 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bottom_line I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
iconst_2
idiv
iload 1
iconst_2
imul
iconst_3
idiv
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/tabImgView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/my_friend I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 3
.limit stack 4
.end method

.method private searchUser(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreflag Z
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private showGroupName()V
aload 0
getstatic com/nd/android/u/contact/R$string/personal_discussion I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getString(I)Ljava/lang/String;
astore 1
new com/nd/android/u/contact/dialog/InputDismissNameDialog
dup
aload 0
iconst_2
aload 1
aload 1
ldc ""
getstatic com/nd/android/u/contact/R$style/Style_Self_Info_Dlg I
invokespecial com/nd/android/u/contact/dialog/InputDismissNameDialog/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/dismissListener Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/setOnAfterDismissListener(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;)V
aload 1
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/show()V
return
.limit locals 2
.limit stack 8
.end method

.method private tabChange(I)V
new android/view/animation/TranslateAnimation
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lastPostion I
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
imul
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
arraylength
idiv
i2f
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
iload 1
imul
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
arraylength
idiv
i2f
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 2
aload 2
ldc2_w 100L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 2
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/tabImgView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/lastPostion I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSchool Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mGroup Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPsp Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
iload 1
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSchool Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mGroup Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPsp Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 6
.end method

.method public canToLoadHeader()Z
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/canLoadHeader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20075
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
L0:
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public doSearch(Lcom/nd/android/u/contact/activity/XYSelectUserActivity$SearchUserTask;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreflag Z
ifeq L0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pageNo I
iconst_1
iadd
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/key Ljava/lang/String;
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
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/key Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$SearchUserTask/setTempTotal(I)V
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
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchResultList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
return
.limit locals 4
.limit stack 4
.end method

.method public handler_CMD_31()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mCurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_89()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refreshGroupList()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refreshGroupList()V
return
.limit locals 2
.limit stack 2
.end method

.method public handler_CMD_x20000()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_x20003()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_x20004()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_x20005()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/handler_CMD_x20005()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyFinish(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_photowall I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPhotoWall Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPhotoWall Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_more I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mTitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/Rl_title I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mTitle Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_friend I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_school I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSchool Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_group I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mGroup Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_psp I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPsp Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mFriend Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSchool Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mGroup Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPsp Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/product/android/business/config/Configuration/ISEXITPSP Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPhotoWall Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_my_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/member I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/vMember Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/vMember Landroid/view/View;
invokevirtual android/view/View/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_transparent I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMask Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ll_actvity_root I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mRoot Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
getstatic com/product/android/business/config/Configuration/ISEXITPSP Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifne L4
aload 0
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/school I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mGroup Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPsp Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
getstatic com/nd/android/u/contact/activity/XYSelectUserActivity/fm Landroid/support/v4/app/FragmentManager;
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifne L6
iconst_1
istore 1
L7:
aload 0
new com/nd/android/u/contact/adapter/ContactFragmentAdapter
dup
aload 2
iload 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
invokespecial com/nd/android/u/contact/adapter/ContactFragmentAdapter/<init>(Landroid/support/v4/app/FragmentManager;ZLandroid/os/Handler;[Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/initTab()V
L8:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifne L9
aload 0
new com/nd/android/u/contact/adapter/FriendSelectAdapter
dup
aload 0
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/<init>(Landroid/content/Context;ZLandroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getstatic com/nd/android/u/contact/R$id/layout I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/gallery I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/NestInListGridView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter
dup
aload 0
aload 0
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/setList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
L10:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/pager I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/nd/android/u/contact/R$id/indicator I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
astore 2
aload 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 2
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setonTabShowNewListener(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;)V
aload 2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setmHandler(Landroid/os/Handler;)V
aload 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/selected_tab I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setCurrentItem(I)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
bipush 13
iconst_m1
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/gallery I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/NestInListGridView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
new com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter
dup
aload 0
aload 0
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/setList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPhotoWall Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
L4:
aload 0
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/school I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_3
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/contact_psp_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
goto L5
L3:
aload 0
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/school I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/titles [Ljava/lang/String;
goto L5
L6:
iconst_0
istore 1
goto L7
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/organization I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 3
aload 0
new com/nd/android/u/contact/adapter/ContactFragmentAdapter
dup
getstatic com/nd/android/u/contact/activity/XYSelectUserActivity/fm Landroid/support/v4/app/FragmentManager;
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokespecial com/nd/android/u/contact/adapter/ContactFragmentAdapter/<init>(Landroid/support/v4/app/FragmentManager;ZLandroid/os/Handler;[Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
goto L8
L9:
aload 0
new com/nd/android/u/contact/adapter/FriendSelectAdapter
dup
aload 0
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/<init>(Landroid/content/Context;ZLandroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getstatic com/nd/android/u/contact/R$id/layout I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L10
.limit locals 4
.limit stack 10
.end method

.method protected initData()V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mScreenWidth I
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
putstatic com/nd/android/u/contact/activity/XYSelectUserActivity/fm Landroid/support/v4/app/FragmentManager;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getIntent()Landroid/content/Intent;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 3
aload 3
ifnull L0
aload 3
ldc "addmember"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isCreate Z
L1:
aload 3
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 3
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/gid J
L2:
aload 3
ldc "isAddClubMember"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 3
ldc "isAddClubMember"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isAddClubMember Z
L3:
aload 3
ldc "fid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 3
ldc "fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/init()V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/addUid(J)Z
pop
L4:
aload 3
ldc "selected_tab"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 3
ldc "selected_tab"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/selected_tab I
L5:
aload 3
ldc "is_talk"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 3
ldc "is_talk"
iconst_0
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
L0:
return
.limit locals 4
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mPhotoWall Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
new com/nd/android/u/contact/activity/XYSelectUserActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$2/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public moreSearchContact()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/isloading Z
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/searchUser(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/img I
if_icmpne L0
aload 1
getstatic com/nd/android/u/contact/R$id/face I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
ifnull L1
aload 1
getstatic com/nd/android/u/contact/R$id/face I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
L1:
return
L2:
lload 2
lconst_0
lcmp
ifeq L1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setFinishBtnText()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRIEND_LIST_REFRESH"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/isAddClubMember Z
ifeq L4
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "members"
aload 1
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 4
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 4
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/finish()V
return
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
aload 0
getstatic com/nd/android/u/contact/R$string/no_net_check_net I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/isCreate Z
ifeq L6
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussion()V
return
L6:
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMember()V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
if_icmpne L7
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/finish()V
return
L7:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_photowall I
if_icmpne L8
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/PhotoWallActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/startActivity(Landroid/content/Intent;)V
return
L8:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_more I
if_icmpne L9
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/AddFriendsActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/startActivity(Landroid/content/Intent;)V
return
L9:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_friend I
if_icmpne L10
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_0
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/tabChange(I)V
return
L10:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_school I
if_icmpne L11
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_1
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/tabChange(I)V
return
L11:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_group I
if_icmpne L12
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
iconst_2
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_2
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
iconst_2
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/tabChange(I)V
return
L12:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_psp I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
iconst_3
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_3
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
iconst_3
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/tabChange(I)V
return
.limit locals 6
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_select_member I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setContentView(I)V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/widthPixels I
putstatic com/nd/android/util/ContactConst/WIN_WIDTH I
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/initData()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyFinish(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L2:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/init()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
return
.limit locals 1
.limit stack 6
.end method

.method public onDismiss()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bt_header_more_menu_normal I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "SYNC_UNIT_SUCCESS"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyFinish(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
L2:
aload 1
ldc "SYNC_UNIT_FAIL"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyError(I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L4
aload 0
getstatic com/nd/android/u/contact/R$string/waiting_for_refresh I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
aload 0
getstatic com/nd/android/u/contact/R$string/sync_unitdata_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L3:
aload 1
ldc "GROUP_CHANGE"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public onGlobalLayout()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getRootView()Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mRoot Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
isub
invokestatic java/lang/Math/abs(I)I
bipush 100
if_icmple L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMask Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mMask Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/getCount()I
iconst_1
isub
if_icmpeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
iload 3
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/removePosition(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setFinishBtnText()V
L0:
return
.limit locals 6
.limit stack 3
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onResume()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mCurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_0
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/key Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/key Ljava/lang/String;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/setNetSearchKey(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/onSearchCancel()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/pageNo I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity/searchUser(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onStart()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/isAddClubMember Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/add_club_member I
invokevirtual android/widget/TextView/setText(I)V
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setFinishBtnText()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/tab_contacts I
invokevirtual android/widget/TextView/setText(I)V
goto L0
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/choose_contact I
invokevirtual android/widget/TextView/setText(I)V
goto L0
.limit locals 1
.limit stack 2
.end method

.method public selectedUserFid(JLjava/lang/String;)V
return
.limit locals 4
.limit stack 0
.end method

.method public setFinishBtnText()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifeq L0
return
L0:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
aload 0
getstatic com/nd/android/u/contact/R$string/finish I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/nd/android/u/contact/R$string/finish I
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/finishBtn Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mIsTalk Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/getCount()I
iconst_1
iadd
invokevirtual android/widget/GridView/setColumnWidth(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mScreenWidth I
bipush 6
idiv
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/getCount()I
iconst_1
iadd
imul
istore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/imageAdatper Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/getCount()I
iconst_1
iadd
invokevirtual android/widget/GridView/setNumColumns(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
invokevirtual android/widget/GridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
invokevirtual android/widget/GridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 2
aload 2
iload 1
putfield android/view/ViewGroup$LayoutParams/width I
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gridView Landroid/widget/GridView;
aload 2
invokevirtual android/widget/GridView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L2:
new android/view/ViewGroup$LayoutParams
dup
iload 1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 2
goto L3
.limit locals 3
.limit stack 4
.end method

.method public showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/lvSearch Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mSearchResultList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/setSearchList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/searchAdapter Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
bipush 8
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public showNew(I)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
