.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements android/view/View$OnClickListener

.field private static final 'SEARCH_MORE_DEFAULT_SIZE' I = 10


.field private static final 'TAG' Ljava/lang/String;

.field private 'currentPage' I

.field private 'keyWord' Ljava/lang/String;

.field private 'mAdapter' Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;

.field private 'mBtnBack' Landroid/widget/Button;

.field private 'mCommunityData' Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mPostData' Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;

.field private 'mTeamData' Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;

.field private 'mTvKey' Landroid/widget/TextView;

.field private 'mTvTitle' Landroid/widget/TextView;

.field private 'searchType' I

.method static <clinit>()V
ldc com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchType I
aload 0
ldc ""
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/currentPage I
return
.limit locals 1
.limit stack 2
.end method

.method private searchData(Ljava/lang/String;Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchType I
lookupswitch
3 : L0
8 : L1
16 : L2
default : L3
L3:
sipush 768
istore 3
L4:
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mCtx Landroid/content/Context;
iload 3
aload 2
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/currentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_2
ldc "10"
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/currentPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/currentPage I
return
L2:
sipush 771
istore 3
goto L4
L1:
sipush 770
istore 3
goto L4
L0:
sipush 768
istore 3
goto L4
.limit locals 4
.limit stack 6
.end method

.method private updateTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchType I
lookupswitch
3 : L0
8 : L1
16 : L2
default : L3
L3:
return
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvTitle Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u66f4\u591a\u793e\u56e2\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvTitle Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u66f4\u591a\u5c0f\u7ec4\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvTitle Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u66f4\u591a\u5e16\u5b50\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_search_more I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mBtnBack Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_search_more_key I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvKey Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_search_more_list I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "type"
iconst_3
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchType I
aload 0
aload 1
ldc "key"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvKey Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTvKey Landroid/widget/TextView;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
L0:
aload 0
new com/nd/schoollife/ui/square/adapter/SearchListAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setKey(Ljava/lang/String;)V
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowMoreBtn(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowGroupTitle(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
aload 0
ldc "..."
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/updateTitle(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchData(Ljava/lang/String;Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mBtnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/onBackPressed()V
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
getstatic com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/TAG Ljava/lang/String;
ldc "onPullUpToLoadMore"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/keyWord Ljava/lang/String;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/searchData(Ljava/lang/String;Lcom/nd/schoollife/ui/common/task/CallStyle;)V
getstatic com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/TAG Ljava/lang/String;
ldc "onPullUpToLoadMore:: SEARCH_TYPE_SCOPE"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iconst_1
istore 5
aload 3
ifnonnull L0
return
L0:
iload 5
istore 4
iload 1
tableswitch 768
L1
L2
L3
L4
default : L5
L5:
iload 5
istore 4
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iload 4
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L6
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
L1:
iload 5
istore 4
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultSearchPost
ifeq L2
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultSearchPost
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mPostData Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mPostData Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addPostData(Ljava/util/List;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mPostData Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getTotal()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/updateTitle(Ljava/lang/String;)V
iload 5
istore 4
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mPostData Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 10
if_icmpge L2
iconst_0
istore 4
goto L2
L4:
iload 5
istore 4
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L2
aload 0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mCommunityData Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mCommunityData Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addCommunityData(Ljava/util/List;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mCommunityData Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/updateTitle(Ljava/lang/String;)V
iload 5
istore 4
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mCommunityData Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpge L2
iconst_0
istore 4
goto L2
L3:
iload 5
istore 4
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L2
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
putfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTeamData Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTeamData Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addTeamData(Ljava/util/List;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTeamData Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/updateTitle(Ljava/lang/String;)V
iload 5
istore 4
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mTeamData Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpge L2
iconst_0
istore 4
goto L2
L6:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
.limit locals 6
.limit stack 3
.end method
