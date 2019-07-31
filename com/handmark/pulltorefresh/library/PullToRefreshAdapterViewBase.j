.bytecode 50.0
.class public synchronized abstract com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase
.super com/handmark/pulltorefresh/library/PullToRefreshBase
.implements android/widget/AbsListView$OnScrollListener
.signature "<T:Landroid/widget/AbsListView;>Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;Landroid/widget/AbsListView$OnScrollListener;"

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode' [I

.field private 'mEmptyView' Landroid/view/View;

.field private 'mIndicatorIvBottom' Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private 'mIndicatorIvTop' Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private 'mLastItemVisible' Z

.field private 'mOnLastItemVisibleListener' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private 'mOnScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'mScrollEmptyView' Z

.field private 'mShowIndicator' Z

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
getstatic com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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
putstatic com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 0
invokevirtual android/widget/AbsListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 0
invokevirtual android/widget/AbsListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 0
invokevirtual android/widget/AbsListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 0
invokevirtual android/widget/AbsListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method private addIndicatorViews()V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getRefreshableViewWrapper()Landroid/widget/FrameLayout;
astore 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnonnull L0
aload 0
new com/handmark/pulltorefresh/library/internal/IndicatorLayout
dup
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getContext()Landroid/content/Context;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokespecial com/handmark/pulltorefresh/library/internal/IndicatorLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 3
aload 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getResources()Landroid/content/res/Resources;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mContext Landroid/content/Context;
ldc "indicator_right_padding"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDimenId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/FrameLayout$LayoutParams/rightMargin I
aload 3
bipush 53
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
aload 3
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L1:
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnonnull L2
aload 0
new com/handmark/pulltorefresh/library/internal/IndicatorLayout
dup
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getContext()Landroid/content/Context;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokespecial com/handmark/pulltorefresh/library/internal/IndicatorLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 2
aload 2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getResources()Landroid/content/res/Resources;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mContext Landroid/content/Context;
ldc "indicator_right_padding"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDimenId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/FrameLayout$LayoutParams/rightMargin I
aload 2
bipush 85
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
aload 2
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L3:
return
L0:
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifne L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L1
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
goto L1
L2:
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifne L3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L3
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
return
.limit locals 4
.limit stack 5
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
aconst_null
astore 1
aload 0
ifnull L0
new android/widget/FrameLayout$LayoutParams
dup
aload 0
invokespecial android/widget/FrameLayout$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
astore 1
aload 0
instanceof android/widget/LinearLayout$LayoutParams
ifeq L1
aload 1
aload 0
checkcast android/widget/LinearLayout$LayoutParams
getfield android/widget/LinearLayout$LayoutParams/gravity I
putfield android/widget/FrameLayout$LayoutParams/gravity I
L0:
aload 1
areturn
L1:
aload 1
bipush 17
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private getAddedViewCount()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
instanceof android/widget/ListView
istore 2
iconst_0
istore 1
iload 2
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/ListView
astore 3
aload 3
invokevirtual android/widget/ListView/getFooterViewsCount()I
aload 3
invokevirtual android/widget/ListView/getHeaderViewsCount()I
iadd
istore 1
L0:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method private getShowIndicatorInternal()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mShowIndicator Z
ifeq L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isPullToRefreshEnabled()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private isFirstItemVisible()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getFirstVisiblePosition()I
iconst_1
if_icmpgt L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
iconst_0
invokevirtual android/widget/AbsListView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/view/View/getTop()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getTop()I
if_icmplt L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isLastItemVisible()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getAdapter()Landroid/widget/Adapter;
astore 3
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getAddedViewCount()I
ifne L0
aload 3
ifnull L1
aload 3
invokeinterface android/widget/Adapter/isEmpty()Z 0
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getCount()I
istore 2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
istore 1
iload 1
iload 2
iconst_1
isub
iconst_1
isub
if_icmplt L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getFirstVisiblePosition()I
istore 2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
iload 1
iload 2
isub
invokevirtual android/widget/AbsListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual android/view/View/getBottom()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
invokevirtual android/widget/AbsListView/getBottom()I
if_icmpgt L3
iconst_1
ireturn
L3:
iconst_0
ireturn
L2:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method private removeIndicatorViews()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getRefreshableViewWrapper()Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getRefreshableViewWrapper()Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
L1:
return
.limit locals 1
.limit stack 2
.end method

