.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/PullToRefreshListView
.super com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase
.signature "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<Landroid/widget/ListView;>;"
.inner class protected InternalListView inner com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView outer com/handmark/pulltorefresh/library/PullToRefreshListView
.inner class final InternalListViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshListView

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode' [I

.field private 'mFooterLoadingView' Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private 'mHeaderLoadingView' Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private 'mListViewExtrasEnabled' Z

.field private 'mLvFooterLoadingFrame' Landroid/widget/FrameLayout;

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
getstatic com/handmark/pulltorefresh/library/PullToRefreshListView/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
astore 0
aload 0
ifnull L11
aload 0
areturn
L11:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_4
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_1
iastore
L3:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_5
iastore
L5:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_3
iastore
L7:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_2
iastore
L9:
aload 0
putstatic com/handmark/pulltorefresh/library/PullToRefreshListView/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
aload 0
areturn
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mLvFooterLoadingFrame Landroid/widget/FrameLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
new com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9
dup
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
L0:
new com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView
dup
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
aload 0
iload 1
iload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
astore 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mListViewExtrasEnabled Z
ifeq L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 4
iload 1
ifeq L1
aload 4
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L1
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/LoadingLayoutProxy/addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
L1:
iload 2
ifeq L0
aload 4
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/LoadingLayoutProxy/addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method protected volatile synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
aload 0
aload 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
aload 0
aload 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
astore 1
aload 1
ldc_w 16908298
invokevirtual android/widget/ListView/setId(I)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/handleStyledAttributes(Landroid/content/res/TypedArray;)V
aload 0
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrListViewExtrasEnabled"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshListView/mListViewExtrasEnabled Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mListViewExtrasEnabled Z
ifeq L0
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
bipush -2
iconst_1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(III)V
astore 2
new android/widget/FrameLayout
dup
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getContext()Landroid/content/Context;
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
astore 3
aload 0
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getContext()Landroid/content/Context;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
putfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 2
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
aload 3
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new android/widget/FrameLayout
dup
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getContext()Landroid/content/Context;
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshListView/mLvFooterLoadingFrame Landroid/widget/FrameLayout;
aload 0
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getContext()Landroid/content/Context;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
putfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mLvFooterLoadingFrame Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 2
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrScrollingWhileRefreshingEnabled"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifne L0
aload 0
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setScrollingWhileRefreshingEnabled(Z)V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method protected onRefreshing(Z)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
astore 4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mListViewExtrasEnabled Z
ifeq L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getShowViewWhileRefreshing()Z
ifeq L0
aload 4
ifnull L0
aload 4
invokeinterface android/widget/ListAdapter/isEmpty()Z 0
ifeq L1
L0:
aload 0
iload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/onRefreshing(Z)V
L2:
return
L1:
aload 0
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/onRefreshing(Z)V
invokestatic com/handmark/pulltorefresh/library/PullToRefreshListView/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L3
L4
L3
default : L4
L4:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 5
iconst_0
istore 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getScrollY()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getHeaderSize()I
iadd
istore 2
L5:
aload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/reset()V
aload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/hideAllViews()V
aload 5
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 4
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/refreshing()V
iload 1
ifeq L2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/disableLoadingLayoutVisibilityChanges()V
aload 0
iload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setHeaderScroll(I)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
iload 3
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/smoothScrollTo(I)V
return
L3:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getCount()I
iconst_1
isub
istore 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getScrollY()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getFooterSize()I
isub
istore 2
goto L5
.limit locals 7
.limit stack 2
.end method

.method protected onReset()V
iconst_1
istore 4
iconst_1
istore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mListViewExtrasEnabled Z
ifne L0
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/onReset()V
return
L0:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshListView/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L1
L2
L1
default : L2
L2:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 5
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getHeaderSize()I
ineg
istore 2
iconst_0
istore 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
iconst_0
isub
invokestatic java/lang/Math/abs(I)I
iconst_1
if_icmpgt L3
L4:
aload 5
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getVisibility()I
ifne L5
aload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/showInvisibleViews()V
aload 5
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
iload 1
ifeq L5
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpeq L5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
iload 3
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
iload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setHeaderScroll(I)V
L5:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/onReset()V
return
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getCount()I
iconst_1
isub
istore 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getFooterSize()I
istore 2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getLastVisiblePosition()I
iload 3
isub
invokestatic java/lang/Math/abs(I)I
iconst_1
if_icmpgt L6
iload 4
istore 1
L7:
goto L4
L6:
iconst_0
istore 1
goto L7
L3:
iconst_0
istore 1
goto L4
.limit locals 7
.limit stack 2
.end method

.method public showRefreshView()V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 1
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/reset()V
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/hideAllViews()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mFooterLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView/mHeaderLoadingView Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/refreshing()V
return
.limit locals 2
.limit stack 2
.end method
