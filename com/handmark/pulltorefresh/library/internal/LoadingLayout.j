.bytecode 50.0
.class public synchronized abstract com/handmark/pulltorefresh/library/internal/LoadingLayout
.super android/widget/FrameLayout
.implements com/handmark/pulltorefresh/library/ILoadingLayout
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ViewConstructor" 
.end annotation

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode' [I

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation' [I

.field static final 'ANIMATION_INTERPOLATOR' Landroid/view/animation/Interpolator;

.field static final 'LOG_TAG' Ljava/lang/String; = "PullToRefresh-LoadingLayout"

.field protected final 'mHeaderProgress' Landroid/widget/ProgressBar;

.field private final 'mHeaderText' Landroid/widget/TextView;

.field private 'mInnerLayout' Landroid/widget/FrameLayout;

.field protected final 'mMode' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private 'mPullLabel' Ljava/lang/CharSequence;

.field private 'mRefreshingLabel' Ljava/lang/CharSequence;

.field private 'mReleaseLabel' Ljava/lang/CharSequence;

.field protected final 'mScrollDirection' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private final 'mSubHeaderText' Landroid/widget/TextView;

.field private 'mUseIntrinsicAnimation' Z

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
getstatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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
putstatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
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
getstatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
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
putstatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
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

.method static <clinit>()V
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
putstatic com/handmark/pulltorefresh/library/internal/LoadingLayout/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
aload 2
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mMode Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aload 0
aload 3
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mScrollDirection Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokestatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
aload 1
ldc "pull_to_refresh_header_vertical"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
L2:
aload 0
aload 0
aload 1
ldc "fl_inner"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/FrameLayout
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
aload 1
ldc "pull_to_refresh_text"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/FrameLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
aload 1
ldc "pull_to_refresh_progress"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/FrameLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
aload 1
ldc "pull_to_refresh_sub_text"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/FrameLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/FrameLayout$LayoutParams
astore 6
invokestatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L3
default : L4
L4:
aload 3
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
if_acmpne L5
bipush 80
istore 5
L6:
aload 6
iload 5
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 0
aload 1
aload 1
ldc "pull_to_refresh_pull_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mPullLabel Ljava/lang/CharSequence;
aload 0
aload 1
aload 1
ldc "pull_to_refresh_refreshing_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mRefreshingLabel Ljava/lang/CharSequence;
aload 0
aload 1
aload 1
ldc "pull_to_refresh_release_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mReleaseLabel Ljava/lang/CharSequence;
L7:
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L8
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderBackground"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 3
aload 3
ifnull L8
aload 0
aload 3
invokestatic com/handmark/pulltorefresh/library/internal/ViewCompat/setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
L8:
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderTextAppearance"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L9
new android/util/TypedValue
dup
invokespecial android/util/TypedValue/<init>()V
astore 3
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderTextAppearance"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 3
invokevirtual android/content/res/TypedArray/getValue(ILandroid/util/TypedValue;)Z
pop
aload 0
aload 3
getfield android/util/TypedValue/data I
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/setTextAppearance(I)V
L9:
aload 4
aload 1
ldc "PullToRefresh_ptrSubHeaderTextAppearance"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L10
new android/util/TypedValue
dup
invokespecial android/util/TypedValue/<init>()V
astore 3
aload 4
aload 1
ldc "PullToRefresh_ptrSubHeaderTextAppearance"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 3
invokevirtual android/content/res/TypedArray/getValue(ILandroid/util/TypedValue;)Z
pop
aload 0
aload 3
getfield android/util/TypedValue/data I
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/setSubTextAppearance(I)V
L10:
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderTextColor"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L11
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderTextColor"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getColorStateList(I)Landroid/content/res/ColorStateList;
astore 3
aload 3
ifnull L11
aload 0
aload 3
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/setTextColor(Landroid/content/res/ColorStateList;)V
L11:
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderSubTextColor"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L12
aload 4
aload 1
ldc "PullToRefresh_ptrHeaderSubTextColor"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getColorStateList(I)Landroid/content/res/ColorStateList;
astore 3
aload 3
ifnull L12
aload 0
aload 3
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/setSubTextColor(Landroid/content/res/ColorStateList;)V
L12:
aconst_null
astore 3
aload 4
aload 1
ldc "PullToRefresh_ptrDrawable"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L13
aload 4
aload 1
ldc "PullToRefresh_ptrDrawable"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 3
L13:
invokestatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L14
default : L15
L15:
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableStart"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L16
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableStart"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
L17:
aload 2
astore 3
aload 2
ifnonnull L18
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getDefaultDrawableResId()I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 3
L18:
aload 0
aload 3
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/reset()V
return
L0:
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
aload 1
ldc "pull_to_refresh_header_horizontal"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
goto L2
L3:
aload 3
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
if_acmpne L19
bipush 48
istore 5
L20:
aload 6
iload 5
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 0
aload 1
aload 1
ldc "pull_to_refresh_from_bottom_pull_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mPullLabel Ljava/lang/CharSequence;
aload 0
aload 1
aload 1
ldc "pull_to_refresh_from_bottom_refreshing_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mRefreshingLabel Ljava/lang/CharSequence;
aload 0
aload 1
aload 1
ldc "pull_to_refresh_from_bottom_release_label"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mReleaseLabel Ljava/lang/CharSequence;
goto L7
L19:
iconst_3
istore 5
goto L20
L5:
iconst_5
istore 5
goto L6
L16:
aload 3
astore 2
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableTop"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L17
ldc "ptrDrawableTop"
ldc "ptrDrawableStart"
invokestatic com/handmark/pulltorefresh/library/internal/Utils/warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableTop"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
goto L17
L14:
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableEnd"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L21
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableEnd"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
goto L17
L21:
aload 3
astore 2
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableBottom"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L17
ldc "ptrDrawableBottom"
ldc "ptrDrawableEnd"
invokestatic com/handmark/pulltorefresh/library/internal/Utils/warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
aload 4
aload 1
ldc "PullToRefresh_ptrDrawableBottom"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
goto L17
.limit locals 7
.limit stack 4
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
return
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
bipush 8
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
if_icmpne L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private setSubTextAppearance(I)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getContext()Landroid/content/Context;
iload 1
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setTextColor(Landroid/content/res/ColorStateList;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private setTextAppearance(I)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getContext()Landroid/content/Context;
iload 1
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L1
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getContext()Landroid/content/Context;
iload 1
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setTextColor(Landroid/content/res/ColorStateList;)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L1
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setTextColor(Landroid/content/res/ColorStateList;)V
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public final getContentSize()I
invokestatic com/handmark/pulltorefresh/library/internal/LoadingLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mScrollDirection Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/getHeight()I
ireturn
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mInnerLayout Landroid/widget/FrameLayout;
invokevirtual android/widget/FrameLayout/getWidth()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
ifne L1
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
iconst_4
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L2
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mUseIntrinsicAnimation Z
ifne L0
aload 0
fload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/onPullImpl(F)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mPullLabel Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/pullToRefreshImpl()V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mRefreshingLabel Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mUseIntrinsicAnimation Z
ifne L1
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/refreshingImpl()V
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L2
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mReleaseLabel Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/releaseToRefreshImpl()V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mPullLabel Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mUseIntrinsicAnimation Z
ifne L1
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/resetImpl()V
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
ifnull L2
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
return
L3:
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 1
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/setSubHeaderText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
instanceof android/graphics/drawable/AnimationDrawable
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mUseIntrinsicAnimation Z
aload 0
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mPullLabel Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 2
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mRefreshingLabel Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 2
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mReleaseLabel Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 2
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setWidth(I)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 1
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public final showInvisibleViews()V
iconst_4
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
if_icmpne L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
iconst_4
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
if_icmpne L1
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
iconst_4
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
if_icmpne L2
aload 0
getfield com/handmark/pulltorefresh/library/internal/LoadingLayout/mSubHeaderText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 2
.end method
