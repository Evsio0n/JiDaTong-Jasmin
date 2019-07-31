.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/activity/TaskMainActivity
.super android/app/Activity
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener
.implements android/widget/AdapterView$OnItemClickListener
.signature "Landroid/app/Activity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;Landroid/widget/AdapterView$OnItemClickListener;"
.inner class inner com/nd/android/u/tast/main/activity/TaskMainActivity$1
.inner class private GetShowOffTask inner com/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask outer com/nd/android/u/tast/main/activity/TaskMainActivity
.inner class private GetTodayTaskList inner com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList outer com/nd/android/u/tast/main/activity/TaskMainActivity
.inner class private SendToTask inner com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask outer com/nd/android/u/tast/main/activity/TaskMainActivity

.field private final 'CACHE_DIRECTORY_NAME' Ljava/lang/String;

.field private final 'CACHE_LIVE_CYCLE' I

.field private final 'HALF' I

.field private final 'KEY' Ljava/lang/String;

.field private final 'MAX' I

.field private final 'PREF_NAME' Ljava/lang/String;

.field private final 'TO_RECEIVE_ACTIVITY' I

.field private 'mAdapter' Lcom/nd/android/u/tast/main/adapter/TaskAdapter;

.field private 'mBottomLayout' Landroid/view/View;

.field private 'mCircleProgressView' Lcom/nd/android/u/tast/main/widget/CircleProgressView;

.field private 'mGetShowOffTask' Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask;

.field private 'mGetTodayTaskList' Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList;

.field private 'mGvSurpass' Landroid/widget/GridView;

.field private 'mHorizonProgressView' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;

.field private 'mIvPoint' Landroid/widget/ImageView;

.field private 'mIvStar' Landroid/widget/ImageView;

.field private 'mLvContent' Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;

.field private 'mNoneLayout' Landroid/view/View;

.field private 'mRotateAnim' Landroid/view/animation/Animation;

.field private 'mSendToTask' Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;

.field private 'mShowContentLayout' Landroid/view/View;

.field private 'mShowOffLayout' Landroid/view/View;

.field private 'mSurpassLayout' Landroid/view/View;

.field private 'mTodayTaskList' Lcom/nd/android/u/tast/experience/bean/TodayTaskList;

.field private 'mTopLayout' Landroid/view/View;

.field private 'mTranslateAnimView' Lcom/nd/android/u/tast/main/widget/TranslateAnimView;

.field private 'mTvJingyang' Landroid/widget/TextView;

.field private 'mTvLevel' Landroid/widget/TextView;

.field private 'mTvNone' Landroid/widget/TextView;

.field private 'mTvShowLevel' Landroid/widget/TextView;

.field private 'mTvSummary' Landroid/widget/TextView;

.field private 'mTvSurpass' Landroid/widget/TextView;

.field private 'tvAward' Landroid/widget/TextView;

