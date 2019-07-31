.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/view/RecommendCommunityView
.super com/nd/schoollife/ui/common/base/BaseViewManager
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.inner class static synthetic inner com/nd/schoollife/ui/community/view/RecommendCommunityView$1

.field private static final 'GET_HOT_COMMUNITY_SIZE' I = 20


.field private 'mAdapter' Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"

.field private 'mMainListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mNoDataRL' Landroid/widget/RelativeLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseViewManager/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getstatic com/nd/schoollife/R$layout/square_hot_community_view I
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/setContentView(I)Landroid/view/View;
astore 1
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 1
getstatic com/nd/schoollife/R$id/btn_create_community I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getstatic com/nd/schoollife/R$id/tv_community_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/str_square_community_norecommend I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_community_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mNoDataRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/lv_community_square I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
new com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter
dup
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 7
.end method

.method private showView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mNoDataRL Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mNoDataRL Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_1
istore 2
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
L0:
iconst_1
istore 2
L2:
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
aload 0
sipush 4111
aload 1
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 2
goto L2
.limit locals 3
.limit stack 7
.end method

.method public getRecommendView()Landroid/view/View;
aload 0
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/getViewContainer()Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected hasData()Z
iconst_0
istore 2
aload 0
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/getCommunityData()Ljava/util/List;
putfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mData Ljava/util/List;
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mData Ljava/util/List;
ifnull L0
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_create_community I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mContext Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CreateCommunityActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onReloadClicked()V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/startTask(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
astore 3
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/isSuccess()Z
ifeq L1
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 3
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmplt L2
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/showDefaultNoMoreFootView()V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/setHasMoreDataFlag(Z)V
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
L2:
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mAdapter Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
aload 3
iconst_1
invokevirtual com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/updateData(Ljava/util/List;Z)V
L1:
getstatic com/nd/schoollife/ui/community/view/RecommendCommunityView$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
aload 2
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
iaload
tableswitch 1
L3
L3
L4
default : L0
L0:
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/hasData()Z
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/showView(Z)V
return
L3:
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
goto L0
L4:
aload 0
getfield com/nd/schoollife/ui/community/view/RecommendCommunityView/mMainListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L0
.limit locals 4
.limit stack 3
.end method
