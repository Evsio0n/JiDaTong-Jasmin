.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/ZanListActivity
.super com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.inner class inner com/nd/android/u/news/ui/activity/ZanListActivity$1
.inner class private GetPraiseListTask inner com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask outer com/nd/android/u/news/ui/activity/ZanListActivity

.field public static final 'ITEM_SPACING' I = 15


.field private static final 'NUMS' I = 70


.field private 'adapter' Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;

.field private 'gvZan' Landroid/widget/GridView;

.field private 'isHaveMore' Z

.field private 'mNewsId' J

.field private 'mTask' Lcom/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask;

.field private 'page' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/ZanListActivity/page I
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/ZanListActivity/isHaveMore Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Z
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/isHaveMore Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/news/ui/activity/ZanListActivity/isHaveMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity/executeTask()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)I
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$308(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)I
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/page I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/news/ui/activity/ZanListActivity/page I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/adapter Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/ZanListActivity/adapter Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/gvZan Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mTvTitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mTvTitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private executeTask()V
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mTask Lcom/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mTask Lcom/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask;
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/<init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Lcom/nd/android/u/news/ui/activity/ZanListActivity$1;)V
putfield com/nd/android/u/news/ui/activity/ZanListActivity/mTask Lcom/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mTask Lcom/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask;
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mNewsId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private initData()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/getIntent()Landroid/content/Intent;
ifnonnull L0
return
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/getIntent()Landroid/content/Intent;
ldc "news_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/ZanListActivity/mNewsId J
aload 0
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity/executeTask()V
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/gv_zan I
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/news/ui/activity/ZanListActivity/gvZan Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/mIbRight Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/gvZan Landroid/widget/GridView;
bipush 15
invokevirtual android/widget/GridView/setHorizontalSpacing(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initEvent()V
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity/gvZan Landroid/widget/GridView;
new com/nd/android/u/news/ui/activity/ZanListActivity$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity$1/<init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
invokevirtual android/widget/GridView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/news/R$layout/zan_list I
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity/initData()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
