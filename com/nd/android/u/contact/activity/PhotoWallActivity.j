.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PhotoWallActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener
.implements com/product/android/business/switchUser/TabUIRefresh
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$1
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$2
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$3
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$4
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$5
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$6
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7$1
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$8
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$8$1
.inner class private final DisplayNextView inner com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView outer com/nd/android/u/contact/activity/PhotoWallActivity
.inner class public GetNextPageTask inner com/nd/android/u/contact/activity/PhotoWallActivity$GetNextPageTask outer com/nd/android/u/contact/activity/PhotoWallActivity
.inner class public InitTask inner com/nd/android/u/contact/activity/PhotoWallActivity$InitTask outer com/nd/android/u/contact/activity/PhotoWallActivity
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask outer com/nd/android/u/contact/activity/PhotoWallActivity
.inner class private final SwapViews inner com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews outer com/nd/android/u/contact/activity/PhotoWallActivity

.field public static final 'DISPLAY_MODE_GRID' B = 1


.field public static final 'DISPLAY_MODE_WATERFALL' B = 0


.field public static final 'PARAM_NAME_PRE' Ljava/lang/String; = "strNamePre"

.field private 'TAG' Ljava/lang/String;

.field private 'autoCompleteAdapter' Lcom/nd/android/u/contact/adapter/AutoTextAdapter;

.field private 'bolSearchFlag' Z

.field private 'clearInputBtn' Landroid/widget/Button;

.field 'handler' Landroid/os/Handler;

.field private 'mAllUidList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field protected 'mBuilder' Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;

.field protected 'mContainer' Landroid/view/ViewGroup;

.field protected 'mDialog' Landroid/app/Dialog;

.field private 'mDisplayMode' B

.field private 'mFilterBtn' Landroid/widget/Button;

.field private 'mFilterSelectIv' Landroid/widget/ImageView;

.field public 'mGetNextPageListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'mGetNextPageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mHeaderBackBtn' Landroid/widget/ImageView;

.field private 'mHeaderLayout' Landroid/widget/RelativeLayout;

.field protected 'mInitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mInitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mInputSearchNameTv' Landroid/widget/AutoCompleteTextView;

.field private 'mOrganizationOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;

.field private 'mPhotoWallGridView' Lcom/product/android/ui/widget/PagingLoadListView;

.field private 'mPhotoWallListAdapter' Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;

.field private 'mPhotoWallListView' Lcom/product/android/ui/widget/PagingLoadListView;

.field private 'mRankNum' I

.field private 'mRankingListHeight' I

.field private 'mRankingListLayout' Lcom/nd/android/u/contact/view/RankingListRelativeLayout;

.field private 'mSearchBtn' Landroid/widget/Button;

.field private 'mSearchLayout' Landroid/widget/RelativeLayout;

.field private 'mSearchUidList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field protected 'mSearchUserTask' Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;

.field private 'searchCtlBtn' Landroid/widget/Button;

.field private 'textWatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankNum I
aload 0
ldc "PhotoWallActivity"
putfield com/nd/android/u/contact/activity/PhotoWallActivity/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$3/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$4/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$5/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$6/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/textWatcher Landroid/text/TextWatcher;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/slideRankListView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankNum I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/clearInputBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/PhotoWallActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/doSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1502(Lcom/nd/android/u/contact/activity/PhotoWallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/resetPhotoWallViewParams()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/contact/activity/PhotoWallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/controlHeaderShown()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)B
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/contact/activity/PhotoWallActivity;B)B
aload 0
iload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private applyRotation(IFF)V
new com/nd/android/u/contact/anim/Rotate3dAnimation
dup
fload 2
fload 3
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getWidth()I
i2f
fconst_2
fdiv
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getHeight()I
i2f
fconst_2
fdiv
ldc_w 310.0F
iconst_1
invokespecial com/nd/android/u/contact/anim/Rotate3dAnimation/<init>(FFFFFZ)V
astore 4
aload 4
ldc2_w 500L
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setDuration(J)V
aload 4
iconst_1
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setFillAfter(Z)V
aload 4
new android/view/animation/AccelerateInterpolator
dup
invokespecial android/view/animation/AccelerateInterpolator/<init>()V
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 4
new com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView
dup
aload 0
iload 1
aconst_null
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;ILcom/nd/android/u/contact/activity/PhotoWallActivity$1;)V
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
aload 4
invokevirtual android/view/ViewGroup/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 5
.limit stack 8
.end method

