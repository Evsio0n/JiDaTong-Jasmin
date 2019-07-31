.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener
.implements com/nd/schoollife/ui/square/listener/PositionListener
.implements com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$2
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$3
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$4
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$5
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$6
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$7
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$8
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$9
.inner class private PostDetailCommentListAdapter inner com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter outer com/nd/schoollife/ui/post/activity/PostDetailActivity

.field private static final 'KEY_SAVE_POST_ID' Ljava/lang/String; = "KEY_SAVE_POST_ID"

.field public static final 'TAG' Ljava/lang/String;

.field private 'isDeletePost' Z

.field private 'isNeedToRefreshed' Z

.field private 'isNeedTransformListView' Z

.field private 'isPraised' Z

.field private 'isPraisingOrCancel' Z

.field private 'mActionMenuIBtn' Landroid/widget/Button;

.field private 'mBackBtn' Landroid/widget/Button;

.field private 'mBean' Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;

.field private 'mBottom' I

.field private 'mCilckView' Landroid/view/View;

.field private 'mClickPosition' I

.field private 'mCoListAdapter' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mHandler' Lcom/nd/schoollife/ui/post/handler/PostListHandler;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mLoadCommentsPb' Landroid/widget/ProgressBar;

.field private 'mPostDetailHearderView' Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;

.field private 'mPostId' J

.field private 'mPostInfo' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mPraisePanel' Lcom/nd/schoollife/ui/post/view/PraisePanel;

.field private 'mPraiseStatus' I

.field private 'mScreenHeight' I

.field private 'mTitleText' Landroid/widget/TextView;

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/activity/PostDetailActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/activity/PostDetailActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isDeletePost Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedTransformListView Z
aload 0
iconst_m1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseStatus I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mScreenHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedTransformListView Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/hideSoftInput()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedTransformListView Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)J
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCilckView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mClickPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/post/handler/PostListHandler;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mHandler Lcom/nd/schoollife/ui/post/handler/PostListHandler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/cancelPraise()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/doPraise()V
return
.limit locals 1
.limit stack 1
.end method

.method private addHeader()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/post/view/PraisePanel
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PraisePanel/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokevirtual android/widget/ListView/removeHeaderView(Landroid/view/View;)Z
pop
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 4
.end method

