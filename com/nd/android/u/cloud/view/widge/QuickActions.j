.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/QuickActions
.super android/widget/PopupWindow
.inner class inner com/nd/android/u/cloud/view/widge/QuickActions$1
.inner class inner com/nd/android/u/cloud/view/widge/QuickActions$2

.field public static final 'ANIM_AUTO' I = 4


.field public static final 'ANIM_GROW_FROM_CENTER' I = 3


.field public static final 'ANIM_GROW_FROM_LEFT' I = 1


.field public static final 'ANIM_GROW_FROM_RIGHT' I = 2


.field private 'actionList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/cloud/view/widge/ActionItem;>;"

.field protected final 'anchor' Landroid/view/View;

.field private 'animStyle' I

.field private 'animateTrack' Z

.field private final 'context' Landroid/content/Context;

.field private final 'inflater' Landroid/view/LayoutInflater;

.field private 'mTrack' Landroid/view/ViewGroup;

.field private final 'mTrackAnim' Landroid/view/animation/Animation;

.field private final 'root' Landroid/view/View;

.field protected final 'window' Landroid/widget/PopupWindow;

.field protected final 'windowManager' Landroid/view/WindowManager;

.method public <init>(Landroid/view/View;)V
aload 0
aload 1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/QuickActions/anchor Landroid/view/View;
aload 0
new android/widget/PopupWindow
dup
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
new com/nd/android/u/cloud/view/widge/QuickActions$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/QuickActions$1/<init>(Lcom/nd/android/u/cloud/view/widge/QuickActions;)V
invokevirtual android/widget/PopupWindow/setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
aload 0
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/cloud/view/widge/QuickActions/windowManager Landroid/view/WindowManager;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/view/widge/QuickActions/actionList Ljava/util/ArrayList;
aload 0
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
putfield com/nd/android/u/cloud/view/widge/QuickActions/context Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/context Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/cloud/view/widge/QuickActions/inflater Landroid/view/LayoutInflater;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/inflater Landroid/view/LayoutInflater;
ldc_w 2130903634
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
invokevirtual com/nd/android/u/cloud/view/widge/QuickActions/setContentView(Landroid/view/View;)V
aload 0
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc_w 2130968607
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/nd/android/u/cloud/view/widge/QuickActions/mTrackAnim Landroid/view/animation/Animation;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/mTrackAnim Landroid/view/animation/Animation;
new com/nd/android/u/cloud/view/widge/QuickActions$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/QuickActions$2/<init>(Lcom/nd/android/u/cloud/view/widge/QuickActions;)V
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
ldc_w 2131626443
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/cloud/view/widge/QuickActions/mTrack Landroid/view/ViewGroup;
aload 0
iconst_4
putfield com/nd/android/u/cloud/view/widge/QuickActions/animStyle I
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/QuickActions/animateTrack Z
return
.limit locals 2
.limit stack 4
.end method

.method private createActionList()V
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/actionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/actionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/view/widge/ActionItem
invokevirtual com/nd/android/u/cloud/view/widge/ActionItem/getIcon()I
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/actionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/view/widge/ActionItem
invokevirtual com/nd/android/u/cloud/view/widge/ActionItem/getListener()Landroid/view/View$OnClickListener;
invokespecial com/nd/android/u/cloud/view/widge/QuickActions/getActionItem(ILandroid/view/View$OnClickListener;)Landroid/view/View;
astore 3
aload 3
iconst_1
invokevirtual android/view/View/setFocusable(Z)V
aload 3
iconst_1
invokevirtual android/view/View/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/mTrack Landroid/view/ViewGroup;
aload 3
iload 2
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;I)V
iload 2
iconst_1
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method private getActionItem(ILandroid/view/View$OnClickListener;)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/inflater Landroid/view/LayoutInflater;
ldc_w 2130903040
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 3
aload 3
ldc_w 2131624028
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
iload 1
ifeq L0
aload 4
iload 1
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L1:
aload 2
ifnull L2
aload 3
aload 2
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 3
areturn
L0:
aload 4
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
.limit locals 5
.limit stack 3
.end method

.method private setAnimationStyle()V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/animStyle I
tableswitch 1
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
ldc_w 2131230735
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
ldc_w 2131230736
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
ldc_w 2131230734
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public addActionItem(Lcom/nd/android/u/cloud/view/widge/ActionItem;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/actionList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public animateTrack(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/QuickActions/animateTrack Z
return
.limit locals 2
.limit stack 2
.end method

.method public dismiss()V
aload 0
invokespecial android/widget/PopupWindow/dismiss()V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected preShow()V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
ifnonnull L0
new java/lang/IllegalStateException
dup
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131495056
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setHeight(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setTouchable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 4
.end method

.method public setAnimStyle(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/QuickActions/animStyle I
return
.limit locals 2
.limit stack 2
.end method

.method public show()V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/QuickActions/preShow()V
iconst_2
newarray int
astore 4
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/anchor Landroid/view/View;
aload 4
invokevirtual android/view/View/getLocationOnScreen([I)V
new android/graphics/Rect
dup
aload 4
iconst_0
iaload
aload 4
iconst_1
iaload
aload 4
iconst_0
iaload
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/anchor Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iadd
aload 4
iconst_1
iaload
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/anchor Landroid/view/View;
invokevirtual android/view/View/getHeight()I
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 4
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
bipush -2
bipush -2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 2
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
istore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/windowManager Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
iload 2
isub
iconst_2
idiv
istore 2
aload 4
getfield android/graphics/Rect/top I
istore 3
iload 1
aload 4
getfield android/graphics/Rect/top I
if_icmpgt L0
aload 4
getfield android/graphics/Rect/bottom I
istore 1
L1:
aload 0
invokespecial com/nd/android/u/cloud/view/widge/QuickActions/setAnimationStyle()V
aload 0
invokespecial com/nd/android/u/cloud/view/widge/QuickActions/createActionList()V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/anchor Landroid/view/View;
iconst_0
iload 2
iload 1
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/animateTrack Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/mTrack Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/cloud/view/widge/QuickActions/mTrackAnim Landroid/view/animation/Animation;
invokevirtual android/view/ViewGroup/startAnimation(Landroid/view/animation/Animation;)V
L2:
return
L0:
aload 4
getfield android/graphics/Rect/top I
istore 1
goto L1
.limit locals 5
.limit stack 7
.end method
