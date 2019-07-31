.bytecode 50.0
.class public synchronized abstract com/handmark/pulltorefresh/library/PullToRefreshBase
.super android/widget/LinearLayout
.implements com/handmark/pulltorefresh/library/IPullToRefresh
.signature "<T:Landroid/view/View;>Landroid/widget/LinearLayout;Lcom/handmark/pulltorefresh/library/IPullToRefresh<TT;>;"
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshBase$1
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshBase$2
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshBase$3
.inner class public static final enum AnimationStyle inner com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static final enum Mode inner com/handmark/pulltorefresh/library/PullToRefreshBase$Mode outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static abstract interface OnLastItemVisibleListener inner com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static abstract interface OnPullEventListener inner com/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static abstract interface OnRefreshListener inner com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static abstract interface OnRefreshListener2 inner com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2 outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class static abstract interface OnSmoothScrollFinishedListener inner com/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static final enum Orientation inner com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class final SmoothScrollRunnable inner com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable outer com/handmark/pulltorefresh/library/PullToRefreshBase
.inner class public static final enum State inner com/handmark/pulltorefresh/library/PullToRefreshBase$State outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode' [I

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation' [I

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State' [I

.field static final 'DEBUG' Z = 0


.field static final 'DEMO_SCROLL_INTERVAL' I = 225


.field static final 'FRICTION' F = 2.0F


.field static final 'LOG_TAG' Ljava/lang/String; = "PullToRefresh"

.field public static final 'SMOOTH_SCROLL_DURATION_MS' I = 200


.field public static final 'SMOOTH_SCROLL_LONG_DURATION_MS' I = 325


.field static final 'STATE_CURRENT_MODE' Ljava/lang/String; = "ptr_current_mode"

.field static final 'STATE_MODE' Ljava/lang/String; = "ptr_mode"

.field static final 'STATE_SCROLLING_REFRESHING_ENABLED' Ljava/lang/String; = "ptr_disable_scrolling"

.field static final 'STATE_SHOW_REFRESHING_VIEW' Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final 'STATE_STATE' Ljava/lang/String; = "ptr_state"

.field static final 'STATE_SUPER' Ljava/lang/String; = "ptr_super"

.field static final 'USE_HW_LAYERS' Z = 0


.field protected 'mContext' Landroid/content/Context;

.field private 'mCurrentMode' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private 'mCurrentSmoothScrollRunnable' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable; signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"

.field private 'mFilterTouchEvents' Z

.field private 'mFooterLayout' Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private 'mHeaderLayout' Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private 'mInitialMotionX' F

.field private 'mInitialMotionY' F

.field private 'mIsBeingDragged' Z

.field private 'mIsShowFooterLayout' Z

.field private 'mLastMotionX' F

.field private 'mLastMotionY' F

.field private 'mLayoutVisibilityChangesEnabled' Z

.field private 'mLoadingAnimationStyle' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private 'mMode' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private 'mOnPullEventListener' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener; signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;"

.field private 'mOnRefreshListener' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener; signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;"

.field private 'mOnRefreshListener2' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2; signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;"

.field private 'mOverScrollEnabled' Z

.field 'mRefreshableView' Landroid/view/View; signature "TT;"

.field private 'mRefreshableViewWrapper' Landroid/widget/FrameLayout;

.field private 'mScrollAnimationInterpolator' Landroid/view/animation/Interpolator;

.field private 'mScrollingWhileRefreshingEnabled' Z

.field private 'mShowViewWhileRefreshing' Z

