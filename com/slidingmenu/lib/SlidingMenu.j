.bytecode 50.0
.class public synchronized com/slidingmenu/lib/SlidingMenu
.super android/widget/RelativeLayout
.inner class inner com/slidingmenu/lib/SlidingMenu$1
.inner class inner com/slidingmenu/lib/SlidingMenu$2
.inner class public static abstract interface CanvasTransformer inner com/slidingmenu/lib/SlidingMenu$CanvasTransformer outer com/slidingmenu/lib/SlidingMenu
.inner class public static abstract interface OnCloseListener inner com/slidingmenu/lib/SlidingMenu$OnCloseListener outer com/slidingmenu/lib/SlidingMenu
.inner class public static abstract interface OnClosedListener inner com/slidingmenu/lib/SlidingMenu$OnClosedListener outer com/slidingmenu/lib/SlidingMenu
.inner class public static abstract interface OnOpenListener inner com/slidingmenu/lib/SlidingMenu$OnOpenListener outer com/slidingmenu/lib/SlidingMenu
.inner class public static abstract interface OnOpenedListener inner com/slidingmenu/lib/SlidingMenu$OnOpenedListener outer com/slidingmenu/lib/SlidingMenu
.inner class public static SavedState inner com/slidingmenu/lib/SlidingMenu$SavedState outer com/slidingmenu/lib/SlidingMenu
.inner class inner com/slidingmenu/lib/SlidingMenu$SavedState$1

.field public static final 'LEFT' I = 0


.field public static final 'LEFT_RIGHT' I = 2


.field public static final 'RIGHT' I = 1


.field public static final 'SLIDING_CONTENT' I = 1


.field public static final 'SLIDING_WINDOW' I = 0


.field private static final 'TAG' Ljava/lang/String; = "SlidingMenu"

.field public static final 'TOUCHMODE_FULLSCREEN' I = 1


.field public static final 'TOUCHMODE_MARGIN' I = 0


.field public static final 'TOUCHMODE_NONE' I = 2


.field private 'mActionbarOverlay' Z

.field private 'mCloseListener' Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mOpenListener' Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private 'mViewAbove' Lcom/slidingmenu/lib/CustomViewAbove;

.field private 'mViewBehind' Lcom/slidingmenu/lib/CustomViewBehind;

