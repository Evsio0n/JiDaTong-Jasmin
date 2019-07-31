.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/TeamCategoryActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener

.field public static final 'CATEGORY_ID' Ljava/lang/String; = "category_id"

.field public static final 'CATEGORY_NAME' Ljava/lang/String; = "category_name"

.field private static final 'TEAM_ITEM_DEFAULT_SIZE' I = 10


.field private 'mAdapter' Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;

.field private 'mBtnBack' Landroid/widget/Button;

.field private 'mCategoryID' J

.field private 'mCurrentPage' I

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mTvKey' Landroid/widget/TextView;

.field private 'mTvTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCurrentPage I
return
.limit locals 1
.limit stack 2
.end method

.method private getData(JZ)V
iload 3
ifeq L0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
astore 4
L1:
new com/nd/schoollife/ui/square/task/TeamDataTask
dup
aload 0
sipush 261
aload 4
aload 0
invokespecial com/nd/schoollife/ui/square/task/TeamDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCurrentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
ldc "10"
aastore
dup
iconst_2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/square/task/TeamDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
astore 4
goto L1
.limit locals 5
.limit stack 7
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_team_category I
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_search_more_key I
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mTvKey Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_team_category_list I
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnonnull L0
return
L0:
aload 1
ldc "category_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mTvTitle Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 1
ldc "category_id"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCategoryID J
aload 0
new com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCategoryID J
iconst_1
invokespecial com/nd/schoollife/ui/square/activity/TeamCategoryActivity/getData(JZ)V
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mBtnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected initEvent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mBtnBack Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mTvTitle Landroid/widget/TextView;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/TeamCategoryActivity/onBackPressed()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
return
.limit locals 2
.limit stack 0
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCategoryID J
iconst_0
invokespecial com/nd/schoollife/ui/square/activity/TeamCategoryActivity/getData(JZ)V
return
.limit locals 2
.limit stack 4
.end method

.method public onReloadClicked()V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCategoryID J
iconst_1
invokespecial com/nd/schoollife/ui/square/activity/TeamCategoryActivity/getData(JZ)V
return
.limit locals 1
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifne L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
L1:
iload 1
tableswitch 261
L2
default : L3
L3:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
L2:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L3
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
astore 3
aload 3
ifnull L4
aload 3
invokeinterface java/util/List/isEmpty()Z 0
ifne L4
aload 3
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpge L5
L4:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/setData(Ljava/util/List;)V
goto L3
L5:
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCurrentPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/square/activity/TeamCategoryActivity/mCurrentPage I
goto L6
.limit locals 4
.limit stack 3
.end method
