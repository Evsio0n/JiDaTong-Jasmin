.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/view/PraiseCommentsView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$1
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$2
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$3
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$4
.inner class public static abstract interface GetCmtAndPraisesCountListener inner com/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener outer com/nd/android/u/news/ui/view/PraiseCommentsView
.inner class private GetComplexCommentTask inner com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask outer com/nd/android/u/news/ui/view/PraiseCommentsView
.inner class private GetMoreCommentDatasTask inner com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask outer com/nd/android/u/news/ui/view/PraiseCommentsView
.inner class public static abstract interface OnCommentListener inner com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener outer com/nd/android/u/news/ui/view/PraiseCommentsView

.field private final 'MAX_PRAISE_COUNT' I

.field private 'mClickListener' Landroid/view/View$OnClickListener;

.field private 'mCmtMinTs' J

.field private 'mCmtPraisesCountListener' Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;

.field private 'mCommentHeader' Landroid/view/View;

.field private 'mCommentsAdapter' Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mFootView' Landroid/view/View;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mGetComplexCommentTask' Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;

.field private 'mGetMoreCommentTask' Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;

.field private 'mHasMoreData' Z

.field private 'mListener' Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;

.field private 'mLvComments' Lcom/common/android/ui/widget/PullUpLoadMoreListView;

.field private 'mNewsId' J

.field private 'mOtherHeader' Landroid/widget/LinearLayout;

.field private 'mPraiseHeader' Landroid/view/View;

.field private 'mTvFootText' Landroid/widget/TextView;

.field private 'mivPraiseMore' Landroid/widget/ImageView;

.field private 'mllPraise' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
bipush 6
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/MAX_PRAISE_COUNT I
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
aload 0
new com/nd/android/u/news/ui/view/PraiseCommentsView$3
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$3/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/initView()V
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/initEvent()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
bipush 6
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/MAX_PRAISE_COUNT I
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
aload 0
new com/nd/android/u/news/ui/view/PraiseCommentsView$3
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$3/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/initView()V
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/initEvent()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mNewsId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)I
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/getInitCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCmtPraisesCountListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/afterGetPraiseDatas(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCmtMinTs J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1702(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;J)J
aload 0
lload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCmtMinTs J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1800(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/afterGetNewReplyDatas(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)I
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/getMoreCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/afterGetMoreReplyDatas(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;J)V
aload 0
lload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/gotoProfileActivity(J)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Z
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFooterProgressBar Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mTvFootText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetMoreCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetMoreCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private afterGetMoreReplyDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
ifnonnull L0
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
return
L0:
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/getMoreCount()I
if_icmpge L1
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aconst_null
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setOnPullUpLoadMoreListener(Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_common_no_more_data I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFooterProgressBar Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/addDatas(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/notifyDataSetChanged()V
return
L1:
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
goto L2
.limit locals 2
.limit stack 2
.end method

.method private afterGetNewReplyDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/setDatas(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method private afterGetPraiseDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 1
astore 2
aload 1
invokeinterface java/util/List/size()I 0
bipush 6
if_icmple L3
aload 1
iconst_0
bipush 6
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
astore 2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L4:
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L5
aload 0
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/createPraiseHeader(J)Landroid/widget/ImageView;
astore 2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
aload 2
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
goto L5
L3:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L4
.limit locals 3
.limit stack 3
.end method

.method private createPraiseHeader(J)Landroid/widget/ImageView;
new android/widget/ImageView
dup
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/praise_width I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/view/ViewGroup$LayoutParams/height I
aload 4
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/praise_width I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
aload 4
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/view/ViewGroup$MarginLayoutParams
astore 4
aload 4
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_margin_3 I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/view/ViewGroup$MarginLayoutParams/leftMargin I
aload 4
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_margin_3 I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/view/ViewGroup$MarginLayoutParams/rightMargin I
lload 1
iconst_3
aload 3
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 3
new com/nd/android/u/news/ui/view/PraiseCommentsView$4
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$4/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method private getInitCount()I
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener/getInitCount()I 0
ireturn
L0:
bipush 20
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getMoreCount()I
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener/getMoreCount()I 0
ireturn
L0:
bipush 10
ireturn
.limit locals 1
.limit stack 1
.end method

.method private gotoProfileActivity(J)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
lload 1
invokestatic com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel/gotoProfileActivity(Landroid/content/Context;J)V
return
.limit locals 3
.limit stack 3
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter
dup
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
new com/nd/android/u/news/ui/view/PraiseCommentsView$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$1/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
new com/nd/android/u/news/ui/view/PraiseCommentsView$2
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$2/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setOnPullUpLoadMoreListener(Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initView()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
astore 1
aload 1
getstatic com/nd/android/u/news/R$layout/praise_comment_list I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/lv_comment_content I
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/PullUpLoadMoreListView
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 1
getstatic com/nd/android/u/news/R$layout/praise_list_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 2
aload 0
aload 2
getstatic com/nd/android/u/news/R$id/ll_praise_list I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
aload 1
getstatic com/nd/android/u/news/R$layout/comment_tag_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 3
aload 0
aload 3
getstatic com/nd/android/u/news/R$id/ll_comment_list I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/news/R$layout/common_empty_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mOtherHeader Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mOtherHeader Landroid/widget/LinearLayout;
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 2
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 3
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/addHeaderView(Landroid/view/View;)V
aload 0
aload 1
getstatic com/nd/android/u/news/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mTvFootText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFooterProgressBar Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
getstatic com/nd/android/u/news/R$color/transparent I
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setSelector(I)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
getstatic com/nd/android/u/news/R$id/ll_praise I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
getstatic com/nd/android/u/news/R$id/tvPraiseMore I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
return
.limit locals 4
.limit stack 4
.end method

.method public addFirstItem(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter
dup
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/getCount()I
ifne L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
ifnull L2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/addFirstItem(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
return
.limit locals 2
.limit stack 4
.end method

.method public addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mOtherHeader Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public addPraise(J)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 3
iload 3
ifne L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
iload 3
bipush 6
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
iconst_5
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mivPraiseMore Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
aload 0
lload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView/createPraiseHeader(J)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public cancelPraise(J)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
lload 1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
iload 3
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
ifne L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L1:
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
.limit locals 5
.limit stack 4
.end method

.method public destroyView()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetMoreCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetMoreCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetMoreCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetComplexCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetComplexCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetComplexCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/cancel(Z)Z
pop
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public initData(J)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mLvComments Lcom/common/android/ui/widget/PullUpLoadMoreListView;
iconst_0
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setSelection(I)V
aload 0
lload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mNewsId J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mllPraise Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/clearDatas()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/destroyView()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mHasMoreData Z
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mPraiseHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentHeader Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
new com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$1;)V
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetComplexCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mGetComplexCommentTask Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public setGetCmtAndPraisesCountListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCmtPraisesCountListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnCommentItemClickListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mCommentsAdapter Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/setCommentActionListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
