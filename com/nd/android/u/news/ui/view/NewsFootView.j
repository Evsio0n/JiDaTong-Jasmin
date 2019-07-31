.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/view/NewsFootView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.implements com/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener
.inner class static synthetic inner com/nd/android/u/news/ui/view/NewsFootView$1
.inner class public static abstract interface OnZanActionListener inner com/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener outer com/nd/android/u/news/ui/view/NewsFootView
.inner class private ZanTask inner com/nd/android/u/news/ui/view/NewsFootView$ZanTask outer com/nd/android/u/news/ui/view/NewsFootView

.field private final 'ACTION_ZAN' I

.field private final 'ACTION_ZAN_CANCEL' I

.field private 'drawZanCancel' Landroid/graphics/drawable/Drawable;

.field private 'drawZanConfirm' Landroid/graphics/drawable/Drawable;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentStatus' I

.field private 'mListener' Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;

.field private 'mNewsId' J

.field private 'mNewsInfoBean' Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;

.field private 'mZanTotal' I

.field private 'newsType' Ljava/lang/String;

.field private 'task' Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;

.field private 'tvTotalComment' Landroid/widget/TextView;

.field private 'tvTotalZan' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN I
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN_CANCEL I
aload 0
ldc "news"
putfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_confirm I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_cancel I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/NewsFootView/initConstruct(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN I
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN_CANCEL I
aload 0
ldc "news"
putfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_confirm I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_cancel I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/NewsFootView/initConstruct(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN I
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/ACTION_ZAN_CANCEL I
aload 0
ldc "news"
putfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_confirm I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$drawable/btn_zan_cancel I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/NewsFootView/initConstruct(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/view/NewsFootView;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/news/ui/view/NewsFootView;)Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/news/ui/view/NewsFootView;Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;)Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/view/NewsFootView;)J
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/news/ui/view/NewsFootView;)I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/news/ui/view/NewsFootView;I)I
aload 0
iload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/view/NewsFootView;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/news/ui/view/NewsFootView;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/view/NewsFootView;)I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$604(Lcom/nd/android/u/news/ui/view/NewsFootView;)I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iconst_1
iadd
istore 1
aload 0
iload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$606(Lcom/nd/android/u/news/ui/view/NewsFootView;)I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iconst_1
isub
istore 1
aload 0
iload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/news/ui/view/NewsFootView;)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/news/ui/view/NewsFootView;)Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/news/ui/view/NewsFootView;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tv_total_comment I
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tv_total_zan I
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private initConstruct(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/mContext Landroid/content/Context;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/common_newsphoto_foot I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
invokespecial com/nd/android/u/news/ui/view/NewsFootView/initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/view/NewsFootView/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public cancelTask()V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
invokevirtual com/nd/android/u/news/ui/view/NewsFootView$ZanTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/view/NewsFootView$ZanTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public clear()V
aload 0
lconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/mNewsId J
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
aload 0
ldc "news"
putfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/cancelTask()V
return
.limit locals 1
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/tv_total_zan I
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
getstatic com/nd/android/u/news/R$string/network_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
iconst_1
if_icmpne L3
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
ifnull L4
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
invokeinterface com/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener/cancelZan()V 0
L4:
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraised(I)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
astore 1
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iconst_1
isub
istore 2
aload 0
iload 2
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
L5:
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraises(I)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
ifnull L6
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
invokevirtual com/nd/android/u/news/ui/view/NewsFootView$ZanTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L2
L6:
aload 0
new com/nd/android/u/news/ui/view/NewsFootView$ZanTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/view/NewsFootView$ZanTask/<init>(Lcom/nd/android/u/news/ui/view/NewsFootView;Lcom/nd/android/u/news/ui/view/NewsFootView$1;)V
putfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/task Lcom/nd/android/u/news/ui/view/NewsFootView$ZanTask;
iconst_1
anewarray java/lang/Integer
dup
iconst_0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/news/ui/view/NewsFootView$ZanTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L3:
aload 0
iconst_1
putfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
ifnull L7
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
invokeinterface com/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener/zan()V 0
L7:
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraised(I)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
astore 1
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
goto L5
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mContext Landroid/content/Context;
ldc com/nd/android/u/news/ui/activity/PraiseCommentsListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "news_id"
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
.end method

.method public setCmtCount(I)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setReplys(I)V
L0:
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
iload 1
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setCommentOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setNewsId(Ljava/lang/String;JLcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/clear()V
aload 4
astore 5
aload 4
ifnonnull L0
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 5
L0:
aload 0
aload 5
putfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
lload 2
putfield com/nd/android/u/news/ui/view/NewsFootView/mNewsId J
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/newsType Ljava/lang/String;
aload 0
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPraised()I
putfield com/nd/android/u/news/ui/view/NewsFootView/mCurrentStatus I
aload 0
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPraises()I
putfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPraised()I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanConfirm Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
L2:
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalComment Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getReplys()I
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mZanTotal I
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/drawZanCancel Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L2
.limit locals 6
.limit stack 5
.end method

.method public setOnZanActionListener(Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/NewsFootView/mListener Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setPraiseCount(I)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setPraises(I)V
L0:
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
iload 1
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setText(Landroid/widget/TextView;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setText(Landroid/widget/TextView;I)V
iload 2
ifge L0
aload 1
iconst_0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
iload 2
iflt L2
iload 2
sipush 1000
if_icmpge L2
aload 1
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
iload 2
sipush 1000
if_icmplt L3
iload 2
sipush 10000
if_icmpge L3
new java/math/BigDecimal
dup
iload 2
i2d
ldc2_w 1000.0D
ddiv
invokespecial java/math/BigDecimal/<init>(D)V
iconst_1
iconst_4
invokevirtual java/math/BigDecimal/setScale(II)Ljava/math/BigDecimal;
invokevirtual java/math/BigDecimal/doubleValue()D
dstore 3
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
dload 3
invokestatic java/lang/String/valueOf(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u5343"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
iload 2
sipush 10000
if_icmplt L1
new java/math/BigDecimal
dup
iload 2
i2d
ldc2_w 10000.0D
ddiv
invokespecial java/math/BigDecimal/<init>(D)V
iconst_1
iconst_4
invokevirtual java/math/BigDecimal/setScale(II)Ljava/math/BigDecimal;
invokevirtual java/math/BigDecimal/doubleValue()D
dstore 3
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
dload 3
invokestatic java/lang/String/valueOf(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e07"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 6
.end method

.method public setZanOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsFootView/tvTotalZan Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