.method private buildCommentData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
aload 1
iconst_0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/updateData(Ljava/util/List;Z)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private cancelPraise()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
ifeq L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
lsub
lstore 1
lload 1
lconst_0
lcmp
iflt L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/showPraiseIvAnim()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
bipush 7
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method private deleteComment(Landroid/view/View;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L1
aload 1
instanceof com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
ifeq L1
aload 0
aload 1
checkcast com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/showLoading()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
bipush 11
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
invokevirtual com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/getID()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private deletePost()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
instanceof com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
checkcast com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
ldc "\u63d0\u793a"
aload 0
getstatic com/nd/schoollife/R$string/str_if_delete_this_post I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
ldc ""
ldc ""
new com/nd/schoollife/ui/post/activity/PostDetailActivity$7
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$7/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
new com/nd/schoollife/ui/post/activity/PostDetailActivity$8
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$8/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 1
.limit stack 9
.end method

.method private deleteReply(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/showLoading()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
bipush 9
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private dismissInputContentLayout()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/initStates(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private doPraise()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
ifeq L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/showPraiseIvAnim()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
bipush 6
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private getCommentList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_1
istore 2
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
L0:
iconst_1
istore 2
L2:
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
iconst_4
aload 1
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_3
iconst_2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 2
goto L2
.limit locals 3
.limit stack 6
.end method

.method private getPostDetail(J)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
iconst_2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method private hideSoftInput()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideInputMethod()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private sendPraiseResult(ZI)V
aload 0
iload 2
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseStatus I
new android/content/Intent
dup
ldc "com.nd.schoollife.praisechange"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "BOOL_PRAISE_IS_SUCCESS"
iload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_OR_CANCEL"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_TYPE"
getstatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/DETAIL Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public dismissLoading()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/dismissLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method public finish()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "IS_DEL"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isDeletePost Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "IS_PRAISE"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseStatus I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected initContentView()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
getstatic com/nd/schoollife/R$layout/activity_post_detail_layout I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/setContentView(I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/getScreenHeight(Landroid/content/Context;)I
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mScreenHeight I
bipush 11
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/apiLevelIsMore(I)Z
ifeq L0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getRootView()Landroid/view/View;
new com/nd/schoollife/ui/post/activity/PostDetailActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual android/view/View/addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
L0:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/post_detail_reply_listview I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aconst_null
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
new com/nd/schoollife/ui/post/handler/PostListHandler
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokespecial com/nd/schoollife/ui/post/handler/PostListHandler/<init>(Landroid/widget/ListView;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mHandler Lcom/nd/schoollife/ui/post/handler/PostListHandler;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getNoMoreDataToLoadText()Landroid/widget/TextView;
astore 1
aload 1
iconst_0
bipush 10
iconst_0
bipush 100
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 1
bipush 49
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
new com/nd/schoollife/ui/post/view/PostDetailHeaderView
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
new com/nd/schoollife/ui/post/listener/CommentAndReplyListener
dup
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/listener/CommentAndReplyListener/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/setCommentClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
getstatic com/nd/schoollife/R$id/praise_panel_post_detail I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/PraisePanel
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
new com/nd/schoollife/ui/post/activity/PostDetailActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/setPraiseOnClickListerner(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
getstatic com/nd/schoollife/R$id/pb_loading I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
ifnonnull L1
aload 0
new com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
L1:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
getstatic com/nd/schoollife/R$drawable/btn_common_head_action_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/addHeader()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 8
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
ldc2_w -1L
lcmp
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
ldc "\u4f20\u9012\u8fc7\u6765\u7684 postId \u4e3a\u7a7a"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
ldc2_w -1L
lcmp
ifne L1
aload 1
ifnull L1
aload 0
aload 1
ldc "KEY_SAVE_POST_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
L1:
return
.limit locals 3
.limit stack 5
.end method

.method protected initEvent()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBackBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/activity/PostDetailActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$3/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/activity/PostDetailActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$4/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/post/activity/PostDetailActivity$5
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$5/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/post/activity/PostDetailActivity$6
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$6/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
return
.limit locals 2
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBackBtn Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/str_post_detail_main_title I
invokevirtual android/widget/TextView/setText(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iload 2
iconst_m1
if_icmpeq L15
L16:
return
L15:
iload 1
lookupswitch
1 : L17
100 : L7
101 : L5
102 : L9
default : L18
L18:
return
L17:
aload 3
ifnull L16
L0:
aload 3
ldc "POST_DETAIL_TO_MENU_BUSICODE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
L1:
iload 1
iconst_1
if_icmpne L19
L3:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
ifeq L11
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/cancelPraise()V
L4:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L5:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L6:
return
L7:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultCamera(Landroid/content/Intent;)V
L8:
return
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultAt(Landroid/content/Intent;)V
L10:
return
L11:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/doPraise()V
L12:
return
L19:
iload 1
iconst_2
if_icmpne L16
L13:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/deletePost()V
L14:
return
.limit locals 4
.limit stack 3
.end method

.method public onDeleteCommentClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/deleteComment(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onDeleteReplyClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
ifne L1
L0:
return
L1:
aload 0
aload 1
checkcast com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
invokevirtual com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/getID()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/deleteReply(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onPositionListener(ILandroid/view/View;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedTransformListView Z
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
iload 1
iadd
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mClickPosition I
aload 0
aload 2
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCilckView Landroid/view/View;
iconst_2
newarray int
astore 3
aload 2
aload 3
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
aload 3
iconst_1
iaload
aload 2
invokevirtual android/view/View/getHeight()I
iadd
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBottom I
return
.limit locals 4
.limit stack 3
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
return
.limit locals 2
.limit stack 0
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getCommentList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onReloadClicked()V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onResume()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch all from L5 to L6 using L3
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onResume()V
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"
iconst_0
invokevirtual com/nd/schoollife/common/utils/common/AppSp/getBoolean(Ljava/lang/String;Z)Z
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
lconst_0
lcmp
ifle L1
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
L1:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
L4:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
return
L2:
astore 1
L5:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
L6:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
return
L3:
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isNeedToRefreshed Z
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
aload 1
athrow
.limit locals 2
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "KEY_SAVE_POST_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 3
ifnull L5
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L5
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 3
iload 1
iconst_4
if_icmpne L6
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommentList
ifeq L7
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommentList
astore 3
aload 3
ifnull L8
aload 0
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommentList/getData()Ljava/util/ArrayList;
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/buildCommentData(Ljava/util/List;)V
L8:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L9
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L10
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
ifnull L11
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
ifne L11
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L11:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/isShowLoadMoreView()Z
ifne L7
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/removeFootView()Z
pop
L7:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/hideSoftInput()V
L5:
return
L10:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L7
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L7
L6:
iload 1
bipush 6
if_icmpne L12
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L13
iconst_1
istore 4
L14:
aload 0
iload 4
iconst_1
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/sendPraiseResult(ZI)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpeq L5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
ldc "\u70b9\u8d5e\u5931\u8d25"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L13:
iconst_0
istore 4
goto L14
L12:
iload 1
bipush 7
if_icmpne L15
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L16
iconst_1
istore 4
L17:
aload 0
iload 4
iconst_0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/sendPraiseResult(ZI)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraisingOrCancel Z
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpeq L5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
ldc "\u53d6\u6d88\u8d5e\u5931\u8d25"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L16:
iconst_0
istore 4
goto L17
L15:
iload 1
bipush 8
if_icmpne L18
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissLoading()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/R$string/str_delete_post_success I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isDeletePost Z
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/finish()V
return
L18:
iload 1
iconst_2
if_icmpne L19
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L20
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mLoadCommentsPb Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L21
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
ifnull L21
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/setMainPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L21:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
iconst_1
if_icmpne L22
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
L23:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostDetailHearderView Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
ifnull L24
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L24:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getstatic com/nd/schoollife/R$string/comment_content_hint_comment I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getCommentList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mActionMenuIBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
L22:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
goto L23
L20:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L5
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L5
ldc "105010204"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getCode()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L25
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/hideEmptyView()V
aload 0
ldc ""
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_post_is_deleted I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
ldc "\u8fd4\u56de"
ldc ""
new com/nd/schoollife/ui/post/activity/PostDetailActivity$9
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity$9/<init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aconst_null
iconst_0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
return
L25:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L19:
iload 1
bipush 9
if_icmpne L26
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissLoading()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L27
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/R$string/str_delete_reply_success I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
return
L27:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/nd/schoollife/R$string/str_delete_reply_fail I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
return
L26:
iload 1
bipush 11
if_icmpne L28
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissLoading()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/R$string/str_delete_comment_success I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getList()Ljava/util/List;
astore 2
L1:
aload 2
ifnull L5
L3:
aload 2
invokeinterface java/util/List/size()I 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
invokevirtual com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/getIndex()I
iconst_1
iadd
if_icmplt L5
aload 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
invokevirtual com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/getIndex()I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
iconst_1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setDeleted(Z)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCoListAdapter Lcom/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/notifyDataSetChanged()V
L4:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
L28:
iload 1
bipush 13
if_icmpne L29
aload 3
ifnull L5
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
ifeq L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L30
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideSendingDialog()V
L30:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L31
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_reply_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
L31:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissInputContentLayout()V
return
L29:
iload 1
bipush 12
if_icmpne L5
aload 3
ifnull L5
aload 3
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L5
aload 3
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L32
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideSendingDialog()V
L32:
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
ifeq L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissInputContentLayout()V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostId J
invokespecial com/nd/schoollife/ui/post/activity/PostDetailActivity/getPostDetail(J)V
return
.limit locals 5
.limit stack 8
.end method

.method public showPraiseIvAnim()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPraisePanel Lcom/nd/schoollife/ui/post/view/PraisePanel;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUserName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraisor()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/mPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/updatePraisePanel(ZJLjava/lang/String;Ljava/util/List;J)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
ifeq L0
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
return
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity/isPraised Z
return
.limit locals 1
.limit stack 8
.end method
