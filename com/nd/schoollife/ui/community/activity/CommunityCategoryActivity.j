.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/CommunityCategoryActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener

.field private static final 'COMMUNITY_ITEM_DEFAULT_SIZE' I = 20


.field private 'mAdapter' Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;

.field private 'mBtnBack' Landroid/widget/Button;

.field private 'mCategoryID' J

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mTvTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getData(JLcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_1
istore 4
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
L0:
iconst_1
istore 4
L2:
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4109
aload 3
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 4
goto L2
.limit locals 5
.limit stack 7
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_community_category I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_community_category_list I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter
dup
aload 0
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/getIntent()Landroid/content/Intent;
astore 2
ldc ""
astore 1
aload 2
ifnull L0
aload 0
aload 2
ldc "category_id"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mCategoryID J
aload 2
ldc "category_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mCategoryID J
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/getData(JLcom/nd/schoollife/ui/common/task/CallStyle;)V
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mBtnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
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
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 2
ldc "category_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mBtnBack Landroid/widget/Button;
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/onBackPressed()V
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
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mCategoryID J
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/getData(JLcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onReloadClicked()V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mCategoryID J
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/getData(JLcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isSuccess()Z
ifne L1
L0:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/showEmptyView()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L3:
return
L2:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
L4:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
L1:
iload 1
tableswitch 4109
L5
default : L6
L6:
return
L5:
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L3
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
astore 3
aload 3
ifnull L7
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
iconst_1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/updateData(Ljava/util/List;Z)V
L7:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L8
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L9
L8:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
L9:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityCategoryActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
.limit locals 4
.limit stack 3
.end method
