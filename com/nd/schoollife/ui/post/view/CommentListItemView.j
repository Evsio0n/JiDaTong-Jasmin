.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/CommentListItemView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/CommentListItemView$1
.inner class inner com/nd/schoollife/ui/post/view/CommentListItemView$2

.field private 'mContentText' Landroid/widget/TextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mImgFlagIv' Landroid/widget/ImageView;

.field private 'mLogoCiv' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'mMasterText' Landroid/widget/TextView;

.field private 'mNickNameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/CommentListItemView/initView(Landroid/content/Context;)V
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
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/CommentListItemView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/CommentListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/comment_list_item_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_comment_nickname I
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mNickNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_comment_content I
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mContentText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_comment_imgflag I
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mImgFlagIv Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_comment_postmaster I
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mMasterText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_comment_avatar I
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/view/CommentListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mNickNameText Landroid/widget/TextView;
new com/nd/schoollife/ui/post/view/CommentListItemView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentListItemView$1/<init>(Lcom/nd/schoollife/ui/post/view/CommentListItemView;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
new com/nd/schoollife/ui/post/view/CommentListItemView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentListItemView$2/<init>(Lcom/nd/schoollife/ui/post/view/CommentListItemView;)V
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public fillValue(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;J)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/post/view/CommentListItemView/setTag(Ljava/lang/Object;)V
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 4
aload 4
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mNickNameText Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mNickNameText Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 4
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
lload 2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mMasterText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mContentText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mCtx Landroid/content/Context;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getContent()Ljava/lang/String;
bipush 100
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mContentText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTextSize()F
iconst_2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/dealLongPost(Landroid/content/Context;Ljava/lang/String;IFI)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mContentText Landroid/widget/TextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mLogoCiv Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 4
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setTag(Ljava/lang/Object;)V
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getImages()Ljava/util/List;
ifnull L3
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getImages()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L3
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mImgFlagIv Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mImgFlagIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_post_imgflg I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L0:
return
L2:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mMasterText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mImgFlagIv Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentListItemView/mImgFlagIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 5
.limit stack 6
.end method
