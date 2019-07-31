.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/PostDetailHeaderView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/PostDetailHeaderView$1
.inner class inner com/nd/schoollife/ui/post/view/PostDetailHeaderView$2
.inner class inner com/nd/schoollife/ui/post/view/PostDetailHeaderView$3
.inner class inner com/nd/schoollife/ui/post/view/PostDetailHeaderView$4

.field private 'mCommentActionLayout' Landroid/widget/LinearLayout;

.field private 'mCommentBtn' Landroid/widget/Button;

.field private 'mContentPtv' Lcom/product/android/ui/widget/ProTextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mImgGridView' Lcom/nd/schoollife/ui/common/view/WrapContentGridView;

.field private 'mLogoCiv' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'mNickName' Landroid/widget/TextView;

.field private 'mPostSourceText' Landroid/widget/TextView;

.field private 'mTimeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView/initView(Landroid/content/Context;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
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
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
astore 2
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 3
aload 2
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 3
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/post_detail_header_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ptv_content I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_comment I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_comment I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentActionLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentActionLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PostDetailHeaderView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView$1/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/vs_attachment I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
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
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_source I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mPostSourceText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mPostSourceText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/PostDetailHeaderView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_time I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mTimeText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_nickname I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mNickName Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mNickName Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/PostDetailHeaderView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView$3/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_avatar I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
new com/nd/schoollife/ui/post/view/PostDetailHeaderView$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailHeaderView$4/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)V
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method public fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mTimeText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 2
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mNickName Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
bipush 8
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mNickName Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
astore 2
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
aload 2
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
aload 1
iconst_0
iconst_0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L4
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
astore 2
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mPostSourceText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_post_sourcefrom I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mPostSourceText Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
L4:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentBtn Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
L0:
return
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
astore 2
goto L3
.limit locals 3
.limit stack 7
.end method

.method public setCommentClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView/mCommentBtn Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
