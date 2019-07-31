.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity
.super com/nd/schoollife/ui/common/base/BaseFragmentActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.implements android/widget/AbsListView$OnScrollListener
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$1
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2

.field private 'btnBack' Landroid/widget/Button;

.field private 'btnClear' Landroid/widget/Button;

.field private 'btnCreateNew' Landroid/widget/Button;

.field private 'etSearch' Landroid/widget/EditText;

.field private 'llNoData' Landroid/widget/LinearLayout;

.field private 'mAdapter' Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;

.field private 'mCurrentPage' I

.field private 'mKeyWord' Ljava/lang/String;

.field private 'mSoftInputUtil' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.field private 'pullListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity/<init>()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)I
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
aload 0
aload 1
aload 2
iload 3
iload 4
iload 5
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
return
.limit locals 6
.limit stack 6
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;II)V
aload 0
aload 1
aload 2
iload 3
iload 4
iconst_0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
return
.limit locals 5
.limit stack 6
.end method

.method private startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCtx Landroid/content/Context;
ldc "\u641c\u7d22\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L2:
return
L1:
aload 0
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mKeyWord Ljava/lang/String;
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setClickable(Z)V
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4107
aload 1
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mKeyWord Ljava/lang/String;
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
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
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
iload 5
ifeq L2
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/showLoading()V
return
.limit locals 6
.limit stack 6
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_search_community_result I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/pull_list_view_result I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_search_community_back I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnBack Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_search_community_clear I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_search_community_new_community I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnCreateNew Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/et_search_community I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_search_community_no_data I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/llNoData Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
aload 0
new com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter
dup
aload 0
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 10
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 1
ldc "keyWord"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
bipush 10
iconst_1
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/clearData()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mSoftInputUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
return
.limit locals 2
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnCreateNew Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new com/nd/schoollife/common/utils/MyLengthFilter
dup
bipush 30
invokespecial com/nd/schoollife/common/utils/MyLengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
new com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
new com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)V
invokevirtual android/widget/EditText/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
iconst_3
invokevirtual android/widget/EditText/setImeOptions(I)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/search_community_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_search_community_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/onBackPressed()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_search_community_clear I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/clearData()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
iconst_1
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/setHasMoreDataFlag(Z)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/removeFootView()Z
pop
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/btn_search_community_new_community I
if_icmpne L1
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/CreateCommunityActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
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
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
bipush 10
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;II)V
return
.limit locals 2
.limit stack 5
.end method

.method public onReloadClicked()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
bipush 10
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/startSearchByKeyTask(Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;II)V
return
.limit locals 1
.limit stack 5
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mSoftInputUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mSoftInputUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/dismissLoading()V
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/isSuccess()Z
ifne L1
L0:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/showEmptyView()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L3:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
return
L2:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L4
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
goto L3
L4:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L3
L1:
iload 1
tableswitch 4107
L5
default : L6
L6:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/btnClear Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
return
L5:
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/etSearch Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
astore 3
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L7
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L8
L7:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
ifnull L9
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L9
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mKeyWord Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/updateData(Ljava/util/List;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/llNoData Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
L10:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L11:
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mCurrentPage I
goto L6
L9:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/llNoData Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L10
L8:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L11
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
ifnull L12
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L12
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmplt L12
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/showDefaultNoMoreFootView()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/setHasMoreDataFlag(Z)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L6
L12:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mAdapter Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/mKeyWord Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/updateData(Ljava/util/List;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/llNoData Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/pullListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L11
.limit locals 4
.limit stack 3
.end method
