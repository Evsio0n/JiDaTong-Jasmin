.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/PraiseCommentsListActivity
.super com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.implements com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener
.implements com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener
.implements android/view/View$OnClickListener
.inner class private CommitCommentTask inner com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask outer com/nd/android/u/news/ui/activity/PraiseCommentsListActivity

.field private 'mCommentView' Lcom/nd/android/u/news/ui/view/CommonCommentView;

.field private 'mCommitCommentTask' Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask;

.field private 'mEmptyView' Landroid/view/View;

.field private 'mNewsId' J

.field private 'mPraiseReplyView' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;)J
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mNewsId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/praise_comment_view I
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/news/ui/view/PraiseCommentsView
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/commentView I
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/news/ui/view/CommonCommentView
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
aload 0
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/setOnSendCommentListener(Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mIbLeft Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mIbRight Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/emptyView I
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
aload 0
getstatic com/nd/android/u/news/R$string/str_comment_news_heat I
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mNewsId J
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/initData(J)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)V
aload 1
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public getInitCount()I
bipush 20
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMoreCount()I
bipush 10
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initEvent()V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setOnCommentItemClickListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public isNeedGetMore()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected leftBtnHandle()V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/destroyView()V
L0:
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/leftBtnHandle()V
return
.limit locals 1
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/isSmileyViewShow()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/reSetView(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mPraiseReplyView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/destroyView()V
L1:
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onBackPressed()V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/emptyView I
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/reSetView(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/getIntent()Landroid/content/Intent;
ldc "news_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mNewsId J
aload 0
getstatic com/nd/android/u/news/R$layout/activity_praise_reply_list I
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/initView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/initEvent()V
return
.limit locals 2
.limit stack 5
.end method

.method public onEditState()V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 1
ifnonnull L0
return
L0:
ldc ""
astore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
astore 2
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
aload 2
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/replyComment(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onSendComment(Ljava/lang/String;Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/nd/android/u/news/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
aload 1
ifnull L1
aload 0
new com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/<init>(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;Ljava/lang/String;)V
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommitCommentTask Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask;
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommitCommentTask Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/mCommentView Lcom/nd/android/u/news/ui/view/CommonCommentView;
iconst_1
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/reSetView(Z)V
return
.limit locals 3
.limit stack 5
.end method
