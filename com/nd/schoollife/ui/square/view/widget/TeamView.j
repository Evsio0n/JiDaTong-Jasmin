.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/TeamView
.super com/nd/schoollife/ui/common/base/BaseView
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener

.field public static final 'PAGE' I = 1


.field public static final 'SIZE' I = 3


.field private 'mCategoryAdapter' Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;

.field private 'mCategoryLV' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mContext' Landroid/content/Context;

.field private 'mHotTeamView' Lcom/nd/schoollife/ui/square/view/HotTeamView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/initView()V
return
.limit locals 3
.limit stack 3
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/TeamView/getContext()Landroid/content/Context;
putfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
getstatic com/nd/schoollife/R$layout/fragment_square_hot_team I
aconst_null
invokestatic com/nd/schoollife/ui/square/view/widget/TeamView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/widget/TeamView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/TeamView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
new com/nd/schoollife/ui/square/view/HotTeamView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/HotTeamView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/view/widget/TeamView/mHotTeamView Lcom/nd/schoollife/ui/square/view/HotTeamView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/gv_square_hot_team_category I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
new com/nd/schoollife/ui/square/adapter/CategoryItemAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mHotTeamView Lcom/nd/schoollife/ui/square/view/HotTeamView;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/TeamView/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 4
.end method

.method private startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
new com/nd/schoollife/ui/square/task/TeamDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
aload 0
sipush 259
aload 1
aload 0
invokespecial com/nd/schoollife/ui/square/task/TeamDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "1"
aastore
dup
iconst_1
ldc "3"
aastore
dup
iconst_2
ldc "-1"
aastore
invokevirtual com/nd/schoollife/ui/square/task/TeamDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
new com/nd/schoollife/ui/square/task/TeamDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mContext Landroid/content/Context;
aload 0
sipush 260
aload 1
aload 0
invokespecial com/nd/schoollife/ui/square/task/TeamDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_0
anewarray java/lang/String
invokevirtual com/nd/schoollife/ui/square/task/TeamDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
return
.limit locals 2
.limit stack 0
.end method

.method public onReloadClicked()V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
tableswitch 259
L0
L1
default : L2
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
L0:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L2
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
astore 2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mHotTeamView Lcom/nd/schoollife/ui/square/view/HotTeamView;
aload 2
invokevirtual com/nd/schoollife/ui/square/view/HotTeamView/setData(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
goto L2
L1:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
ifeq L2
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/getList()Ljava/util/List;
astore 2
aload 2
ifnull L3
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifeq L4
L3:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/getCount()I
ifgt L6
L5:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mHotTeamView Lcom/nd/schoollife/ui/square/view/HotTeamView;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/HotTeamView/showAllCategory(Z)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mCategoryAdapter Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
aload 2
invokevirtual com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/setData(Ljava/util/List;)V
goto L2
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/TeamView/mHotTeamView Lcom/nd/schoollife/ui/square/view/HotTeamView;
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/HotTeamView/showAllCategory(Z)V
goto L6
.limit locals 4
.limit stack 2
.end method
