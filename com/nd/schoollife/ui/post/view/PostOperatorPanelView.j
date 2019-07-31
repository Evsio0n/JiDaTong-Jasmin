.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/PostOperatorPanelView
.super android/widget/LinearLayout
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$1
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$2
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$3
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$4

.field public static final 'TAG' Ljava/lang/String;

.field final 'FLAG_CANCEL_PRAISE' I

.field final 'FLAG_DO_PRAISE' I

.field private 'isProcessing' Z

.field private 'mCommentBtn' Landroid/widget/ImageView;

.field private 'mCommentCountText' Landroid/widget/TextView;

.field private 'mCommentLayout' Landroid/widget/LinearLayout;

.field private 'mCtx' Landroid/content/Context;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mParentView' Landroid/view/View;

.field private 'mPosition' I

.field private 'mPost' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field private 'mPraiseCountText' Landroid/widget/TextView;

.field private 'mPraiseIv' Landroid/widget/ImageView;

.field private 'mPraiseLayout' Landroid/widget/LinearLayout;

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/view/PostOperatorPanelView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/isProcessing Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/FLAG_DO_PRAISE I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/FLAG_CANCEL_PRAISE I
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/initView(Landroid/content/Context;)V
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
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/isProcessing Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/FLAG_DO_PRAISE I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/FLAG_CANCEL_PRAISE I
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/initView(Landroid/content/Context;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Z
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/isProcessing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/isProcessing Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/cancelPraise()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/doPraise()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method private cancelPraise()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
lsub
lstore 1
lload 1
lconst_0
lcmp
iflt L1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
L1:
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/refreshPraiseView()V
new com/nd/schoollife/ui/post/task/PostPraiseProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
bipush 7
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostPraiseProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostPraiseProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 7
.end method

.method private doPraise()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/refreshPraiseView()V
new com/nd/schoollife/ui/post/task/PostPraiseProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
bipush 6
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostPraiseProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostPraiseProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 7
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/post_item_operator_panel_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_praise_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_comment_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_praise_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_comment_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentCountText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_praise_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_comment_count I
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PostOperatorPanelView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView$1/<init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PostOperatorPanelView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/<init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method private refreshPraiseView()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStrForCount(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentCountText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/TextView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentCountText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStrForCount(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
.limit locals 1
.limit stack 3
.end method

.method private sendPraiseResult(ZI)V
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
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_OR_CANCEL"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_TYPE"
getstatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/LIST Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
aload 3
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
iload 1
ifne L0
iload 2
iconst_1
if_icmpne L1
iconst_0
istore 1
L2:
aload 0
iload 1
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/updatePraiseView(Z)V
L0:
return
L1:
iconst_1
istore 1
goto L2
.limit locals 4
.limit stack 4
.end method

.method private updatePraiseView(Z)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTag()Ljava/lang/Object;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTag()Ljava/lang/Object;
instanceof java/lang/Long
ifeq L7
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
L1:
iload 1
ifeq L5
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
lconst_1
lload 2
ladd
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStrForCount(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseCountText Landroid/widget/TextView;
lload 2
lconst_1
lsub
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getFormatStrForCount(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
L6:
return
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
L7:
return
.limit locals 5
.limit stack 5
.end method

.method public fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 1
ifnonnull L3
L0:
getstatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/TAG Ljava/lang/String;
ldc "PostInfoBean is null"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L3:
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual android/widget/LinearLayout/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/refreshPraiseView()V
L4:
new com/nd/schoollife/ui/post/listener/CommentAndReplyListener
dup
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/listener/CommentAndReplyListener/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setParentView(Landroid/view/View;)V
aload 1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPosition I
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setPosition(I)V
aload 1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getPositionListener()Lcom/nd/schoollife/ui/square/listener/PositionListener;
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
new com/nd/schoollife/ui/post/view/PostOperatorPanelView$4
dup
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/<init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
.limit locals 2
.limit stack 5
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L0
iconst_1
istore 4
L1:
ldc ""
astore 2
iload 1
bipush 6
if_icmpne L2
ldc "\u70b9\u8d5e\u5931\u8d25"
astore 2
aload 0
iload 4
iconst_1
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/sendPraiseResult(ZI)V
L3:
iload 4
ifne L4
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L4:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/isProcessing Z
return
L0:
iconst_0
istore 4
goto L1
L2:
iload 1
bipush 7
if_icmpne L3
ldc "\u53d6\u6d88\u8d5e\u5931\u8d25"
astore 2
aload 0
iload 4
iconst_0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView/sendPraiseResult(ZI)V
goto L3
.limit locals 5
.limit stack 3
.end method

.method public setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 2
.limit stack 2
.end method

.method public setParentView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public setPosition(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPosition I
return
.limit locals 2
.limit stack 2
.end method

.method public setPraiseOnClickListerner(Landroid/view/View$OnClickListener;)V
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public showPraiseIvAnim()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
ifnonnull L0
return
L0:
new android/view/animation/ScaleAnimation
dup
fconst_1
ldc_w 1.5F
fconst_1
ldc_w 1.5F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
astore 1
aload 1
ldc2_w 300L
invokevirtual android/view/animation/ScaleAnimation/setDuration(J)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPraiseIv Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 1
new com/nd/schoollife/ui/post/view/PostOperatorPanelView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PostOperatorPanelView$3/<init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
invokevirtual android/view/animation/ScaleAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return
.limit locals 2
.limit stack 10
.end method

.method public updateCommentCount()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentCountText Landroid/widget/TextView;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentBtn Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getTag()Ljava/lang/Object;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L4
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mCommentCountText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public updateCommentInfo(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
instanceof com/nd/schoollife/ui/post/view/inter/IPostListItemView
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/inter/IPostListItemView
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView/mParentView Landroid/view/View;
aload 1
invokeinterface com/nd/schoollife/ui/post/view/inter/IPostListItemView/updateCommentInfoInPostListItem(Landroid/view/View;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V 2
L0:
aload 0
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/updateCommentCount()V
return
.limit locals 2
.limit stack 3
.end method
