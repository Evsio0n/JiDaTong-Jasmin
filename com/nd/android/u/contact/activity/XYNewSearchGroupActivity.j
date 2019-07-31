.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYNewSearchGroupActivity
.super android/support/v4/app/FragmentActivity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.implements android/widget/AbsListView$OnScrollListener
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3
.inner class private SearcdGroupTask inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$SearcdGroupTask outer com/nd/android/u/contact/activity/XYNewSearchGroupActivity

.field public static final 'FIRST_VIEW' I = 0


.field public static final 'SECOND_VIEW' I = 1


.field public static 'fm' Landroid/support/v4/app/FragmentManager;

.field private final 'PAGESIZE' I

.field private 'adapter' Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;

.field private 'endIndex' I

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'gid' Ljava/lang/String;

.field private 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field 'handler' Landroid/os/Handler;

.field private 'key' Ljava/lang/String;

.field private 'lastPostion' I

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'mApplyJoin' Landroid/widget/Button;

.field private 'mBack' Landroid/widget/Button;

.field private 'mCancel' Landroid/widget/Button;

.field private 'mCurrentTabId' I

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mMenuLayout' Landroid/widget/LinearLayout;

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private 'mResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'mResultListView' Landroid/widget/ListView;

.field private 'mReview' Landroid/widget/Button;

.field protected 'mScreenWidth' I

.field private 'mSearcdGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearcdGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mSearchGroupLayout' Landroid/widget/LinearLayout;

.field private 'mSearchGroupadapter' Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'obs' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;

.field public 'pager' Lcom/common/android/ui/widget/CompatibleViewPager;

.field private 'searchByNum' Landroid/widget/TextView;

.field private 'searchBykey' Landroid/widget/TextView;

.field 'show' Z

.field private 'start' I

.field private 'tabImgView' Landroid/widget/ImageView;

.field private 'titles' [Ljava/lang/String;

.field private 'total' I

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/titles [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/lastPostion I
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/start I
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/total I
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/show Z
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/key Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/gid Ljava/lang/String;
aload 0
bipush 15
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/PAGESIZE I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
aload 0
new com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
aload 0
new com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/<init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/<init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/start I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1202(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/start I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1902(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)[Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/titles [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mCurrentTabId I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabChange(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/key Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/gid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/gid Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private backKeyEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getVisibility()I
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/search_group I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultList Ljava/util/List;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/notifyDataSetChanged()V
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchBykey Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchByNum Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mApplyJoin Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mReview Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mCancel Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initTab()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchByNum Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ii_category_selector I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabImgView Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bottom_arrow I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
istore 1
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/titles [Ljava/lang/String;
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
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabImgView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
return
.limit locals 3
.limit stack 3
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
new com/nd/android/u/contact/dialog/CustomLoadingDialog
dup
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_search_result I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dialog/CustomLoadingDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 6
.end method

.method private onSearchFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
new com/nd/android/u/contact/dialog/SearchGroupResultDialog
dup
aload 0
getstatic com/nd/android/u/contact/R$style/MyDialog I
aload 0
getstatic com/nd/android/u/contact/R$string/group_search_no_result_title I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
aload 1
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
invokevirtual android/app/Dialog/show()V
return
.limit locals 2
.limit stack 6
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/onSearchFailure(Ljava/lang/String;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/CurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/cleanSubEditText(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getVisibility()I
ifeq L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/searchresult I
invokevirtual android/widget/TextView/setText(I)V
goto L2
.limit locals 1
.limit stack 3
.end method

.method private tabChange(I)V
new android/view/animation/TranslateAnimation
dup
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/lastPostion I
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
imul
iconst_2
idiv
i2f
getstatic com/nd/android/util/ContactConst/WIN_WIDTH I
iload 1
imul
iconst_2
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
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabImgView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/lastPostion I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchByNum Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchBykey Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchByNum Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchBykey Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 6
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ll_search_group I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_result_user_list I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mResultListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ll_itme_click_menu I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_apply_join_group I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mApplyJoin Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_review_group_info I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mReview Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_chage_img_cancel I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_search_by_number I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchByNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_search_by_key I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchBykey Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mBack Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_title I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/search_group I
invokevirtual android/widget/TextView/setText(I)V
aload 0
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_follow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/school I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/titles [Ljava/lang/String;
aload 0
new com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter
dup
getstatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/fm Landroid/support/v4/app/FragmentManager;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/handler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/titles [Ljava/lang/String;
invokespecial com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/<init>(Landroid/support/v4/app/FragmentManager;Landroid/os/Handler;[Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/initTab()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/pager I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/nd/android/u/contact/R$id/indicator I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 1
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/handler Landroid/os/Handler;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setmHandler(Landroid/os/Handler;)V
aload 1
iconst_0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setCurrentItem(I)V
return
.limit locals 2
.limit stack 6
.end method

.method protected initData()V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mScreenWidth I
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
putstatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/fm Landroid/support/v4/app/FragmentManager;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ifnull L0
L0:
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/backKeyEvent()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_search_by_number I
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_0
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabChange(I)V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_search_by_key I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_1
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/tabChange(I)V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_chage_img_cancel I
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_apply_join_group I
if_icmpne L5
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
iconst_0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 1
aload 1
ifnull L6
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
lcmp
ifne L7
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/already_in_group I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
ifne L8
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L8:
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
if_icmpne L9
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L10:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getstatic com/nd/android/u/contact/R$string/option_fail I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L11:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aconst_null
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandAddGroupRequest(JLjava/lang/String;)V
return
L9:
iconst_2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
if_icmpne L1
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/the_group_not_allow_anyone I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L5:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_review_group_info I
if_icmpne L12
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/GroupManagerActivity2
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L12:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/ll_itme_click_menu I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 3
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_new_search_group I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/setContentView(I)V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/widthPixels I
putstatic com/nd/android/util/ContactConst/WIN_WIDTH I
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/initData()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V 1
L2:
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
iload 3
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mMenuLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 6
.limit stack 3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity/backKeyEvent()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/support/v4/app/FragmentActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 2
iload 3
iadd
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/endIndex I
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/endIndex I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/getCount()I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/start I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/total I
if_icmpge L0
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/show Z
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L0:
return
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchGroup()V
return
.limit locals 3
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onStart()V
aload 0
getstatic com/nd/android/u/contact/R$string/search_group I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/setTitle(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public searchGroup()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/XYNewSearchGroupActivity$SearcdGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/XYNewSearchGroupActivity$SearcdGroupTask/<init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity$1;)V
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
