.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
.super com/handmark/pulltorefresh/library/PullToRefreshListView
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.inner class inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1
.inner class public static final enum ActionMode inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode outer com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
.inner class public static abstract interface ProcessOnLastItemVisibleListener inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener outer com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
.inner class public static abstract interface PullToActionListener inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener outer com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView

.field public static final 'TAG' Ljava/lang/String;

.field private 'hasMoreDataFlag' Z

.field private 'isDefaultNoMoreContentViewShowing' Z

.field private 'isLoadingMore' Z

.field private 'mActionListerner' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;

.field private 'mActionMode' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.field private 'mCtx' Landroid/content/Context;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mFooterTextView' Landroid/widget/TextView;

.field private 'mLoadMoreFooterView' Landroid/view/View;

.field private 'mNoMoreDataToLoadText' Landroid/widget/TextView;

.field private 'mOnLastItemVisibleListener' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;

.field private 'pageCtrl' Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/init(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionListerner Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private addLoadMoreFoodView()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
ifnonnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mCtx Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
getstatic com/nd/schoollife/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mFooterTextView Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
getstatic com/nd/schoollife/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mFooterProgressBar Landroid/view/View;
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mFooterProgressBar Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mFooterProgressBar Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mFooterTextView Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/str_square_common_foot_loading I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
return
.limit locals 1
.limit stack 4
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/registerActionListener()V
return
.limit locals 2
.limit stack 2
.end method

.method private initNoMoreDataToLoadText()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
ifnonnull L0
aload 0
new android/widget/TextView
dup
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mCtx Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setBackgroundColor(I)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_more_data I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
iconst_0
bipush 10
iconst_0
bipush 10
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method private registerActionListener()V
aload 0
new com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$1/<init>(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
return
.limit locals 1
.limit stack 4
.end method

.method public callPullDownToRefresh(Z)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L0
L1:
return
L0:
iload 1
ifne L1
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setRefreshing(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public getNoMoreDataToLoadText()Landroid/widget/TextView;
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/initNoMoreDataToLoadText()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmActionMode()Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isLoadingMore()Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onLastItemVisible()V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isRefreshing()Z
ifne L0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/isShowLoadMoreView()Z 0
ifne L3
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mOnLastItemVisibleListener Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mOnLastItemVisibleListener Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;
aload 0
invokeinterface com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener/processOnLastItemWhenNoMoreData(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)V 1
return
L4:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/showDefaultNoMoreFootView()V
return
L3:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
bipush 98
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/setAction(I)V 1
L5:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionListerner Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
ifnull L6
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setLoadingMore(Z)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionListerner Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
aload 0
invokeinterface com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener/onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
L6:
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/addLoadMoreFoodView()V
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
ifne L5
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mOnLastItemVisibleListener Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mOnLastItemVisibleListener Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;
aload 0
invokeinterface com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener/processOnLastItemWhenNoMoreData(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;)V 1
return
L7:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/showDefaultNoMoreFootView()V
return
.limit locals 1
.limit stack 2
.end method

.method public onLoadMoreComplate()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
ifnull L0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L0:
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setLoadingMore(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public removeFootView()Z
iconst_0
istore 1
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
ifnull L0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
istore 1
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mLoadMoreFooterView Landroid/view/View;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
istore 1
L1:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
L1:
aload 0
ldc "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_UP_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
ldc "\u677e\u5f00\u52a0\u8f7d"
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_UP_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
ldc "\u52a0\u8f7d\u66f4\u591a\u4e2d......"
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_UP_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L2
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
goto L1
L2:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L3
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
goto L1
L3:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionMode Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
if_acmpne L1
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
goto L1
.limit locals 2
.limit stack 3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl
ifeq L0
aload 0
aload 1
checkcast com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setHasMoreDataFlag(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/hasMoreDataFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLoadingMore(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isLoadingMore Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnLastItemVisibleListener(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mOnLastItemVisibleListener Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ProcessOnLastItemVisibleListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
ifnull L0
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L1
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
L1:
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
bipush 99
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/setAction(I)V 1
L0:
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/pageCtrl Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;
bipush 98
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl/setAction(I)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mActionListerner Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showDefaultNoMoreFootView()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
ifne L1
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/initNoMoreDataToLoadText()V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/mNoMoreDataToLoadText Landroid/widget/TextView;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isDefaultNoMoreContentViewShowing Z
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method
