.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/ReplyListItemView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$1
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$2
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$2$1
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$2$2
.inner class public static abstract interface DeleteReplyOnClickListener inner com/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener outer com/nd/schoollife/ui/post/view/ReplyListItemView

.field private 'isMaster' Z

.field private 'mContentText' Lcom/product/android/ui/widget/ProTextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mDelBtn' Landroid/widget/Button;

.field private 'mDeleteOnClickListener' Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;

.field private 'mDeleteReplyLayout' Landroid/widget/LinearLayout;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/ReplyListItemView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/ReplyListItemView/initView(Landroid/content/Context;)V
aload 0
aload 2
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDeleteOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
aload 0
aload 3
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDeleteOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/reply_list_item_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_reply_delete I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDeleteReplyLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDeleteReplyLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/ReplyListItemView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/ReplyListItemView$1/<init>(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_reply_content I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mContentText Lcom/product/android/ui/widget/ProTextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_reply_delete I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/view/ReplyListItemView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/ReplyListItemView$2/<init>(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
aload 2
ifnull L0
aload 0
aload 2
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setTag(Ljava/lang/Object;)V
new com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
dup
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getRid()Ljava/lang/String;
iload 1
invokespecial com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/<init>(Ljava/lang/String;I)V
astore 10
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
aload 10
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
ldc ""
astore 11
aload 11
astore 10
aload 2
ifnull L1
aload 11
astore 10
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L1
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
bipush 8
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
astore 10
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mContentText Lcom/product/android/ui/widget/ProTextView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/product/android/ui/widget/ProTextView/setTag(Ljava/lang/Object;)V
lload 3
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lcmp
ifne L2
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
L1:
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getContent()Ljava/lang/String;
astore 12
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 13
aload 13
aload 10
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ":\u3000"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_0
istore 9
iconst_1
istore 1
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
ifeq L3
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 9
aload 13
ldc " \u697c\u4e3b  "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 1
aload 13
ldc " "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getPost_time()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
astore 11
aload 13
aload 12
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mCtx Landroid/content/Context;
aload 13
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
astore 12
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
ifeq L4
aload 0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$drawable/ic_post_host I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 13
aload 13
iconst_0
iconst_0
aload 13
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
aload 13
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 12
new android/text/style/ImageSpan
dup
aload 13
invokespecial android/text/style/ImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
iload 9
iload 1
bipush 17
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L4:
aload 10
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 12
new com/product/android/utils/ContentUtils$URLSpanNoUnderline
dup
aload 10
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/AT Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;Ljava/lang/Object;)V
iconst_0
aload 10
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L5:
aload 12
new android/text/style/ForegroundColorSpan
dup
aload 0
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_post_comment_time I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
aload 12
invokevirtual android/text/SpannableString/length()I
aload 11
invokevirtual java/lang/String/length()I
isub
aload 12
invokevirtual android/text/SpannableString/length()I
bipush 34
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mContentText Lcom/product/android/ui/widget/ProTextView;
aload 12
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mContentText Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUid()J
lload 5
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 7
iload 8
invokestatic com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/isDeleteReplyEnable(JJJJII)Z
ifeq L6
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L0:
aload 0
new com/nd/schoollife/ui/post/listener/CommentAndReplyListener
dup
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/listener/CommentAndReplyListener/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L2:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/isMaster Z
goto L1
L6:
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDelBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L0
.limit locals 14
.limit stack 10
.end method

.method public setDeleteOnClickListener(Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mDeleteOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 2
.limit stack 2
.end method
