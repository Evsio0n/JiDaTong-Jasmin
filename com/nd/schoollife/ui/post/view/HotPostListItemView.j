.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/HotPostListItemView
.super android/widget/LinearLayout
.implements com/nd/schoollife/ui/post/view/inter/IPostListItemView
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$1
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$2
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$3
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$4
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$5

.field private 'mCommentContainerLayout' Landroid/widget/LinearLayout;

.field private 'mCommentLayout01' Lcom/nd/schoollife/ui/post/view/CommentListItemView;

.field private 'mCommentLayout02' Lcom/nd/schoollife/ui/post/view/CommentListItemView;

.field private 'mContentView' Lcom/product/android/ui/widget/ProTextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mImageGridView' Lcom/nd/schoollife/ui/common/view/WrapContentGridView;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mLogoCiv' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'mMoreCommentText' Landroid/widget/LinearLayout;

.field private 'mNickNameText' Landroid/widget/TextView;

.field private 'mOperatorPanel' Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;

.field private 'mPostHeatText' Landroid/widget/TextView;

.field private 'mPostRankText' Landroid/widget/TextView;

.field private 'mPostSourceTv' Landroid/widget/TextView;

.field private 'mTimeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/initView(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/gotoPostDetailActivity(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method private gotoPostDetailActivity(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "INT_POST_ID"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "IS_PRAISE"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
instanceof android/app/Activity
ifeq L3
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
checkcast android/app/Activity
aload 2
bipush 103
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/post_hot_list_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_source I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/HotPostListItemView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView$1/<init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_avatar I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
new com/nd/schoollife/ui/post/view/HotPostListItemView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView$2/<init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ptv_content I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mContentView Lcom/product/android/ui/widget/ProTextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_nickname I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mNickNameText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mNickNameText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/HotPostListItemView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView$3/<init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_time I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mTimeText Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$id/vs_attachment I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 1
aload 1
getstatic com/nd/schoollife/R$layout/post_image_stub I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 0
aload 1
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
getstatic com/nd/schoollife/R$id/wcg_post_imgs I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/WrapContentGridView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mImageGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_postlistitem_comment_item I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentContainerLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_postlistitem_comment_01 I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/CommentListItemView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout01 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_postlistitem_comment_02 I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/CommentListItemView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout02 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
aload 0
new com/nd/schoollife/ui/post/view/HotPostListItemView$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView$4/<init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_more_reply I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/HotPostListItemView$5
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView$5/<init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_heat I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostHeatText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostHeatText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_host_post_rank I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostRankText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/popv_post_item_operstor I
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/PostOperatorPanelView
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mOperatorPanel Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
return
.limit locals 2
.limit stack 4
.end method

.method private updateCommentInfoView(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
lconst_0
lstore 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lstore 3
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
lconst_0
lcmp
ifle L1
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentContainerLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
ifnull L2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
iconst_0
istore 2
L3:
iload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokestatic com/nd/schoollife/ui/common/util/PostUtils/post2Comment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
astore 5
aload 5
ifnull L4
iload 2
ifne L5
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout01 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
aload 5
lload 3
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/fillValue(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;J)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout01 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout02 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setVisibility(I)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
iload 2
iconst_1
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout02 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
aload 5
lload 3
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/fillValue(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;J)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout02 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setVisibility(I)V
goto L4
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
if_icmpne L6
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
ldc2_w 2L
lcmp
ifle L6
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L7:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setTag(Ljava/lang/Object;)V
return
L6:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L7
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout01 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentLayout02 Lcom/nd/schoollife/ui/post/view/CommentListItemView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mMoreCommentText Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCommentContainerLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 6
.limit stack 4
.end method

.method public fillValue(ILcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
iload 1
iconst_1
iadd
istore 3
aload 2
ifnull L0
aload 0
aload 2
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/setTag(Ljava/lang/Object;)V
iload 3
bipush 10
if_icmpgt L1
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostRankText Landroid/widget/TextView;
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostRankText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostHeatText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getHeat()F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc "\u00b0C"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
astore 4
aload 4
ifnull L3
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
bipush 16
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
if_icmpne L4
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
getstatic com/nd/schoollife/R$drawable/bg_schoollife_hotpost_community I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 5
aload 5
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
ldc_w 9.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 5
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
fconst_2
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
bipush 30
iconst_0
bipush 10
iconst_0
invokevirtual android/widget/TextView/setPadding(IIII)V
L5:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
L3:
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mNickNameText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
iconst_5
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mNickNameText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 4
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L6:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mTimeText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mContentView Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
aload 4
bipush 50
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mContentView Lcom/product/android/ui/widget/ProTextView;
invokevirtual com/product/android/ui/widget/ProTextView/getTextSize()F
iconst_5
invokestatic com/nd/schoollife/ui/common/util/PostUtils/dealLongPost(Landroid/content/Context;Ljava/lang/String;IFI)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mContentView Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
astore 5
aload 5
astore 4
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
instanceof android/app/Activity
ifeq L7
aload 5
astore 4
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getParent()Landroid/app/Activity;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getParent()Landroid/app/Activity;
astore 4
L7:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mImageGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 4
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
aload 2
iconst_0
iconst_0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mOperatorPanel Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mOperatorPanel Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
iload 1
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/setPosition(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mOperatorPanel Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 0
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/setParentView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mOperatorPanel Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 2
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 2
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/updateCommentInfoView(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostRankText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
L4:
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
getstatic com/nd/schoollife/R$drawable/bg_post_list_source_panel I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 5
aload 5
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
fconst_2
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 5
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mCtx Landroid/content/Context;
ldc_w 9.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView/mPostSourceTv Landroid/widget/TextView;
bipush 45
iconst_0
bipush 10
iconst_0
invokevirtual android/widget/TextView/setPadding(IIII)V
goto L5
.limit locals 6
.limit stack 7
.end method

.method public setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/HotPostListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 2
.limit stack 2
.end method

.method public updateCommentInfoInPostListItem(Landroid/view/View;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 1
ifnull L6
L0:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L6
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L6
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 1
L1:
aload 1
ifnull L6
L3:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
ifnull L6
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
aload 1
aload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/updateCommentsInPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
pop
L4:
iload 3
iconst_2
if_icmpgt L6
aload 1
ifnull L6
L5:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
ifnull L6
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L6
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/updateCommentInfoView(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L6:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 4
.limit stack 2
.end method
