.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/CommentDetailHeaderView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$1
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$1
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$2
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$3
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$4
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5
.inner class public static abstract interface DeleteCommentOnClickListener inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener outer com/nd/schoollife/ui/post/view/CommentDetailHeaderView

.field private 'contentView' Lcom/product/android/ui/widget/ProTextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mDeleteCommentBtn' Landroid/widget/Button;

.field private 'mDeleteCommentLayout' Landroid/widget/LinearLayout;

.field private 'mDeleteCommentOnClickListener' Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;

.field private 'mFloorText' Landroid/widget/TextView;

.field private 'mImageGridView' Lcom/nd/schoollife/ui/common/view/WrapContentGridView;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mLogoCiv' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'mNickNameText' Landroid/widget/TextView;

.field private 'mReplyActionLayout' Landroid/widget/LinearLayout;

.field private 'mReplyIBtn' Landroid/widget/Button;

.field private 'mTimeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView/initView(Landroid/content/Context;)V
aload 0
aload 2
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentOnClickListener Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyIBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/getContext()Landroid/content/Context;
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
getstatic com/nd/schoollife/R$layout/comment_detail_header_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_comment_delete I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_comment_delete I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$1/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_reply I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyActionLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyActionLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$3/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aconst_null
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_nickname I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mNickNameText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mNickNameText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$4/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_avatar I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ptv_content I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/contentView Lcom/product/android/ui/widget/ProTextView;
aload 0
getstatic com/nd/schoollife/R$id/vs_attachment I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
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
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mImageGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_reply I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyIBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_floor I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mFloorText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_time I
invokevirtual com/nd/schoollife/ui/post/view/CommentDetailHeaderView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mTimeText Landroid/widget/TextView;
return
.limit locals 4
.limit stack 4
.end method

.method public fillValue(ILcom/nd/schoollife/common/bean/result/CommentInfoBean;JII)V
aload 2
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/contentView Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getContent()Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/contentView Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mImageGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getImages()Ljava/util/List;
aconst_null
iconst_0
iconst_0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyIBtn Landroid/widget/Button;
aload 2
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L1
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 7
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mNickNameText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
bipush 8
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mNickNameText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
aload 2
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 5
iload 6
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/isDeleteCommentEnableInPostDetail(JJJII)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mFloorText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_post_level_count I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getFloor()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mTimeText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getTimestamp()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mReplyIBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/listener/CommentAndReplyListener
dup
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/listener/CommentAndReplyListener/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L1
.limit locals 8
.limit stack 8
.end method

.method public setDeleteCommentOnClickListener(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mDeleteCommentOnClickListener Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$DeleteCommentOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 2
.limit stack 2
.end method