.field private 'mState' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private 'mTouchSlop' I

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
astore 0
aload 0
ifnull L5
aload 0
areturn
L5:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/HORIZONTAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iconst_2
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iconst_1
iastore
L3:
aload 0
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
aload 0
areturn
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State [I
astore 0
aload 0
ifnull L13
aload 0
areturn
L13:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iconst_5
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
bipush 6
iastore
L3:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iconst_2
iastore
L5:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iconst_4
iastore
L7:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RELEASE_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iconst_3
iastore
L9:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iconst_1
iastore
L11:
aload 0
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State [I
aload 0
areturn
L12:
astore 1
goto L11
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
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
aload 0
aload 1
aconst_null
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
aload 0
aload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
aload 1
aconst_null
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
aload 0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
aload 0
aload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
aload 3
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 0
aload 1
aconst_null
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$0(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollAnimationInterpolator Landroid/view/animation/Interpolator;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/callRefreshListener()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
aload 0
iload 1
lload 2
lload 4
aload 6
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
.limit locals 7
.limit stack 7
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
.signature "(Landroid/content/Context;TT;)V"
aload 0
new android/widget/FrameLayout
dup
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
aload 2
iconst_m1
iconst_m1
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;II)V
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 6
.end method

.method private callRefreshListener()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
aload 0
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener/onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
L1:
return
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
ifnull L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
aload 0
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2/onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
return
L2:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
aload 0
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2/onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
areturn
L0:
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
areturn
.limit locals 1
.limit stack 4
.end method

.method private getMaximumPullScroll()I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getHeight()I
i2f
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
ireturn
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getWidth()I
i2f
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
aload 0
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setOrientation(I)V
L2:
aload 0
bipush 17
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setGravity(I)V
aload 0
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mTouchSlop I
aload 1
aload 2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 3
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrMode"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L3
aload 0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrMode"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
L3:
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrAnimationStyle"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L4
aload 0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrAnimationStyle"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
L4:
aload 0
aload 0
aload 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
aload 0
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
aload 0
aload 0
aload 1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
aload 0
aload 1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrRefreshableViewBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L5
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrRefreshableViewBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 1
ifnull L6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
aload 1
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L6:
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrOverScroll"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L7
aload 0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrOverScroll"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
L7:
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrScrollingWhileRefreshingEnabled"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L8
aload 0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrScrollingWhileRefreshingEnabled"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
L8:
aload 0
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/handleStyledAttributes(Landroid/content/res/TypedArray;)V
aload 3
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/updateUIForMode()V
return
L0:
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setOrientation(I)V
goto L2
L5:
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrAdapterViewBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L6
ldc "ptrAdapterViewBackground"
ldc "ptrRefreshableViewBackground"
invokestatic com/handmark/pulltorefresh/library/internal/Utils/warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mContext Landroid/content/Context;
ldc "PullToRefresh_ptrAdapterViewBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 1
ifnull L6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
aload 1
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L6
.limit locals 4
.limit stack 5
.end method

.method private isReadyForPull()Z
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 2
L0
L1
L2
default : L3
L3:
iconst_0
ireturn
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullStart()Z
ireturn
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullEnd()Z
ireturn
L2:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullEnd()Z
ifne L4
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullStart()Z
ifeq L3
L4:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method private pullEvent()V
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionY F
fstore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
fstore 2
L2:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L3
default : L4
L4:
fload 1
fload 2
fsub
fconst_0
invokestatic java/lang/Math/min(FF)F
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
istore 4
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getHeaderSize()I
istore 3
L5:
aload 0
iload 4
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setHeaderScroll(I)V
iload 4
ifeq L6
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifne L6
iload 4
invokestatic java/lang/Math/abs(I)I
i2f
iload 3
i2f
fdiv
fstore 1
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L7
default : L8
L8:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
fload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/onPull(F)V
L9:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpeq L10
iload 3
iload 4
invokestatic java/lang/Math/abs(I)I
if_icmplt L10
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L6:
return
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionX F
fstore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
fstore 2
goto L2
L3:
fload 1
fload 2
fsub
fconst_0
invokestatic java/lang/Math/max(FF)F
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
istore 4
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getFooterSize()I
istore 3
goto L5
L7:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
fload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/onPull(F)V
goto L9
L10:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpne L6
iload 3
iload 4
invokestatic java/lang/Math/abs(I)I
if_icmpge L6
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RELEASE_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
return
.limit locals 5
.limit stack 3
.end method

.method private final smoothScrollTo(IJ)V
aload 0
iload 1
lload 2
lconst_0
aconst_null
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
.limit locals 4
.limit stack 7
.end method

.method private final smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentSmoothScrollRunnable Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentSmoothScrollRunnable Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/stop()V
L0:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L1
default : L2
L2:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getScrollY()I
istore 7
L3:
iload 7
iload 1
if_icmpeq L4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollAnimationInterpolator Landroid/view/animation/Interpolator;
ifnonnull L5
aload 0
new android/view/animation/DecelerateInterpolator
dup
invokespecial android/view/animation/DecelerateInterpolator/<init>()V
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollAnimationInterpolator Landroid/view/animation/Interpolator;
L5:
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable
dup
aload 0
iload 7
iload 1
lload 2
aload 6
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentSmoothScrollRunnable Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
lload 4
lconst_0
lcmp
ifle L6
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentSmoothScrollRunnable Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
lload 4
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/postDelayed(Ljava/lang/Runnable;J)Z
pop
L4:
return
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getScrollX()I
istore 7
goto L3
L6:
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentSmoothScrollRunnable Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 8
.limit stack 9
.end method

.method private final smoothScrollToAndBack(I)V
aload 0
iload 1
ldc2_w 200L
lconst_0
new com/handmark/pulltorefresh/library/PullToRefreshBase$3
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$3/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
.limit locals 2
.limit stack 9
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getRefreshableView()Landroid/view/View;
astore 4
aload 4
instanceof android/view/ViewGroup
ifeq L0
aload 4
checkcast android/view/ViewGroup
aload 1
iload 2
aload 3
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return
L0:
new java/lang/UnsupportedOperationException
dup
ldc "Refreshable View is not a ViewGroup so can't addView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
iload 2
aload 3
invokespecial android/widget/LinearLayout/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
iconst_m1
aload 2
invokespecial android/widget/LinearLayout/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLoadingAnimationStyle Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aload 1
aload 2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
astore 1
aload 1
iconst_4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
new com/handmark/pulltorefresh/library/LoadingLayoutProxy
dup
invokespecial com/handmark/pulltorefresh/library/LoadingLayoutProxy/<init>()V
astore 3
iload 1
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L0
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/LoadingLayoutProxy/addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
L0:
iload 2
ifeq L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L1
aload 3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/LoadingLayoutProxy/addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
L1:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.signature "(Landroid/content/Context;Landroid/util/AttributeSet;)TT;"
.end method

.method public final demo()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullStart()Z
ifeq L0
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getHeaderSize()I
ineg
iconst_2
imul
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollToAndBack(I)V
iconst_1
ireturn
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullEnd()Z
ifeq L1
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getFooterSize()I
iconst_2
imul
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollToAndBack(I)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
return
.limit locals 1
.limit stack 2
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getFilterTouchEvents()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final getFooterSize()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getContentSize()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final getHeaderSize()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getContentSize()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 0
iconst_1
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
areturn
.limit locals 1
.limit stack 3
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 0
iload 1
iload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
sipush 200
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getPullToRefreshScrollDurationLonger()I
sipush 325
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getRefreshableView()Landroid/view/View;
.signature "()TT;"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getShowViewWhileRefreshing()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
return
.limit locals 2
.limit stack 0
.end method

.method public final isDisableScrollingWhileRefreshing()Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isScrollingWhileRefreshingEnabled()Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isPullToRefreshEnabled()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/permitsPullToRefresh()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableView Landroid/view/View;
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/isAndroidOverScrollEnabled(Landroid/view/View;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isPullToRefreshEnabled()Z
ifne L0
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 7
iload 7
iconst_3
if_icmpeq L1
iload 7
iconst_1
if_icmpne L2
L1:
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
iconst_0
ireturn
L2:
iload 7
ifeq L3
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
ifeq L3
iconst_1
ireturn
L3:
iload 7
tableswitch 0
L4
L5
L6
default : L5
L5:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
ireturn
L6:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
ifne L7
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifeq L7
iconst_1
ireturn
L7:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPull()Z
ifeq L5
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 4
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 5
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L8
default : L9
L9:
fload 4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
fsub
fstore 2
fload 5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
fsub
fstore 3
L10:
fload 2
invokestatic java/lang/Math/abs(F)F
fstore 6
fload 6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mTouchSlop I
i2f
fcmpl
ifle L5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
ifeq L11
fload 6
fload 3
invokestatic java/lang/Math/abs(F)F
fcmpl
ifle L5
L11:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L12
fload 2
fconst_1
fcmpl
iflt L12
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullStart()Z
ifeq L12
aload 0
fload 4
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
aload 0
fload 5
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L5
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto L5
L8:
fload 5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
fsub
fstore 2
fload 4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
fsub
fstore 3
goto L10
L12:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L5
fload 2
ldc_w -1.0F
fcmpg
ifgt L5
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPullEnd()Z
ifeq L5
aload 0
fload 4
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
aload 0
fload 5
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L5
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto L5
L4:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPull()Z
ifeq L5
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionY F
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionX F
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
goto L5
.limit locals 8
.limit stack 2
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onPullToRefresh()V
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 2
L0
L1
default : L2
L2:
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/pullToRefresh()V
return
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/pullToRefresh()V
return
.limit locals 1
.limit stack 2
.end method

.method public final onRefreshComplete()V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifeq L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onRefreshing(Z)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/refreshing()V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/refreshing()V
L1:
iload 1
ifeq L2
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
ifeq L3
new com/handmark/pulltorefresh/library/PullToRefreshBase$1
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$1/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
astore 2
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L4
L5
L4
default : L5
L5:
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getHeaderSize()I
ineg
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
L4:
aload 0
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getFooterSize()I
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
L3:
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(I)V
return
L2:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/callRefreshListener()V
return
.limit locals 3
.limit stack 3
.end method

.method protected onReleaseToRefresh()V
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 2
L0
L1
default : L2
L2:
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/releaseToRefresh()V
return
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/releaseToRefresh()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onReset()V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/reset()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/reset()V
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
instanceof android/os/Bundle
ifeq L0
aload 1
checkcast android/os/Bundle
astore 1
aload 0
aload 1
ldc "ptr_mode"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
ldc "ptr_current_mode"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
aload 1
ldc "ptr_disable_scrolling"
iconst_0
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
aload 0
aload 1
ldc "ptr_show_refreshing_view"
iconst_1
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
aload 0
aload 1
ldc "ptr_super"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
invokespecial android/widget/LinearLayout/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
ldc "ptr_state"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
astore 2
aload 2
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpeq L1
aload 2
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpne L2
L1:
aload 0
aload 2
iconst_1
newarray boolean
dup
iconst_0
iconst_1
bastore
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L2:
aload 0
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onPtrRestoreInstanceState(Landroid/os/Bundle;)V
return
L0:
aload 0
aload 1
invokespecial android/widget/LinearLayout/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
.limit locals 3
.limit stack 6
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 0
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onPtrSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "ptr_state"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/getIntValue()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "ptr_mode"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getIntValue()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "ptr_current_mode"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getIntValue()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "ptr_disable_scrolling"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "ptr_show_refreshing_view"
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "ptr_super"
aload 0
invokespecial android/widget/LinearLayout/onSaveInstanceState()Landroid/os/Parcelable;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected final onSizeChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/LinearLayout/onSizeChanged(IIII)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/refreshLoadingViewsSize()V
aload 0
iload 1
iload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/refreshRefreshableViewSize(II)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshBase$2
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$2/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 5
.limit stack 5
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isPullToRefreshEnabled()Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
ifne L2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifeq L2
iconst_1
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L3
aload 1
invokevirtual android/view/MotionEvent/getEdgeFlags()I
ifne L1
L3:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L4
L5
L6
L5
default : L7
L7:
iconst_0
ireturn
L4:
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/isReadyForPull()Z
ifeq L1
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionY F
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mInitialMotionX F
aload 0
fload 2
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
iconst_1
ireturn
L6:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
ifeq L1
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionY F
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLastMotionX F
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/pullEvent()V
iconst_1
ireturn
L5:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
ifeq L1
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsBeingDragged Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RELEASE_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpne L8
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
ifnonnull L9
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
ifnull L8
L9:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_1
newarray boolean
dup
iconst_0
iconst_1
bastore
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
iconst_1
ireturn
L8:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifeq L10
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(I)V
iconst_1
ireturn
L10:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
iconst_1
ireturn
.limit locals 3
.limit stack 6
.end method

.method protected final refreshLoadingViewsSize()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/getMaximumPullScroll()I
i2f
ldc_w 1.2F
fmul
f2i
istore 6
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPaddingLeft()I
istore 4
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPaddingTop()I
istore 5
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPaddingRight()I
istore 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPaddingBottom()I
istore 1
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 1
L0
L1
default : L2
L2:
iload 5
istore 2
L3:
aload 0
iload 4
iload 2
iload 3
iload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setPadding(IIII)V
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setWidth(I)V
iload 6
ineg
istore 2
L5:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L6
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setWidth(I)V
iload 6
ineg
istore 3
iload 2
istore 4
iload 5
istore 2
goto L3
L4:
iconst_0
istore 2
goto L5
L6:
iconst_0
istore 3
iload 2
istore 4
iload 5
istore 2
goto L3
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L7
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setHeight(I)V
iload 6
ineg
istore 2
L8:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L9
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iload 6
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setHeight(I)V
iload 6
ineg
istore 1
goto L3
L7:
iconst_0
istore 2
goto L8
L9:
iconst_0
istore 1
goto L3
.limit locals 7
.limit stack 5
.end method

.method protected final refreshRefreshableViewSize(II)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 3
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 1
L0
L1
default : L2
L2:
return
L1:
aload 3
getfield android/widget/LinearLayout$LayoutParams/width I
iload 1
if_icmpeq L2
aload 3
iload 1
putfield android/widget/LinearLayout$LayoutParams/width I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/requestLayout()V
return
L0:
aload 3
getfield android/widget/LinearLayout$LayoutParams/height I
iload 2
if_icmpeq L2
aload 3
iload 2
putfield android/widget/LinearLayout$LayoutParams/height I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mRefreshableViewWrapper Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/requestLayout()V
return
.limit locals 4
.limit stack 2
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
iload 1
ifeq L0
iconst_0
istore 1
L1:
aload 0
iload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setScrollingWhileRefreshingEnabled(Z)V
return
L0:
iconst_1
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public final setFilterTouchEvents(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFilterTouchEvents Z
return
.limit locals 2
.limit stack 2
.end method

.method protected final setHeaderScroll(I)V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/getMaximumPullScroll()I
istore 2
iload 2
iload 2
ineg
iload 1
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/min(II)I
istore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mLayoutVisibilityChangesEnabled Z
ifeq L0
iload 1
ifge L1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
L0:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 1
L2
L3
default : L4
L4:
return
L1:
iload 1
ifle L5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
ifeq L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
goto L0
L5:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
goto L0
L2:
aload 0
iconst_0
iload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/scrollTo(II)V
return
L3:
aload 0
iload 1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/scrollTo(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public setIsShowFooterLayout(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mIsShowFooterLayout Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public setLongClickable(Z)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getRefreshableView()Landroid/view/View;
iload 1
invokevirtual android/view/View/setLongClickable(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/updateUIForMode()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;)V"
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnPullEventListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;)V"
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;)V"
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnRefreshListener2 Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
return
.limit locals 2
.limit stack 2
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setPullLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setPullLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public final setPullToRefreshEnabled(Z)V
iload 1
ifeq L0
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 2
L1:
aload 0
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
L0:
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOverScrollEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setRefreshing()V
aload 0
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setRefreshing(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public final setRefreshing(Z)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifne L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_1
newarray boolean
dup
iconst_0
iload 1
bastore
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setRefreshingLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setRefreshingLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
aload 0
aload 1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setReleaseLabel(Ljava/lang/CharSequence;)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollAnimationInterpolator Landroid/view/animation/Interpolator;
return
.limit locals 2
.limit stack 2
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mScrollingWhileRefreshingEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setShowViewWhileRefreshing(Z)V
aload 0
iload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mShowViewWhileRefreshing Z
return
.limit locals 2
.limit stack 2
.end method

.method final transient setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State()[I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/ordinal()I
iaload
tableswitch 1
L0
L1
L2
L3
L3
default : L4
L4:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnPullEventListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
ifnull L5
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mOnPullEventListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mState Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokeinterface com/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener/onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V 3
L5:
return
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onReset()V
goto L4
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onPullToRefresh()V
goto L4
L2:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onReleaseToRefresh()V
goto L4
L3:
aload 0
aload 2
iconst_0
baload
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/onRefreshing(Z)V
goto L4
.limit locals 3
.limit stack 4
.end method

.method protected final smoothScrollTo(I)V
aload 0
iload 1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDuration()I
i2l
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJ)V
return
.limit locals 2
.limit stack 4
.end method

.method protected final smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
aload 0
iload 1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDuration()I
i2l
lconst_0
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
.limit locals 3
.limit stack 7
.end method

.method protected final smoothScrollToLonger(I)V
aload 0
iload 1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDurationLonger()I
i2l
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollTo(IJ)V
return
.limit locals 2
.limit stack 4
.end method

.method protected updateUIForMode()V
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
astore 1
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getParent()Landroid/view/ViewParent;
if_acmpne L0
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/removeView(Landroid/view/View;)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L1
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mHeaderLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iconst_0
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
L1:
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getParent()Landroid/view/ViewParent;
if_acmpne L2
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/removeView(Landroid/view/View;)V
L2:
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L3
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mFooterLayout Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L3:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/refreshLoadingViewsSize()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L4
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 1
L5:
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase/mCurrentMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return
L4:
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 1
goto L5
.limit locals 2
.limit stack 4
.end method