.method public <init>(Landroid/app/Activity;I)V
aload 0
aload 1
aconst_null
invokespecial com/slidingmenu/lib/SlidingMenu/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
iload 2
invokevirtual com/slidingmenu/lib/SlidingMenu/attachToActivity(Landroid/app/Activity;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/slidingmenu/lib/SlidingMenu/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/slidingmenu/lib/SlidingMenu/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/slidingmenu/lib/SlidingMenu/mActionbarOverlay Z
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/slidingmenu/lib/SlidingMenu/mHandler Landroid/os/Handler;
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 5
aload 0
new com/slidingmenu/lib/CustomViewBehind
dup
aload 1
invokespecial com/slidingmenu/lib/CustomViewBehind/<init>(Landroid/content/Context;)V
putfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 5
invokevirtual com/slidingmenu/lib/SlidingMenu/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 5
aload 0
new com/slidingmenu/lib/CustomViewAbove
dup
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/<init>(Landroid/content/Context;)V
putfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 0
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 5
invokevirtual com/slidingmenu/lib/SlidingMenu/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewBehind/setCustomViewAbove(Lcom/slidingmenu/lib/CustomViewAbove;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
new com/slidingmenu/lib/SlidingMenu$1
dup
aload 0
invokespecial com/slidingmenu/lib/SlidingMenu$1/<init>(Lcom/slidingmenu/lib/SlidingMenu;)V
invokevirtual com/slidingmenu/lib/CustomViewAbove/setOnPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
aload 1
aload 2
aload 1
ldc "SlidingMenu"
invokestatic com/slidingmenu/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 2
aload 0
aload 2
aload 1
ldc "SlidingMenu_mode"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
invokevirtual com/slidingmenu/lib/SlidingMenu/setMode(I)V
aload 2
aload 1
ldc "SlidingMenu_viewAbove"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 3
iload 3
iconst_m1
if_icmpeq L0
aload 0
iload 3
invokevirtual com/slidingmenu/lib/SlidingMenu/setContent(I)V
L1:
aload 2
aload 1
ldc "SlidingMenu_viewBehind"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 3
iload 3
iconst_m1
if_icmpeq L2
aload 0
iload 3
invokevirtual com/slidingmenu/lib/SlidingMenu/setMenu(I)V
L3:
aload 0
aload 2
aload 1
ldc "SlidingMenu_touchModeAbove"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
invokevirtual com/slidingmenu/lib/SlidingMenu/setTouchModeAbove(I)V
aload 0
aload 2
aload 1
ldc "SlidingMenu_touchModeBehind"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
invokevirtual com/slidingmenu/lib/SlidingMenu/setTouchModeBehind(I)V
aload 2
aload 1
ldc "SlidingMenu_behindOffset"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
ldc_w -1.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
f2i
istore 3
aload 2
aload 1
ldc "SlidingMenu_behindWidth"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
ldc_w -1.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
f2i
istore 4
iload 3
iconst_m1
if_icmpeq L4
iload 4
iconst_m1
if_icmpeq L4
new java/lang/IllegalStateException
dup
ldc "Cannot set both behindOffset and behindWidth for a SlidingMenu"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
new android/widget/FrameLayout
dup
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
invokevirtual com/slidingmenu/lib/SlidingMenu/setContent(Landroid/view/View;)V
goto L1
L2:
aload 0
new android/widget/FrameLayout
dup
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
invokevirtual com/slidingmenu/lib/SlidingMenu/setMenu(Landroid/view/View;)V
goto L3
L4:
iload 3
iconst_m1
if_icmpeq L5
aload 0
iload 3
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindOffset(I)V
L6:
aload 0
aload 2
aload 1
ldc "SlidingMenu_behindScrollScale"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
ldc_w 0.33F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindScrollScale(F)V
aload 2
aload 1
ldc "SlidingMenu_shadowDrawable"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 3
iload 3
iconst_m1
if_icmpeq L7
aload 0
iload 3
invokevirtual com/slidingmenu/lib/SlidingMenu/setShadowDrawable(I)V
L7:
aload 0
aload 2
aload 1
ldc "SlidingMenu_shadowWidth"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
fconst_0
invokevirtual android/content/res/TypedArray/getDimension(IF)F
f2i
invokevirtual com/slidingmenu/lib/SlidingMenu/setShadowWidth(I)V
aload 0
aload 2
aload 1
ldc "SlidingMenu_fadeEnabled"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/slidingmenu/lib/SlidingMenu/setFadeEnabled(Z)V
aload 0
aload 2
aload 1
ldc "SlidingMenu_fadeDegree"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
ldc_w 0.33F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
invokevirtual com/slidingmenu/lib/SlidingMenu/setFadeDegree(F)V
aload 0
aload 2
aload 1
ldc "SlidingMenu_selectorEnabled"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/slidingmenu/lib/SlidingMenu/setSelectorEnabled(Z)V
aload 2
aload 1
ldc "SlidingMenu_selectorDrawable"
invokestatic com/slidingmenu/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 3
iload 3
iconst_m1
if_icmpeq L8
aload 0
iload 3
invokevirtual com/slidingmenu/lib/SlidingMenu/setSelectorDrawable(I)V
L8:
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
return
L5:
iload 4
iconst_m1
if_icmpeq L9
aload 0
iload 4
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindWidth(I)V
goto L6
L9:
aload 0
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindOffset(I)V
goto L6
.limit locals 6
.limit stack 4
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mOpenListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mCloseListener Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addIgnoredView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/addIgnoredView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
aload 0
aload 1
iload 2
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/attachToActivity(Landroid/app/Activity;IZ)V
return
.limit locals 3
.limit stack 4
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
iload 2
ifeq L0
iload 2
iconst_1
if_icmpeq L0
new java/lang/IllegalArgumentException
dup
ldc "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getParent()Landroid/view/ViewParent;
ifnull L1
new java/lang/IllegalStateException
dup
ldc "This SlidingMenu appears to already be attached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
invokevirtual android/app/Activity/getTheme()Landroid/content/res/Resources$Theme;
iconst_1
newarray int
dup
iconst_0
ldc_w 16842836
iastore
invokevirtual android/content/res/Resources$Theme/obtainStyledAttributes([I)Landroid/content/res/TypedArray;
astore 5
aload 5
iconst_0
iconst_0
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 4
aload 5
invokevirtual android/content/res/TypedArray/recycle()V
iload 2
tableswitch 0
L2
L3
default : L4
L4:
return
L2:
aload 0
iconst_0
putfield com/slidingmenu/lib/SlidingMenu/mActionbarOverlay Z
aload 1
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
checkcast android/view/ViewGroup
astore 1
aload 1
iconst_0
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
checkcast android/view/ViewGroup
astore 5
aload 5
iload 4
invokevirtual android/view/ViewGroup/setBackgroundResource(I)V
aload 1
aload 5
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
aload 1
aload 0
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
aload 5
invokevirtual com/slidingmenu/lib/SlidingMenu/setContent(Landroid/view/View;)V
return
L3:
aload 0
iload 3
putfield com/slidingmenu/lib/SlidingMenu/mActionbarOverlay Z
aload 1
ldc_w 16908290
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
astore 1
aload 1
iconst_0
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 5
aload 1
aload 5
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
aload 1
aload 0
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
aload 5
invokevirtual com/slidingmenu/lib/SlidingMenu/setContent(Landroid/view/View;)V
aload 5
invokevirtual android/view/View/getBackground()Landroid/graphics/drawable/Drawable;
ifnonnull L4
aload 5
iload 4
invokevirtual android/view/View/setBackgroundResource(I)V
return
.limit locals 6
.limit stack 5
.end method

.method public clearIgnoredViews()V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/clearIgnoredViews()V
return
.limit locals 1
.limit stack 1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 1
getfield android/graphics/Rect/left I
istore 2
aload 1
getfield android/graphics/Rect/right I
istore 3
aload 1
getfield android/graphics/Rect/top I
istore 4
aload 1
getfield android/graphics/Rect/bottom I
istore 5
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mActionbarOverlay Z
ifne L0
aload 0
iload 2
iload 4
iload 3
iload 5
invokevirtual com/slidingmenu/lib/SlidingMenu/setPadding(IIII)V
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 5
.end method

.method public getBehindOffset()I
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
getfield android/widget/RelativeLayout$LayoutParams/rightMargin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getBehindScrollScale()F
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getScrollScale()F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getContent()Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMenu()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getContent()Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMode()I
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getMode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSecondaryMenu()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getSecondaryContent()Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTouchModeAbove()I
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getTouchMode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isMenuShowing()Z
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getCurrentItem()I
ifeq L0
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getCurrentItem()I
iconst_2
if_icmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isSecondaryMenuShowing()Z
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getCurrentItem()I
iconst_2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isSlidingEnabled()Z
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/isSlidingEnabled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public manageLayers(F)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
iconst_0
istore 3
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmpge L0
L1:
return
L0:
fload 1
fconst_0
fcmpl
ifle L2
fload 1
fconst_1
fcmpg
ifge L2
iconst_1
istore 2
L3:
iload 2
ifeq L4
iconst_2
istore 3
L4:
iload 3
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContent()Landroid/view/View;
invokevirtual android/view/View/getLayerType()I
if_icmpeq L1
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mHandler Landroid/os/Handler;
new com/slidingmenu/lib/SlidingMenu$2
dup
aload 0
iload 3
invokespecial com/slidingmenu/lib/SlidingMenu$2/<init>(Lcom/slidingmenu/lib/SlidingMenu;I)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
L2:
iconst_0
istore 2
goto L3
.limit locals 4
.limit stack 5
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/slidingmenu/lib/SlidingMenu$SavedState
astore 1
aload 0
aload 1
invokevirtual com/slidingmenu/lib/SlidingMenu$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/widget/RelativeLayout/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/SlidingMenu$SavedState/getItem()I
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
new com/slidingmenu/lib/SlidingMenu$SavedState
dup
aload 0
invokespecial android/widget/RelativeLayout/onSaveInstanceState()Landroid/os/Parcelable;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getCurrentItem()I
invokespecial com/slidingmenu/lib/SlidingMenu$SavedState/<init>(Landroid/os/Parcelable;I)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public removeIgnoredView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/removeIgnoredView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAboveOffset(I)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setAboveOffset(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAboveOffsetRes(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual com/slidingmenu/lib/SlidingMenu/setAboveOffset(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setBehindCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setBehindOffset(I)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setWidthOffset(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setBehindOffsetRes(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindOffset(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setBehindScrollScale(F)V
fload 1
fconst_0
fcmpg
ifge L0
fload 1
fconst_1
fcmpl
ifle L0
new java/lang/IllegalStateException
dup
ldc "ScrollScale must be between 0 and 1"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
fload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setScrollScale(F)V
return
.limit locals 2
.limit stack 3
.end method

.method public setBehindWidth(I)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 3
L0:
new android/graphics/Point
dup
invokespecial android/graphics/Point/<init>()V
astore 4
ldc android/view/Display
ldc "getSize"
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/graphics/Point
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 3
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 4
getfield android/graphics/Point/x I
istore 2
L1:
aload 0
iload 2
iload 1
isub
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindOffset(I)V
return
L2:
astore 4
aload 3
invokevirtual android/view/Display/getWidth()I
istore 2
goto L1
.limit locals 5
.limit stack 6
.end method

.method public setBehindWidthRes(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual com/slidingmenu/lib/SlidingMenu/setBehindWidth(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setContent(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/slidingmenu/lib/SlidingMenu/setContent(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setContent(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setContent(Landroid/view/View;)V
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/showContent()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFadeDegree(F)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
fload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setFadeDegree(F)V
return
.limit locals 2
.limit stack 2
.end method

.method public setFadeEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setFadeEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setMenu(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/slidingmenu/lib/SlidingMenu/setMenu(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setMenu(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setContent(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setMode(I)V
iload 1
ifeq L0
iload 1
iconst_1
if_icmpeq L0
iload 1
iconst_2
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setMode(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setOnCloseListener(Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
aload 0
aload 1
putfield com/slidingmenu/lib/SlidingMenu/mCloseListener Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnOpenListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
aload 0
aload 1
putfield com/slidingmenu/lib/SlidingMenu/mOpenListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSecondaryMenu(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/slidingmenu/lib/SlidingMenu/setSecondaryMenu(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSecondaryContent(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSecondaryShadowDrawable(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual com/slidingmenu/lib/SlidingMenu/setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSelectedView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSelectorBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectorDrawable(I)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getResources()Landroid/content/res/Resources;
iload 1
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSelectorBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setSelectorEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setSelectorEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setShadowDrawable(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual com/slidingmenu/lib/SlidingMenu/setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setShadowWidth(I)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setShadowWidth(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setShadowWidthRes(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual com/slidingmenu/lib/SlidingMenu/setShadowWidth(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setSlidingEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setSlidingEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setStatic(Z)V
iload 1
ifeq L0
aload 0
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/setSlidingEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aconst_null
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(I)V
return
L0:
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(I)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/SlidingMenu/setSlidingEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTouchModeAbove(I)V
iload 1
iconst_1
if_icmpeq L0
iload 1
ifeq L0
iload 1
iconst_2
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setTouchMode(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setTouchModeBehind(I)V
iload 1
iconst_1
if_icmpeq L0
iload 1
ifeq L0
iload 1
iconst_2
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setTouchMode(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public showContent()V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/SlidingMenu/showContent(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public showContent(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iconst_1
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public showMenu()V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/SlidingMenu/showMenu(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public showMenu(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iconst_0
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public showSecondaryMenu()V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/SlidingMenu/showSecondaryMenu(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public showSecondaryMenu(Z)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
iconst_2
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public toggle()V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/SlidingMenu/toggle(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public toggle(Z)V
aload 0
invokevirtual com/slidingmenu/lib/SlidingMenu/isMenuShowing()Z
ifeq L0
aload 0
iload 1
invokevirtual com/slidingmenu/lib/SlidingMenu/showContent(Z)V
return
L0:
aload 0
iload 1
invokevirtual com/slidingmenu/lib/SlidingMenu/showMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method