.field private 'tvCount' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc_w 36865
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/TO_RECEIVE_ACTIVITY I
aload 0
ldc_w 86400000
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/CACHE_LIVE_CYCLE I
aload 0
ldc "showOffPic"
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/CACHE_DIRECTORY_NAME Ljava/lang/String;
aload 0
ldc "task_config"
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/PREF_NAME Ljava/lang/String;
aload 0
ldc "last_check_showOffpic_cache_time"
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/KEY Ljava/lang/String;
aload 0
bipush 50
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/HALF I
aload 0
bipush 100
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/MAX I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/graphics/Bitmap;
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/getShowOffPic()Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/refreshView(Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/hideShowOffLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvShowLevel Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvSummary Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSurpassLayout Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvSurpass Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGvSurpass Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/showShowOffLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method private getShowOffPic()Landroid/graphics/Bitmap;
iconst_2
newarray int
astore 2
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowContentLayout Landroid/view/View;
aload 2
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowContentLayout Landroid/view/View;
invokevirtual android/view/View/getHeight()I
istore 1
aload 0
aload 2
iconst_1
iaload
iload 1
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/takeScreenShot(II)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method

.method private getTodayTaskList()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetTodayTaskList Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList;
ifnull L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetTodayTaskList Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/main/activity/TaskMainActivity$1;)V
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetTodayTaskList Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetTodayTaskList Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private hideShowOffLayout()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/stopAnimation()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowOffLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mHorizonProgressView Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setOnLevelUpdateListener(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/topLayout I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTopLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/circleView I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/CircleProgressView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mCircleProgressView Lcom/nd/android/u/tast/main/widget/CircleProgressView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvLevel I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvLevel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/progressView I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/HorizontalProgressView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mHorizonProgressView Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvCount I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/tvCount Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvAward I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/tvAward Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvJingyang I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvJingyang Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ivStar I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mIvStar Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ivPoint I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mIvPoint Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/bottomLayout I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mBottomLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/llNone I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mNoneLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvNone I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvNone Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lvContent I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/TaskPullToRefreshListView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
iconst_0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setIsShowFooterLayout(Z)V
aload 0
new com/nd/android/u/tast/main/adapter/TaskAdapter
dup
aload 0
invokespecial com/nd/android/u/tast/main/adapter/TaskAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mAdapter Lcom/nd/android/u/tast/main/adapter/TaskAdapter;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mAdapter Lcom/nd/android/u/tast/main/adapter/TaskAdapter;
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$anim/rotate I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mRotateAnim Landroid/view/animation/Animation;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/showOffLayout I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowOffLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/showContentLayout I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowContentLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/llSurpass I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSurpassLayout Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvShowLevel I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvShowLevel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/gvSurpass I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGvSurpass Landroid/widget/GridView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvSurpass I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvSurpass Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tvSummary I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvSummary Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/animView I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/TranslateAnimView
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
return
.limit locals 1
.limit stack 4
.end method

.method private refreshView(Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
aload 1
ifnonnull L0
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
getstatic com/nd/android/u/tasklib/R$string/no_network_try_again I
istore 2
L2:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
ifnull L3
aload 0
iload 2
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
getstatic com/nd/android/u/tasklib/R$string/get_task_data_error I
istore 2
goto L2
L3:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mNoneLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
bipush 8
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvNone Landroid/widget/TextView;
iload 2
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mBottomLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
aload 1
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvLevel Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getLevel()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mHorizonProgressView Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getExp()I
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getExpUp()I
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setValue(II)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mCircleProgressView Lcom/nd/android/u/tast/main/widget/CircleProgressView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getProgress()I
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/setProgress(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/tvCount Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getRange()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/tvAward Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getReward()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getProgress()I
bipush 50
if_icmpgt L4
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTopLayout Landroid/view/View;
getstatic com/nd/android/u/tasklib/R$drawable/bg050 I
invokevirtual android/view/View/setBackgroundResource(I)V
L5:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L6
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mNoneLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
bipush 8
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mIvPoint Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvNone Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/no_task I
invokevirtual android/widget/TextView/setText(I)V
L7:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mBottomLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getExpRec()I
ifne L8
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvJingyang Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_comfirm I
invokevirtual android/widget/TextView/setText(I)V
return
L4:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getProgress()I
bipush 100
if_icmpge L9
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTopLayout Landroid/view/View;
getstatic com/nd/android/u/tasklib/R$drawable/bg5090 I
invokevirtual android/view/View/setBackgroundResource(I)V
goto L5
L9:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTopLayout Landroid/view/View;
getstatic com/nd/android/u/tasklib/R$drawable/bg100 I
invokevirtual android/view/View/setBackgroundResource(I)V
goto L5
L6:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mNoneLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mAdapter Lcom/nd/android/u/tast/main/adapter/TaskAdapter;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/tast/main/adapter/TaskAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mAdapter Lcom/nd/android/u/tast/main/adapter/TaskAdapter;
invokevirtual com/nd/android/u/tast/main/adapter/TaskAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
iconst_0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mIvPoint Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L7
L8:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvJingyang Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getExpRec()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 3
.end method

.method private showShowOffLayout()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowOffLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/startLihuaAnimation()V
return
.limit locals 1
.limit stack 2
.end method

.method private startLihuaAnimation()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
iconst_0
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/startAnimation()V
return
.limit locals 1
.limit stack 2
.end method

.method private startRefresh()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/showRefreshView()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
iconst_0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setRefreshing(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private stopLihuaAnimation()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
bipush 8
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTranslateAnimView Lcom/nd/android/u/tast/main/widget/TranslateAnimView;
invokevirtual com/nd/android/u/tast/main/widget/TranslateAnimView/stopAnimation()V
return
.limit locals 1
.limit stack 2
.end method

.method private takeScreenShot(II)Landroid/graphics/Bitmap;
aload 0
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
astore 3
aload 3
iconst_1
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
aload 3
invokevirtual android/view/View/buildDrawingCache()V
aload 3
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
iconst_0
iload 1
aload 0
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
iload 2
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 4
aload 3
invokevirtual android/view/View/destroyDrawingCache()V
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public Close(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/hideShowOffLayout()V
return
.limit locals 2
.limit stack 1
.end method

.method public SendToFriend(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/stopLihuaAnimation()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask
dup
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$string/wait I
iconst_0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Landroid/content/Context;II)V
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method public SendToWeibo(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/stopLihuaAnimation()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask
dup
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$string/wait I
iconst_1
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Landroid/content/Context;II)V
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mSendToTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method public doBack(Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method public doRefresh(Landroid/view/View;)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/nd/android/u/tasklib/R$string/no_network_try_again I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
iconst_0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mNoneLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/startRefresh()V
return
.limit locals 2
.limit stack 2
.end method

.method public doShowOff(Landroid/view/View;)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/nd/android/u/tasklib/R$string/no_network_try_again I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetShowOffTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask;
ifnull L2
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetShowOffTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/main/activity/TaskMainActivity$1;)V
putfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetShowOffTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mGetShowOffTask Lcom/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetShowOffTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
iload 1
ldc_w 36865
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/startRefresh()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowOffLayout Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mShowOffLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
invokespecial android/app/Activity/onBackPressed()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/task_main I
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/initView()V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/initEvent()V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/startRefresh()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mLvContent Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
istore 6
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
iload 3
iload 6
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/tast/experience/bean/MoreExperienceItem
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getIsnew()I
iconst_1
if_icmpne L1
aload 1
iconst_0
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setIsnew(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mAdapter Lcom/nd/android/u/tast/main/adapter/TaskAdapter;
invokevirtual com/nd/android/u/tast/main/adapter/TaskAdapter/notifyDataSetChanged()V
new java/lang/Thread
dup
new com/nd/android/u/tast/main/activity/TaskMainActivity$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$1/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L1:
aload 1
aload 0
invokestatic com/nd/android/u/tast/experience/adapter/MoreExperienceAdapter/onClickEvent(Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;Landroid/app/Activity;)V
L0:
return
.limit locals 7
.limit stack 6
.end method

.method public onLevelUpdate()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTvLevel Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mTodayTaskList Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getLevel()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mIvStar Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity/mRotateAnim Landroid/view/animation/Animation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/getTodayTaskList()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onRestart()V
aload 0
invokespecial android/app/Activity/onRestart()V
aload 0
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity/startRefresh()V
return
.limit locals 1
.limit stack 1
.end method

.method public toReceive(Landroid/view/View;)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
ldc_w 36865
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 5
.end method
