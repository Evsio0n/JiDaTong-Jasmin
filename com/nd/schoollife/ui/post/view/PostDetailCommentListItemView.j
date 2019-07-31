.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/PostDetailCommentListItemView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$1
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$2
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$3
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$4
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$5
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$6
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$6$1
.inner class inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$6$2
.inner class public static abstract interface DeleteCommentOnClickListener inner com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener outer com/nd/schoollife/ui/post/view/PostDetailCommentListItemView

.field protected static final 'TAG' Ljava/lang/String;

.field private 'mAvatarCiv' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'mContentPtv' Lcom/product/android/ui/widget/ProTextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mDelListener' Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;

.field private 'mDeleteCommentBtn' Landroid/widget/Button;

.field private 'mDeleteCommentLayout' Landroid/widget/LinearLayout;

.field private 'mDeleteCommentOnClickListener' Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;

.field private 'mFloorText' Landroid/widget/TextView;

.field private 'mImgGridView' Lcom/nd/schoollife/ui/common/view/WrapContentGridView;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mListener' Lcom/nd/schoollife/ui/square/listener/PositionListener;

.field private 'mMoreReplyText' Landroid/widget/TextView;

.field private 'mNickNameText' Landroid/widget/TextView;

.field private 'mPostMasterText' Landroid/widget/TextView;

.field private 'mPostSenderUid' J

.field private 'mReplyActionLayout' Landroid/widget/LinearLayout;

.field private 'mReplyBtn' Landroid/widget/Button;

.field private 'mReplyCountText' Landroid/widget/TextView;

.field private 'mReplyLayout' Landroid/widget/RelativeLayout;

.field private 'mReplyView01' Lcom/nd/schoollife/ui/post/view/ReplyListItemView;

.field private 'mReplyView02' Lcom/nd/schoollife/ui/post/view/ReplyListItemView;

.field private 'mScopeRole' I

.field private 'mScopeType' I

.field private 'mTimeText' Landroid/widget/TextView;

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/view/PostDetailCommentListItemView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
lconst_0
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
lconst_0
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDelListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/initView(Landroid/content/Context;)V
aload 0
aload 3
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentOnClickListener Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/post_detail_comment_item_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aconst_null
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_avatar I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mAvatarCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_time I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mTimeText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_nickname I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mNickNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ptv_content I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_floor I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mFloorText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_comment_postmaster I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostMasterText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_comment_delete I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_reply_count I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyCountText Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$id/vs_attachment I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
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
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mAvatarCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$1/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mNickNameText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$2/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_comment_second I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/csliv_reply_01 I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/ReplyListItemView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/csliv_reply_02 I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/ReplyListItemView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDelListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setDeleteOnClickListener(Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDelListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setDeleteOnClickListener(Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
L1:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_reply_more I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$3/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_comment_reply I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyActionLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyActionLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$4/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_comment_delete I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$5
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$5/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_reply I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$6
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView$6/<init>(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public fillValue(ILcom/nd/schoollife/common/bean/result/CommentInfoBean;JII)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L22 to L23 using L2
.catch java/lang/Exception from L24 to L25 using L2
.catch java/lang/Exception from L25 to L26 using L2
.catch java/lang/Exception from L26 to L27 using L2
.catch java/lang/Exception from L28 to L29 using L2
aload 2
ifnull L29
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mFloorText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
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
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mTimeText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getTimestamp()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
lload 3
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
aload 0
iload 5
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
iload 6
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 9
L1:
aload 9
ifnull L4
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mNickNameText Landroid/widget/TextView;
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
bipush 8
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mAvatarCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 9
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mNickNameText Landroid/widget/TextView;
aload 9
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mAvatarCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lcmp
ifne L6
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostMasterText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isDeleted()Z
ifeq L8
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/st_comment_already_deleted I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyCountText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setVisibility(I)V
L5:
return
L6:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostMasterText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L7:
goto L4
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
L8:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyCountText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getContent()Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mContentPtv Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mImgGridView Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getImages()Ljava/util/List;
aconst_null
iconst_0
iconst_0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
aload 2
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
new com/nd/schoollife/ui/post/listener/CommentAndReplyListener
dup
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/listener/CommentAndReplyListener/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
astore 9
aload 9
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 9
aload 0
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setParentView(Landroid/view/View;)V
aload 9
iload 1
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setPosition(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyBtn Landroid/widget/Button;
aload 9
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReply_info()Ljava/util/List;
ifnull L17
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReply_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L17
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyCountText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReplys()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L9:
new com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
dup
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getComment_id()Ljava/lang/String;
iload 1
invokespecial com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/<init>(Ljava/lang/String;I)V
astore 9
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
aload 9
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mPostSenderUid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 5
iload 6
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/isDeleteCommentEnableInPostDetail(JJJII)Z
ifeq L19
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L10:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReply_info()Ljava/util/List;
astore 9
L11:
aload 9
ifnull L28
L12:
aload 9
invokeinterface java/util/List/size()I 0
ifle L28
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReplys()J
lstore 7
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
bipush 8
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L13:
lload 7
lconst_1
lcmp
ifne L30
L14:
aload 9
invokeinterface java/util/List/size()I 0
ifle L15
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
aload 9
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
lload 3
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
L15:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L16:
return
L17:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyCountText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L18:
goto L9
L19:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L20:
goto L10
L30:
lload 7
ldc2_w 2L
lcmp
ifne L31
L21:
aload 9
invokeinterface java/util/List/size()I 0
ifle L22
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
aload 9
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
lload 3
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
L22:
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
if_icmple L15
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_1
aload 9
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
lload 3
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
L23:
goto L15
L31:
lload 7
ldc2_w 2L
lcmp
ifle L15
L24:
aload 9
invokeinterface java/util/List/size()I 0
ifle L25
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
aload 9
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
lload 3
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView01 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
L25:
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
if_icmple L26
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_1
aload 9
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
lload 3
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeType I
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mScopeRole I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyView02 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
iconst_0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setVisibility(I)V
L26:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u66f4\u591a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReplys()J
ldc2_w 2L
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u6761\u56de\u590d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mMoreReplyText Landroid/widget/TextView;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getComment_id()Ljava/lang/String;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
L27:
goto L15
L28:
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mReplyLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L29:
return
.limit locals 10
.limit stack 9
.end method

.method public setDeleteCommentOnClickListener(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mDeleteCommentOnClickListener Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 2
.limit stack 2
.end method

.method public setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/mListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
return
.limit locals 2
.limit stack 2
.end method
