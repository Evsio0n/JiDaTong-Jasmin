.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchGroupResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchGroupResultActivity$1
.inner class inner com/nd/android/u/contact/activity/SearchGroupResultActivity$2
.inner class private SearcdGroupTask inner com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask outer com/nd/android/u/contact/activity/SearchGroupResultActivity

.field private final 'PAGESIZE' I

.field private final 'TAG' Ljava/lang/String;

.field private 'endIndex' I

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'gid' Ljava/lang/String;

.field private 'groupidStr' Ljava/lang/String;

.field 'isAddFootView' Z

.field protected 'isFootViewCancel' Z

.field protected 'isLoading' Z

.field private 'key' Ljava/lang/String;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'mDialog' Landroid/app/ProgressDialog;

.field private 'mResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'mResultListView' Landroid/widget/ListView;

.field private 'mSearcdGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearcdGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mSearchGroupadapter' Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;

.field private 'progressBar' Landroid/widget/ProgressBar;

.field private 'searchType' I

.field 'show' Z

.field private 'start' I

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "SearchUserResultActivity"
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/gid Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/start I
aload 0
bipush 15
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/PAGESIZE I
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/total I
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/show Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/isAddFootView Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
aload 0
new com/nd/android/u/contact/activity/SearchGroupResultActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity$2/<init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/endIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/gid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/endIndex I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/start I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/start I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onSearchFailure(Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
aload 0
new com/nd/android/u/contact/adapter/SearchGroupAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SearchGroupAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L4
L3:
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity/onSearchFailure(Ljava/lang/String;)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L5:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L6:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/list Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearchGroupadapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/notifyDataSetChanged()V
goto L2
.limit locals 1
.limit stack 5
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$layout/search_user_result I
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/initComponentValue()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_result_user_list I
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/getMoreView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/contact/R$id/head_progressBar I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/progressBar Landroid/widget/ProgressBar;
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/searchType I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/searchType I
tableswitch 0
L0
L1
default : L2
L2:
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/show Z
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/searchGroup()V
aload 0
getstatic com/nd/android/u/contact/R$string/searchresult I
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 1
ldc "groupid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 1
ldc "groupid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/gid Ljava/lang/String;
goto L2
L1:
aload 1
ldc "key"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 1
ldc "key"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
ifnull L2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/key Ljava/lang/String;
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mResultListView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/SearchGroupResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public searchGroup()V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/<init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Lcom/nd/android/u/contact/activity/SearchGroupResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/mSearcdGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
