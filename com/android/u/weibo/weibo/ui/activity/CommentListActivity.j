.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity
.super com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/widget/AbsListView$OnScrollListener
.implements com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$10
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$10$1
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$11
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$12
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$13
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$14
.inner class static synthetic inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$15
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$5
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$6
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$7
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$8
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$9
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$1
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$3
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$4
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$6
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$8
.inner class doGetGlanceCountTask inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask outer com/android/u/weibo/weibo/ui/activity/CommentListActivity

.field public static final 'MIN_SNAP_SIZE' I = 240


.field private 'imgPraiseIcon' Landroid/widget/ImageView;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;

.field private 'mBtnForward' Landroid/widget/Button;

.field private 'mBtnLike' Landroid/widget/Button;

.field private 'mBtnReply' Landroid/widget/Button;

.field private 'mCallback' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;

.field private 'mCommentHeaderInList' Landroid/view/View;

.field private 'mContext' Landroid/content/Context;

.field private 'mDelTweetDlg' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;

.field private 'mDoGetGlanceCountTask' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;

.field private 'mFakeCommentHeader' Landroid/view/View;

.field private 'mFloatHeaderInitFlag' Z

.field private 'mGetMoreFoot' Landroid/view/View;

.field public 'mGlanceCountListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mHandler' Landroid/os/Handler;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.end field

.field private 'mHeaderView' Landroid/view/View;

.field protected 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'mImgCover' Landroid/widget/ImageView;

.field private 'mIsFromComment' Z

.field private 'mIsGetPraise' Z

.field private 'mIsGetReply' Z

.field private 'mIsGetRetweet' Z

.field private 'mIsPraisesChange' Z

.field private 'mLikeTask' Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;

.field private 'mLongClickDlg' Landroid/app/AlertDialog;

.field private 'mRefreshComment' Landroid/content/BroadcastReceiver;

.field private 'mRefreshForword' Landroid/content/BroadcastReceiver;

.field private 'mStickHeaderInitFlag' Z

.field private 'mTopicInfo' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.field private 'mTotalListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mTvGlanceNum' Landroid/widget/TextView;

.field private 'mVoidFoot' Landroid/view/View;

.field private 'mgifView' Lcom/common/android/ui/gif/GifImageView;

.field private 'tweetActionView' Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;