.method private controlHeaderShown()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/isDefaultCondition()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mFilterSelectIv Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mFilterSelectIv Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private doSearch(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUserTask Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUserTask Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUserTask Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;
iconst_1
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUserTask Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 1
ldc "strNamePre"
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUserTask Lcom/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private getRankingListHeight()I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 1
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
iload 1
iload 2
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/measure(II)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getMeasuredHeight()I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private resetPhotoWallViewParams()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/resetParams()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/resetParams()V
return
.limit locals 1
.limit stack 1
.end method

.method private showSearchHeader()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/requestFocusFromTouch()Z
pop
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
iconst_0
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/toggleSoftInput(II)V
return
.limit locals 1
.limit stack 3
.end method

.method private showTitleHeader()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getCurrentFocus()Landroid/view/View;
ifnull L0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderLayout Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchLayout Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
return
.limit locals 1
.limit stack 3
.end method

.method private slideRankListView(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getAnimation()Landroid/view/animation/Animation;
ifnull L0
return
L0:
iload 1
ifne L1
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListHeight I
ineg
i2f
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 2
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListHeight I
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
L2:
aload 2
ldc2_w 300L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 3
ldc2_w 300L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 2
new android/view/animation/AccelerateDecelerateInterpolator
dup
invokespecial android/view/animation/AccelerateDecelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 3
new android/view/animation/AccelerateDecelerateInterpolator
dup
invokespecial android/view/animation/AccelerateDecelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 2
new com/nd/android/u/contact/activity/PhotoWallActivity$7
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$7/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 3
new com/nd/android/u/contact/activity/PhotoWallActivity$8
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$8/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/clearAnimation()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/clearAnimation()V
L4:
aload 2
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 3
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 2
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mDisplayMode B
ifne L5
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 3
invokevirtual com/product/android/ui/widget/PagingLoadListView/startAnimation(Landroid/view/animation/Animation;)V
return
L1:
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListHeight I
ineg
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 2
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListHeight I
ineg
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
goto L2
L3:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/clearAnimation()V
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
aload 3
invokevirtual com/product/android/ui/widget/PagingLoadListView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 4
.limit stack 6
.end method

.method public clearOldAccountUI()V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public createHRRecognizeItem(Ljava/util/ArrayList;)Lcom/nd/android/u/contact/business/HREntryItem;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)Lcom/nd/android/u/contact/business/HREntryItem;"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/contact/business/HREntryItem
dup
invokespecial com/nd/android/u/contact/business/HREntryItem/<init>()V
astore 2
aload 2
aload 1
putfield com/nd/android/u/contact/business/HREntryItem/uids Ljava/util/ArrayList;
aload 2
ldc ""
putfield com/nd/android/u/contact/business/HREntryItem/depNameStr Ljava/lang/String;
aload 2
ldc "\u7167\u7247\u8bc6\u4eba"
putfield com/nd/android/u/contact/business/HREntryItem/userNameStr Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public createPhotoWallItem(J)Lcom/nd/android/u/contact/view/PhotoWallItem;
new com/nd/android/u/contact/view/PhotoWallItem
dup
invokespecial com/nd/android/u/contact/view/PhotoWallItem/<init>()V
astore 4
aload 4
lload 1
putfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/synGetUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
putfield com/nd/android/u/contact/view/PhotoWallItem/sysAvatarId I
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/isExists(J)Z 2
ifeq L0
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
lload 1
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 3
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 3
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
astore 5
aload 5
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L1:
aload 4
aload 5
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L0:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/isExists(J)Z 2
ifeq L2
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 5
aload 5
ifnull L3
aload 5
invokeinterface java/util/List/size()I 0
ifgt L4
L3:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L4:
aload 5
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
astore 5
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
astore 5
aload 5
ifnonnull L5
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L5:
aload 4
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L2:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public getHREntryUidList(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 6
ldc_w 60001
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
ifnull L0
aload 4
astore 3
aload 4
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
astore 3
L1:
aload 3
ifnull L2
aload 3
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L2
iload 1
aload 3
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Math/min(II)I
istore 2
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L2
aload 5
aload 3
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 5
areturn
.limit locals 6
.limit stack 4
.end method

.method public getNextPageData()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$GetNextPageTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$GetNextPageTask/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_WATER_FALL Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photowall_list I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/PagingLoadListView
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
new com/nd/android/u/contact/adapter/PhotoWallListAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setPauseOnScrollListener(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
new com/nd/android/u/contact/activity/PhotoWallActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$1/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnScrollDirectionListener(Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photowall_grid I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/PagingLoadListView
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setPauseOnScrollListener(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListAdapter Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallGridView Lcom/product/android/ui/widget/PagingLoadListView;
new com/nd/android/u/contact/activity/PhotoWallActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$2/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnScrollDirectionListener(Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/waterfall_layout_header I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_search I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_filter I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mFilterBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_iv_filt_Already I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mFilterSelectIv Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/waterfall_layout_search I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_search I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/AutoCompleteTextView
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_clear_input I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoWallActivity/clearInputBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_search_control I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/container I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
iconst_1
invokevirtual android/view/ViewGroup/setPersistentDrawingCache(I)V
aload 0
new com/nd/android/u/contact/adapter/AutoTextAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/AutoTextAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual android/widget/AutoCompleteTextView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ranking_relative I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/contact/view/RankingListRelativeLayout
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/handler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/setHandler(Landroid/os/Handler;)V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mFilterBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/AutoCompleteTextView/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/clearInputBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_title I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initPhotoWallData()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankNum I
aload 0
new com/nd/android/u/contact/activity/PhotoWallActivity$InitTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$InitTask/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public loadDataToMemory()V
return
.limit locals 1
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_search I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/showSearchHeader()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_search I
if_icmpeq L2
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_clear_input I
if_icmpne L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
aload 0
getstatic com/nd/android/u/contact/R$string/search_cancel I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/clearInputBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/btn_search_auto I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_search_control I
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 1
ifnull L5
aload 1
invokevirtual java/lang/String/length()I
ifeq L5
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/resetPhotoWallViewParams()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L6
aload 0
getstatic com/nd/android/u/contact/R$string/search_cancel I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
ifeq L7
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initPhotoWallData()V
return
L7:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getNextPageData()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/searchCtlBtn Landroid/widget/Button;
aload 0
getstatic com/nd/android/u/contact/R$string/search_cancel I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L6:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mAllUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getstatic com/nd/android/u/contact/R$string/noneuser I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/PhotoWallActivity/bolSearchFlag Z
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initPhotoWallData()V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_text_title I
if_icmpne L8
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mPhotoWallListView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/getVisibility()I
bipush 8
if_icmpne L9
aload 0
iconst_0
fconst_0
ldc_w 90.0F
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/applyRotation(IFF)V
return
L9:
aload 0
iconst_1
fconst_0
ldc_w 90.0F
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/applyRotation(IFF)V
return
L8:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_filter I
if_icmpne L10
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L11
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/PhotoScreeningActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/startActivity(Landroid/content/Intent;)V
return
L11:
aload 0
new com/nd/android/u/contact/dialog/PhotoScreenDialog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/dialog/PhotoScreenDialog/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mBuilder Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mBuilder Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;
invokevirtual com/nd/android/u/contact/dialog/PhotoScreenDialog/create()Landroid/app/AlertDialog;
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mDialog Landroid/app/Dialog;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
return
L10:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/finish()V
return
.limit locals 2
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_photowall I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/setContentView(I)V
L1:
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/init()V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mOrganizationOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initEvent()V
aload 0
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/getRankingListHeight()I
putfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListHeight I
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/photowall I
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onNextPage(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/getNextPageData()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onPause()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onResume()V
aload 0
aload 0
invokestatic com/product/android/business/switchUser/SwitchUserReloadManager/tabActivityCheckUserSwitch(Landroid/app/Activity;Lcom/product/android/business/switchUser/TabUIRefresh;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initPhotoWallData()V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity/controlHeaderShown()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public refreshWhenSwitchUser()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/init()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initPhotoWallData()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mRankingListLayout Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/refresh()V
L0:
return
.limit locals 1
.limit stack 1
.end method
