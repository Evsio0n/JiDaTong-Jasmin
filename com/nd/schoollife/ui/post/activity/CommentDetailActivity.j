.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/CommentDetailActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener
.implements com/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener
.inner class inner com/nd/schoollife/ui/post/activity/CommentDetailActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/CommentDetailActivity$2
.inner class private CommentDetailReplyListAdapter inner com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter outer com/nd/schoollife/ui/post/activity/CommentDetailActivity

.field private static final 'KEY_SAVE_COMMENT_ID' Ljava/lang/String; = "KEY_SAVE_COMMENT_ID"

.field private static final 'KEY_SAVE_POST_SENDER_UID' Ljava/lang/String; = "KEY_SAVE_POST_SENDER_UID"

.field private static final 'KEY_SAVE_SCOPE_ROLE' Ljava/lang/String; = "KEY_SAVE_SCOPE_ROLE"

.field private static final 'KEY_SAVE_SCOPE_TYPE' Ljava/lang/String; = "KEY_SAVE_SCOPE_TYPE"

.field public static final 'TAG' Ljava/lang/String;

.field private 'headView' Landroid/view/View;

.field private 'idx' I

.field private 'isPreviousActivityNeedToRefresh' Z

.field private 'mBackBtn' Landroid/widget/Button;

.field private 'mBean' Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;

.field private 'mCommentDetailHearderView' Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mCommentId' J

.field private 'mCommentInfo' Lcom/nd/schoollife/common/bean/result/CommentInfoBean;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mLoadReplyPb' Landroid/widget/ProgressBar;

.field private 'mPostSenderUid' J

.field private 'mReListAdapter' Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;

.field private 'mReplyListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mScopeRole' I

.field private 'mScopeType' I

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'postTask' Lcom/nd/schoollife/ui/post/task/PostProcessTask;

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/activity/CommentDetailActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/idx I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/isPreviousActivityNeedToRefresh Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentInfo Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private buildReplyList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 50
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/<init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
aload 1
iconst_0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/updateData(Ljava/util/List;Z)V
return
.limit locals 2
.limit stack 8
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
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L1
aload 1
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/showLoading()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
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
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getComment_id()Ljava/lang/String;
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

.method private deleteReply(Landroid/view/View;)V
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
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/showLoading()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
bipush 9
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
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mBean Lcom/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean;
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

.method private getCommentDetail(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
iconst_5
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private getReplyList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
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
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
bipush 16
aload 1
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
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
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
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
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 2
goto L2
.limit locals 3
.limit stack 7
.end method

.method private updateTitle(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_comment_detail_title I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public finish()V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/isPreviousActivityNeedToRefresh Z
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/finish()V
return
.limit locals 1
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_comment_detail_layout I
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/setDeleteCommentOnClickListener(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
getstatic com/nd/schoollife/R$id/pb_loading I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
L0:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/clv_comment_detail_reply I
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aconst_null
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
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
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
ifnonnull L1
aload 0
new com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 50
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/<init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/getCommentDetail(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 8
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "comment_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
aload 0
aload 2
ldc "POST_SENDER_UID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mPostSenderUid J
aload 0
aload 2
ldc "SCOPE_TYPE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
aload 0
aload 2
ldc "SCOPE_ROLE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
lconst_0
lcmp
ifne L1
aload 1
ifnull L1
aload 0
aload 1
ldc "KEY_SAVE_POST_SENDER_UID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mPostSenderUid J
aload 0
aload 1
ldc "KEY_SAVE_COMMENT_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
aload 0
aload 1
ldc "KEY_SAVE_SCOPE_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
aload 0
aload 1
ldc "KEY_SAVE_SCOPE_ROLE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
L1:
return
.limit locals 3
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mBackBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/activity/CommentDetailActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/post/activity/CommentDetailActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mBackBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/headView Landroid/view/View;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
iload 2
iconst_m1
if_icmpeq L7
return
L7:
iload 1
tableswitch 100
L0
L3
L5
default : L8
L8:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultCamera(Landroid/content/Intent;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultAt(Landroid/content/Intent;)V
L6:
return
.limit locals 4
.limit stack 2
.end method

.method public onDeleteCommentClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/deleteComment(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onDeleteReplyClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/deleteReply(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
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
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/getReplyList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "KEY_SAVE_POST_SENDER_UID"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mPostSenderUid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "KEY_SAVE_COMMENT_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "KEY_SAVE_SCOPE_TYPE"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "KEY_SAVE_SCOPE_ROLE"
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/dismissLoading()V
iload 1
iconst_5
if_icmpne L0
aload 3
ifnull L1
aload 3
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L1
aload 0
aload 3
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentInfo Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mPostSenderUid J
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/setPostUserId(J)V
L2:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentInfo Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentDetailHearderView Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/idx I
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentInfo Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mPostSenderUid J
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/fillValue(ILcom/nd/schoollife/common/bean/result/CommentInfoBean;JII)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCommentInfo Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getFloor()I
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/updateTitle(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L3:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/getReplyList(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
L4:
return
L0:
iload 1
bipush 16
if_icmpne L5
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultReplyList
ifeq L6
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getData()Ljava/util/List;
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/buildReplyList(Ljava/util/List;)V
L6:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L7
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L8
L7:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
ifnull L9
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReListAdapter Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter;
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/isShowLoadMoreView()Z
ifne L9
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/removeFootView()Z
pop
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
ifne L4
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mLoadReplyPb Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
L8:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L9
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mReplyListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L9
L5:
iload 1
bipush 9
if_icmpne L10
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L11
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_delete_reply_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/getCommentDetail(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/isPreviousActivityNeedToRefresh Z
return
L11:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8bc4\u8bba\u5220\u9664\u5931\u8d25\u3002\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
return
L10:
iload 1
bipush 13
if_icmpne L12
aload 3
ifnull L4
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
ifeq L4
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/isSuccess()Z
ifeq L13
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_reply_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/CommentDetailActivity/getCommentDetail(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/isPreviousActivityNeedToRefresh Z
L13:
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/isSuccess()Z
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSendResult(Z)V
return
L12:
iload 1
bipush 11
if_icmpne L4
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/dismissLoading()V
aload 3
ifnull L4
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L4
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L4
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/R$string/str_delete_comment_success I
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity/isPreviousActivityNeedToRefresh Z
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/finish()V
return
.limit locals 4
.limit stack 7
.end method