.field private 'viewPraiseBg' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/<init>()V
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetReply Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetRetweet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetPraise Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsPraisesChange Z
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mRefreshComment Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$6
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$6/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mRefreshForword Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$11
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$11/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mStickHeaderInitFlag Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFloatHeaderInitFlag Z
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$14
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGlanceCountListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/common/android/ui/gif/GifImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mgifView Lcom/common/android/ui/gif/GifImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/common/android/ui/gif/GifImageView;)Lcom/common/android/ui/gif/GifImageView;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mgifView Lcom/common/android/ui/gif/GifImageView;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/startTweetFlowImageActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/setListViewHeight()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/viewPraiseBg Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/imgPraiseIcon Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/app/AlertDialog;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLongClickDlg Landroid/app/AlertDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2002(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;)Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;J)V
aload 0
lload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/deleteComment(J)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/retweetRetweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsPraisesChange Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2302(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsPraisesChange Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTvGlanceNum Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGetMoreFoot Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetPraise Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$802(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetReply Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$902(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetRetweet Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private deleteComment(J)V
lload 1
lconst_0
lcmp
ifle L0
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
aload 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
lload 1
lconst_0
lcmp
ifle L1
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$13
dup
aload 0
lload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;J)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/start()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
bipush -2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
bipush -2
bipush -2
iconst_0
aconst_null
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_reply I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
lload 1
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/deleteItem(JLcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 9
.end method

.method private getContentHeight()I
.catch java/lang/Exception from L0 to L1 using L2
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 3
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
L0:
ldc "com.android.internal.R$dimen"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
ldc "status_bar_height"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aconst_null
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
istore 1
aload 3
getfield android/util/DisplayMetrics/heightPixels I
istore 2
L1:
iload 2
iload 1
isub
ireturn
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 5
.limit stack 2
.end method

.method private initCommentHeader(Landroid/view/View;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/like_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/reply_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/retweet_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/refreshCommentHeaderCount()V
return
.limit locals 2
.limit stack 3
.end method

.method private initComponent()V
aload 0
getstatic com/android/u/weibo/R$layout/comment_list_activity_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeadComponent(I)V
aload 0
getstatic com/android/u/weibo/R$string/new_news_content I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setHeadTitle(I)V
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/ui/widget/action/TweetActionViewFactory/getTweetActionView(Landroid/app/Activity;)Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
getstatic com/android/u/weibo/R$id/vs_tweet_contetn_bottom I
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/initComponent(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setTweetActionListener(Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lcmp
ifeq L1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getBindSinaUid()J
lcmp
ifne L2
L1:
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setRightButtonVisibility(I)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
aload 0
getstatic com/android/u/weibo/R$drawable/xy_btn_delete_bg I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setRightButtonBackground(I)V
L4:
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/weibo_list_next_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/comment_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCommentHeaderInList Landroid/view/View;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/comments_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFakeCommentHeader Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCommentHeaderInList Landroid/view/View;
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initCommentHeader(Landroid/view/View;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/glance_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTvGlanceNum Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTvGlanceNum Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/setGlanceView(Landroid/content/Context;Landroid/widget/TextView;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L5
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startGlanceTask(J)V
L5:
aload 0
aload 0
getstatic com/android/u/weibo/R$id/comment_list I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCommentHeaderInList Landroid/view/View;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setSelected(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_1
invokevirtual android/widget/ListView/setSelected(Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGetMoreFoot Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGetMoreFoot Landroid/view/View;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/weibo_list_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/view/View/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGetMoreFoot Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
aload 0
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/showListData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsFromComment Z
ifeq L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
iconst_1
isub
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsFromComment Z
L6:
return
L3:
aload 0
getstatic com/android/u/weibo/R$drawable/top_button_right_selector I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setRightButtonBackground(I)V
goto L4
L2:
aload 0
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/setRightButtonVisibility(I)V
goto L4
.limit locals 2
.limit stack 5
.end method

.method private initData()V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getIntent()Landroid/content/Intent;
ldc "tweet"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnonnull L4
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/finish()V
L4:
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getIntent()Landroid/content/Intent;
ldc "isScroll"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsFromComment Z
aload 0
new com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHeaderView Landroid/view/View;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 6
aload 1
getstatic com/android/u/weibo/R$id/avatar_frame I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 5
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 9
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 10
aload 1
getstatic com/android/u/weibo/R$id/from_where I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 11
aload 1
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 7
aload 1
getstatic com/android/u/weibo/R$id/attachment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 8
iload 3
ifeq L0
aload 5
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$drawable/retweet_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 6
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 9
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 10
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
ifnonnull L1
aload 7
getstatic com/android/u/weibo/R$string/weibo_has_lost I
invokevirtual android/widget/TextView/setText(I)V
L2:
aload 2
ifnull L3
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L3
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L3
aload 8
getstatic com/android/u/weibo/R$layout/image_stub I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 8
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 5
aload 5
getstatic com/android/u/weibo/R$id/img_grid_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WrapContentGridView
astore 6
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
astore 7
iconst_1
aload 7
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/size()I
if_icmpne L4
aload 7
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_ext Ljava/lang/String;
aload 7
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
ifeq L4
aload 6
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
aload 5
getstatic com/android/u/weibo/R$id/image_stub_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
aload 6
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/showDynamicGif(Landroid/widget/RelativeLayout;Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L3:
aload 2
ifnull L5
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L5
aload 1
getstatic com/android/u/weibo/R$id/retweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 1
aload 0
aload 1
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
iload 4
iconst_1
iadd
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L5
aload 1
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$9
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$9/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L5:
return
L1:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
astore 5
L7:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L8
aload 7
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L9:
aload 7
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
goto L2
L6:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
astore 5
goto L7
L8:
aload 5
astore 6
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_has_lost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 6
L10:
aload 7
aload 0
aload 6
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L9
L0:
aload 0
aload 1
getstatic com/android/u/weibo/R$id/vpraisebg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/viewPraiseBg Landroid/view/View;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/ivpraiseicon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/imgPraiseIcon Landroid/widget/ImageView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/viewPraiseBg Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/imgPraiseIcon Landroid/widget/ImageView;
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
astore 5
L12:
aload 1
getstatic com/android/u/weibo/R$id/base_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/tweet_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 9
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 7
aload 0
aload 5
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 7
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 10
aload 0
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifne L13
aload 11
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L14:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L15
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
iconst_m1
iconst_0
aload 6
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;IZLandroid/widget/ImageView;)V
aload 6
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$7
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L2
L11:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
astore 5
goto L12
L13:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L16
aload 11
aload 0
getstatic com/android/u/weibo/R$string/from_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L14
L16:
aload 11
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L14
L15:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 6
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 6
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$8
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$8/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L2
L4:
aload 6
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 6
aload 0
aload 2
iconst_1
iload 4
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/bindImageData(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList;
pop
goto L3
.limit locals 12
.limit stack 6
.end method

.method private refreshCommentsHeader()V
getstatic com/android/u/weibo/weibo/ui/activity/CommentListActivity$15/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private retweetRetweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "retweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "owner"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private setListViewHeight()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/getContentHeight()I
i2f
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/actionbar_compat_height I
invokevirtual android/content/res/Resources/getDimension(I)F
fsub
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/comment_height I
invokevirtual android/content/res/Resources/getDimension(I)F
fsub
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/comment_bottom_height I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
iconst_1
ishl
i2f
fsub
f2i
istore 4
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getDividerHeight()I
istore 5
iconst_0
istore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
istore 6
L0:
iload 1
istore 3
iload 2
iload 6
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
iload 2
aconst_null
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/view/ViewGroup
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
astore 7
aload 7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getWidth()I
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
invokevirtual android/view/View/measure(II)V
iload 1
aload 7
invokevirtual android/view/View/getMeasuredHeight()I
iload 5
iadd
iadd
istore 1
iload 1
iload 4
if_icmple L2
iload 1
istore 3
L1:
iload 3
iload 4
if_icmplt L3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/comment_bottom_height I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
istore 1
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mVoidFoot Landroid/view/View;
ifnonnull L5
aload 0
new android/view/View
dup
aload 0
invokespecial android/view/View/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mVoidFoot Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mVoidFoot Landroid/view/View;
new android/widget/AbsListView$LayoutParams
dup
bipush -2
iload 1
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mVoidFoot Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mVoidFoot Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 1
putfield android/view/ViewGroup$LayoutParams/height I
return
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L3:
iload 4
iload 3
isub
istore 1
goto L4
.limit locals 8
.limit stack 5
.end method

.method private showDynamicGif(Landroid/widget/RelativeLayout;Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L0
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifeq L1
L0:
return
L1:
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
astore 10
aload 10
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
astore 8
aload 10
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
astore 9
aload 10
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_width I
istore 5
aload 10
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_height I
istore 6
iload 6
i2f
iload 5
i2f
fdiv
fstore 4
iload 5
sipush 240
if_icmpge L2
iload 6
sipush 240
if_icmpge L2
aload 8
astore 7
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
aload 9
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new com/android/u/weibo/weibo/business/bean/ImageExtraInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/ImageExtraInfo/<init>()V
astore 7
aload 7
aload 10
invokevirtual com/android/u/weibo/weibo/business/bean/ImageExtraInfo/copyByImageInfo(Lcom/android/u/weibo/weibo/business/bean/WbImage;)V
aload 11
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 2
aload 0
aload 9
aload 11
iload 5
iload 5
i2f
fload 4
fmul
f2i
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/initData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZ)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 7
iload 5
ifle L4
aload 7
iload 5
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 7
iload 5
i2f
fload 4
fmul
f2i
putfield android/widget/RelativeLayout$LayoutParams/height I
L4:
aload 7
bipush 9
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 7
bipush 10
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 8
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$10
dup
aload 0
aload 2
aload 1
aload 7
aload 3
aload 8
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
L2:
aload 9
astore 7
aload 9
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 8
astore 7
L5:
goto L3
.limit locals 12
.limit stack 11
.end method

.method private showNextData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
aload 1
if_acmpne L0
return
L0:
getstatic com/android/u/weibo/weibo/ui/activity/CommentListActivity$15/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L1
L2
L3
default : L4
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
ifnonnull L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTotalListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/setListViewHeight()V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/LIKE Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
goto L4
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/RETWEET Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_hint I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/choose_comment_header I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/triangle_text_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setBackgroundColor(I)V
goto L4
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
goto L6
.limit locals 2
.limit stack 3
.end method

.method private startTweetFlowImageActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.catch org/json/JSONException from L0 to L1 using L2
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
ldc com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc "position"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ifnull L3
ldc ""
astore 2
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
L1:
aload 3
ldc "topicinfo"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L3:
aload 0
aload 3
sipush 1012
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
astore 1
goto L1
.limit locals 4
.limit stack 4
.end method

.method public handleCommentClickEvent()V
aload 0
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
ldc com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 1011
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method

.method public handleLikeClickEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
aload 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_like I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_1
istore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
aconst_null
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/modifyPraiseUser(ZJLcom/android/u/weibo/weibo/business/bean/Praisor;)V
L1:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/setListViewHeight()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/viewPraiseBg Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/imgPraiseIcon Landroid/widget/ImageView;
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
iload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/showToastAfterPraise(Landroid/content/Context;II)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L3
L2:
aload 0
new com/android/u/weibo/weibo/ui/task/LikeAsyncTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iload 1
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mHandler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/ui/task/LikeAsyncTask/<init>(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ILandroid/content/Context;Landroid/os/Handler;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L3:
new android/content/Intent
dup
ldc "like-event"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "id"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ldc "like"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
aload 3
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
aload 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_like I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
new com/android/u/weibo/weibo/business/bean/Praisor
dup
invokespecial com/android/u/weibo/weibo/business/bean/Praisor/<init>()V
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 4
aload 3
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
putfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
ldc "f100"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 4
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 3
invokestatic java/lang/System/currentTimeMillis()J
putfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
putfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
iconst_1
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/modifyPraiseUser(ZJLcom/android/u/weibo/weibo/business/bean/Praisor;)V
goto L1
.limit locals 5
.limit stack 7
.end method

.method protected handleRightButtonClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDelTweetDlg Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
ifnonnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getIntent()Landroid/content/Intent;
ldc "from_msg_praiselist"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 1
aload 0
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/weibo_tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
iload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/<init>(Landroid/content/Context;JJZZ)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDelTweetDlg Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDelTweetDlg Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 10
.end method

.method public handleTransmitClickEvent()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/retweetRetweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
sipush 1011
if_icmpeq L1
iload 1
sipush 1013
if_icmpne L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 5
aload 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_reply I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
new com/android/u/weibo/weibo/business/bean/ReplyInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfo/<init>()V
astore 5
aload 5
aload 3
ldc "content"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
aload 5
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/localCreateAt J
aload 5
aload 3
ldc "compose_more"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/composeMore Z
iload 1
sipush 1011
if_icmpne L3
iconst_2
istore 1
L4:
aload 5
iload 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/actionType I
aload 5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
aload 5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/isOnlySina Z
aload 5
aload 3
ldc "rid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
aload 3
ldc "can_send"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
iload 4
ifne L5
aload 5
ldc2_w -1L
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
L5:
aload 5
iconst_0
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReply(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 5
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/addComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L6
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/setListViewHeight()V
L6:
iload 4
ifeq L0
aload 0
aload 5
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/send(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
L0:
return
L3:
iconst_3
istore 1
goto L4
L2:
iload 1
sipush 1012
if_icmpne L0
aload 3
ldc "is_like"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
iload 4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
if_icmpeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iload 4
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
iload 4
iconst_1
if_icmpne L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
aload 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_like I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
new com/android/u/weibo/weibo/business/bean/Praisor
dup
invokespecial com/android/u/weibo/weibo/business/bean/Praisor/<init>()V
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 5
aload 3
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
putfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 5
invokevirtual com/product/android/business/login/BindUser/getUid()J
ldc "f100"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 5
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 3
invokestatic java/lang/System/currentTimeMillis()J
putfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
putfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 5
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
iconst_1
aload 3
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/modifyPraiseUser(ZJLcom/android/u/weibo/weibo/business/bean/Praisor;)V
return
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/tweetActionView Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
aload 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_like I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
iconst_0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
aconst_null
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/modifyPraiseUser(ZJLcom/android/u/weibo/weibo/business/bean/Praisor;)V
return
.limit locals 6
.limit stack 6
.end method

.method public onBackPressed()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onBackPressed()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/retweet_count I
if_icmpne L0
aload 0
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/RETWEET Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/showListData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/reply_count I
if_icmpne L2
aload 0
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/showListData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/like_count I
if_icmpne L1
aload 0
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/LIKE Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/showListData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/switchScreen()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initData()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initComponent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initEvent()V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mRefreshComment Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh-local-comment"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mRefreshForword Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh-forward-tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
aload 0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mImgCover Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mImgCover Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getTag()Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mgifView Lcom/common/android/ui/gif/GifImageView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mgifView Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/quit()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mgifView Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/recycle()V
L1:
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mRefreshComment Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/isAdapterContentEmpty()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/LIKE Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L2
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/Praisor
astore 1
aload 1
ifnull L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "http://m.weibo.cn/u/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 0
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startActivity(Landroid/content/Intent;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mContext Landroid/content/Context;
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L4
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 1
aload 1
ifnull L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lconst_0
lcmp
ifle L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/onLongClickMsg(Ljava/lang/Object;)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/RETWEET Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L1
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 1
ifnull L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_0
lcmp
ifle L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/onLongClickMsg(Ljava/lang/Object;)V
return
.limit locals 6
.limit stack 4
.end method

.method protected onLongClickMsg(Ljava/lang/Object;)V
aconst_null
astore 3
aconst_null
astore 2
aload 1
instanceof com/android/u/weibo/weibo/business/bean/ReplyInfo
ifeq L0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
astore 4
aload 4
astore 3
aload 5
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lconst_0
lcmp
ifle L1
aload 5
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lcmp
ifne L2
iconst_2
anewarray java/lang/String
astore 2
aload 2
iconst_0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/wb_delete I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 2
iconst_1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/copy_comment I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 4
astore 3
L1:
aload 2
ifnull L3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
return
L2:
iconst_2
anewarray java/lang/String
astore 2
aload 2
iconst_0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/replydeil I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 2
iconst_1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/copy_comment I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 4
astore 3
goto L1
L0:
aload 1
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L1
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
astore 3
L6:
iconst_2
anewarray java/lang/String
astore 2
aload 2
iconst_0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/repost_new_tweet I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 2
iconst_1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/copy_tweet I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
goto L1
L5:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
astore 3
goto L6
L4:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 4
aload 4
aload 2
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$12
dup
aload 0
aload 1
aload 3
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Ljava/lang/Object;Ljava/lang/String;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 4
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLongClickDlg Landroid/app/AlertDialog;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLongClickDlg Landroid/app/AlertDialog;
iconst_1
invokevirtual android/app/AlertDialog/setCanceledOnTouchOutside(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mLongClickDlg Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 6
.limit stack 7
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
iload 2
iconst_1
if_icmple L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mStickHeaderInitFlag Z
ifne L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFakeCommentHeader Landroid/view/View;
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initCommentHeader(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFakeCommentHeader Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/refreshCommentsHeader()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsFromComment Z
ifne L1
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/setListViewHeight()V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsFromComment Z
L1:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mStickHeaderInitFlag Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFloatHeaderInitFlag Z
L2:
return
L0:
iload 2
iconst_1
if_icmpgt L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFloatHeaderInitFlag Z
ifne L2
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCommentHeaderInList Landroid/view/View;
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/initCommentHeader(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFakeCommentHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/refreshCommentsHeader()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mStickHeaderInitFlag Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mFloatHeaderInitFlag Z
return
.limit locals 5
.limit stack 2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public refreshCommentHeaderCount()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnLike Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_like I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnForward Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_transmit I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mBtnReply Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_reply I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L2:
return
.limit locals 1
.limit stack 6
.end method

.method public selectComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/reply_comment_head_no_at I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "comment"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "rid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
invokevirtual java/lang/StringBuilder/reverse()Ljava/lang/StringBuilder;
pop
aload 0
aload 2
sipush 1013
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public send(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/controller/PostTweetService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "retweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "content"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "localCreateAt"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/localCreateAt J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "compose_more"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/composeMore Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "weiboActionType"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/actionType I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "rid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public showListData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity/showNextData(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
getstatic com/android/u/weibo/weibo/ui/activity/CommentListActivity$15/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetPraise Z
ifne L3
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshpRraiseUserList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetPraise Z
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetReply Z
ifne L3
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshCommentList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetReply Z
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetRetweet Z
ifne L3
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshRetweetList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mIsGetRetweet Z
return
.limit locals 2
.limit stack 6
.end method

.method protected startGlanceTask(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mGlanceCountListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 3
aload 3
ldc "tid"
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mDoGetGlanceCountTask Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 3
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public switchScreen()V
return
.limit locals 1
.limit stack 0
.end method