.method private updateIndicatorViewsVisibility()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isRefreshing()Z
ifne L1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isReadyForPullStart()Z
ifeq L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/isVisible()Z
ifne L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/show()V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
ifnull L2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isRefreshing()Z
ifne L3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isReadyForPullEnd()Z
ifeq L3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/isVisible()Z
ifne L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/show()V
L2:
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/isVisible()Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/hide()V
goto L0
L3:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/isVisible()Z
ifeq L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/hide()V
return
.limit locals 1
.limit stack 1
.end method

.method public getShowIndicator()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mShowIndicator Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
aload 0
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrShowIndicator"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mShowIndicator Z
return
.limit locals 2
.limit stack 4
.end method

.method protected isReadyForPullEnd()Z
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isLastItemVisible()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected isReadyForPullStart()Z
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/isFirstItemVisible()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onPullToRefresh()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onPullToRefresh()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 2
L1
L2
default : L0
L0:
return
L2:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/pullToRefresh()V
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/pullToRefresh()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onRefreshing(Z)V
aload 0
iload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onRefreshing(Z)V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/updateIndicatorViewsVisibility()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onReleaseToRefresh()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onReleaseToRefresh()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 2
L1
L2
default : L0
L0:
return
L2:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvBottom Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/releaseToRefresh()V
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mIndicatorIvTop Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/releaseToRefresh()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onReset()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onReset()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/updateIndicatorViewsVisibility()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnLastItemVisibleListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
ifnull L0
iload 4
ifle L1
iload 2
iload 3
iadd
iload 4
iconst_1
isub
if_icmplt L1
iconst_1
istore 5
L2:
aload 0
iload 5
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mLastItemVisible Z
L0:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L3
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/updateIndicatorViewsVisibility()V
L3:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
ifnull L4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
aload 1
iload 2
iload 3
iload 4
invokeinterface android/widget/AbsListView$OnScrollListener/onScroll(Landroid/widget/AbsListView;III)V 4
L4:
return
L1:
iconst_0
istore 5
goto L2
.limit locals 6
.limit stack 5
.end method

.method protected onScrollChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onScrollChanged(IIII)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mEmptyView Landroid/view/View;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
ifne L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mEmptyView Landroid/view/View;
iload 1
ineg
iload 2
ineg
invokevirtual android/view/View/scrollTo(II)V
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnLastItemVisibleListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mLastItemVisible Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnLastItemVisibleListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener/onLastItemVisible()V 0
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
ifnull L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
aload 1
iload 2
invokeinterface android/widget/AbsListView$OnScrollListener/onScrollStateChanged(Landroid/widget/AbsListView;I)V 2
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AdapterView
aload 1
invokevirtual android/widget/AdapterView/setAdapter(Landroid/widget/Adapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setEmptyView(Landroid/view/View;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getRefreshableViewWrapper()Landroid/widget/FrameLayout;
astore 2
aload 1
ifnull L0
aload 1
iconst_1
invokevirtual android/view/View/setClickable(Z)V
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
astore 3
aload 3
ifnull L1
aload 3
instanceof android/view/ViewGroup
ifeq L1
aload 3
checkcast android/view/ViewGroup
aload 1
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L1:
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
astore 3
aload 3
ifnull L2
aload 2
aload 1
aload 3
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
instanceof com/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor
ifeq L3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor
aload 1
invokeinterface com/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor/setEmptyViewInternal(Landroid/view/View;)V 1
L4:
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mEmptyView Landroid/view/View;
return
L2:
aload 2
aload 1
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;)V
goto L0
L3:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 1
invokevirtual android/widget/AbsListView/setEmptyView(Landroid/view/View;)V
goto L4
.limit locals 4
.limit stack 3
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mRefreshableView Landroid/view/View;
checkcast android/widget/AbsListView
aload 1
invokevirtual android/widget/AbsListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnLastItemVisibleListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setScrollEmptyView(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mScrollEmptyView Z
return
.limit locals 2
.limit stack 2
.end method

.method public setShowIndicator(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/mShowIndicator Z
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/addIndicatorViews()V
return
L0:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/removeIndicatorViews()V
return
.limit locals 2
.limit stack 2
.end method

.method protected updateUIForMode()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/updateUIForMode()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/getShowIndicatorInternal()Z
ifeq L0
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/addIndicatorViews()V
return
L0:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase/removeIndicatorViews()V
return
.limit locals 1
.limit stack 1
.end method
