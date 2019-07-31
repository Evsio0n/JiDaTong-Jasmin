.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/TDWheelView
.super com/nd/android/backpacksystem/widget/TDGallery

.field private static final 'SHADOWS_COLORS' [I

.field private 'mBottomShadow' Landroid/graphics/drawable/GradientDrawable;

.field private 'mSelectorBound' Landroid/graphics/Rect;

.field private 'mTopShadow' Landroid/graphics/drawable/GradientDrawable;

.method static <clinit>()V
iconst_3
newarray int
dup
iconst_0
iconst_m1
iastore
dup
iconst_1
ldc_w -1996488705
iastore
dup
iconst_2
ldc_w 16777215
iastore
putstatic com/nd/android/backpacksystem/widget/TDWheelView/SHADOWS_COLORS [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/<init>(Landroid/content/Context;)V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDWheelView/mSelectorBound Landroid/graphics/Rect;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDWheelView/initialize(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/backpacksystem/widget/TDGallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDWheelView/mSelectorBound Landroid/graphics/Rect;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDWheelView/initialize(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDGallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDWheelView/mSelectorBound Landroid/graphics/Rect;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDWheelView/initialize(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
ldc2_w 2.0D
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mSelectorBound Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
i2d
dmul
d2i
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
iconst_0
iconst_0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getWidth()I
iload 2
invokevirtual android/graphics/drawable/GradientDrawable/setBounds(IIII)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
aload 1
invokevirtual android/graphics/drawable/GradientDrawable/draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
iconst_0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getHeight()I
iload 2
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getWidth()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getHeight()I
invokevirtual android/graphics/drawable/GradientDrawable/setBounds(IIII)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
aload 1
invokevirtual android/graphics/drawable/GradientDrawable/draw(Landroid/graphics/Canvas;)V
return
.limit locals 3
.limit stack 5
.end method

.method private initialize(Landroid/content/Context;)V
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setVerticalScrollBarEnabled(Z)V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setSlotInCenter(Z)V
aload 0
iconst_2
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setOrientation(I)V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setGravity(I)V
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setWillNotDraw(Z)V
aload 0
new android/graphics/drawable/GradientDrawable
dup
getstatic android/graphics/drawable/GradientDrawable$Orientation/TOP_BOTTOM Landroid/graphics/drawable/GradientDrawable$Orientation;
getstatic com/nd/android/backpacksystem/widget/TDWheelView/SHADOWS_COLORS [I
invokespecial android/graphics/drawable/GradientDrawable/<init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
putfield com/nd/android/backpacksystem/widget/TDWheelView/mTopShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
new android/graphics/drawable/GradientDrawable
dup
getstatic android/graphics/drawable/GradientDrawable$Orientation/BOTTOM_TOP Landroid/graphics/drawable/GradientDrawable$Orientation;
getstatic com/nd/android/backpacksystem/widget/TDWheelView/SHADOWS_COLORS [I
invokespecial android/graphics/drawable/GradientDrawable/<init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
putfield com/nd/android/backpacksystem/widget/TDWheelView/mBottomShadow Landroid/graphics/drawable/GradientDrawable;
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setSoundEffectsEnabled(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/dispatchDraw(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial com/nd/android/backpacksystem/widget/TDGallery/onLayout(ZIIII)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getCenterOfGallery()I
istore 3
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getChildAt(I)Landroid/view/View;
astore 6
bipush 50
istore 2
aload 6
ifnull L0
aload 6
invokevirtual android/view/View/getMeasuredHeight()I
istore 2
L0:
iload 3
iload 2
iconst_2
idiv
isub
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDWheelView/mSelectorBound Landroid/graphics/Rect;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getPaddingLeft()I
iload 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getWidth()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/getPaddingRight()I
isub
iload 3
iload 2
iadd
invokevirtual android/graphics/Rect/set(IIII)V
return
.limit locals 7
.limit stack 6
.end method

.method protected selectionChanged()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/selectionChanged()V
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/playSoundEffect(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setOrientation(I)V
iconst_1
iload 1
if_icmpne L0
new java/lang/IllegalArgumentException
dup
ldc "The orientation must be VERTICAL"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setOrientation(I)V
return
.limit locals 2
.limit stack 3
.end method
