.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/common/NDSwitch
.super android/widget/CompoundButton

.field private static final 'CHECKED_STATE_SET' [I

.field private static final 'MONOSPACE' I = 3


.field private static final 'SANS' I = 1


.field private static final 'SERIF' I = 2


.field private static final 'TOUCH_MODE_DOWN' I = 1


.field private static final 'TOUCH_MODE_DRAGGING' I = 2


.field private static final 'TOUCH_MODE_IDLE' I = 0


.field private 'fontDefaultColor' I

.field private 'fontSize' I

.field private final 'mMinFlingVelocity' I

.field private 'mOffLayout' Landroid/text/Layout;

.field private 'mOnLayout' Landroid/text/Layout;

.field private 'mSwitchBottom' I

.field private 'mSwitchHeight' I

.field private 'mSwitchLeft' I

.field private final 'mSwitchMinWidth' I

.field private final 'mSwitchPadding' I

.field private 'mSwitchRight' I

.field private 'mSwitchTop' I

.field private 'mSwitchWidth' I

.field private final 'mTempRect' Landroid/graphics/Rect;

.field private 'mTextOff' Ljava/lang/CharSequence;

.field private 'mTextOn' Ljava/lang/CharSequence;

.field private final 'mTextPaint' Landroid/text/TextPaint;

.field private final 'mThumbDrawable' Landroid/graphics/drawable/Drawable;

.field private 'mThumbPosition' F

.field private final 'mThumbTextPadding' I

.field private 'mThumbWidth' I

.field private 'mTouchMode' I

.field private final 'mTouchSlop' I

.field private 'mTouchX' F

.field private 'mTouchY' F

.field private final 'mTrackDrawable' Landroid/graphics/drawable/Drawable;

.field private final 'mVelocityTracker' Landroid/view/VelocityTracker;

.field private 'needBlockTouch' Z

.method static <clinit>()V
iconst_1
newarray int
dup
iconst_0
ldc_w 16842912
iastore
putstatic com/nd/android/u/tast/experience/common/NDSwitch/CHECKED_STATE_SET [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/android/u/tasklib/R$attr/erp_switchStyle I
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/CompoundButton/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mVelocityTracker Landroid/view/VelocityTracker;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/common/NDSwitch/needBlockTouch Z
aload 0
new android/text/TextPaint
dup
iconst_1
invokespecial android/text/TextPaint/<init>(I)V
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getResources()Landroid/content/res/Resources;
astore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 4
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putfield android/text/TextPaint/density F
aload 1
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_thumb I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_track I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_textOn I
invokevirtual android/content/res/TypedArray/getText(I)Ljava/lang/CharSequence;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOn Ljava/lang/CharSequence;
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_textOff I
invokevirtual android/content/res/TypedArray/getText(I)Ljava/lang/CharSequence;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOff Ljava/lang/CharSequence;
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_thumbTextPadding I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbTextPadding I
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_switchMinWidth I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchMinWidth I
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_switchPadding I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchPadding I
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_switchTextSize I
bipush 15
invokevirtual android/content/res/TypedArray/getDimensionPixelOffset(II)I
putfield com/nd/android/u/tast/experience/common/NDSwitch/fontSize I
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/Switch_switchTextColor I
iconst_0
invokevirtual android/content/res/TypedArray/getColor(II)I
putfield com/nd/android/u/tast/experience/common/NDSwitch/fontDefaultColor I
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 1
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMinimumFlingVelocity()I
putfield com/nd/android/u/tast/experience/common/NDSwitch/mMinFlingVelocity I
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/refreshDrawableState()V
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isChecked()Z
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setChecked(Z)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/fontDefaultColor I
invokevirtual android/text/TextPaint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/fontSize I
i2f
invokevirtual android/text/TextPaint/setTextSize(F)V
return
.limit locals 5
.limit stack 5
.end method

.method private animateThumbToCheckedState(Z)V
aload 0
iload 1
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setChecked(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
astore 1
aload 1
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
aload 0
aload 1
invokespecial android/widget/CompoundButton/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 1
invokevirtual android/view/MotionEvent/recycle()V
return
.limit locals 2
.limit stack 2
.end method

.method private getTargetCheckedState()Z
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getThumbScrollRange()I
iconst_2
idiv
i2f
fcmpl
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private getThumbScrollRange()I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchWidth I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbWidth I
isub
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
isub
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
isub
ireturn
.limit locals 1
.limit stack 2
.end method

.method private hitThumb(FF)Z
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchTop I
istore 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
istore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchLeft I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
ldc_w 0.5F
fadd
f2i
iadd
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
isub
istore 5
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbWidth I
istore 6
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 7
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
istore 8
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
istore 9
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchBottom I
istore 10
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
istore 11
fload 1
iload 5
i2f
fcmpl
ifle L0
fload 1
iload 6
iload 5
iadd
iload 7
iadd
iload 8
iadd
iload 9
iadd
i2f
fcmpg
ifge L0
fload 2
iload 3
iload 4
isub
i2f
fcmpl
ifle L0
fload 2
iload 10
iload 11
iadd
i2f
fcmpg
ifge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 12
.limit stack 3
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
new android/text/StaticLayout
dup
aload 1
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 1
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
invokestatic android/text/Layout/getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
getstatic android/text/Layout$Alignment/ALIGN_NORMAL Landroid/text/Layout$Alignment;
fconst_1
fconst_0
iconst_1
invokespecial android/text/StaticLayout/<init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
areturn
.limit locals 2
.limit stack 9
.end method

.method private setSwitchTypefaceByIndex(II)V
aconst_null
astore 3
iload 1
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 0
aload 3
iload 2
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setSwitchTypeface(Landroid/graphics/Typeface;I)V
return
L0:
getstatic android/graphics/Typeface/SANS_SERIF Landroid/graphics/Typeface;
astore 3
goto L3
L1:
getstatic android/graphics/Typeface/SERIF Landroid/graphics/Typeface;
astore 3
goto L3
L2:
getstatic android/graphics/Typeface/MONOSPACE Landroid/graphics/Typeface;
astore 3
goto L3
.limit locals 4
.limit stack 3
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isEnabled()Z
ifeq L0
iconst_1
istore 3
L1:
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/cancelSuperTouch(Landroid/view/MotionEvent;)V
iload 3
ifeq L2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mVelocityTracker Landroid/view/VelocityTracker;
sipush 1000
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/getXVelocity()F
fstore 2
fload 2
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mMinFlingVelocity I
i2f
fcmpl
ifle L3
fload 2
fconst_0
fcmpl
ifle L4
iconst_1
istore 4
L5:
aload 0
iload 4
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/animateThumbToCheckedState(Z)V
return
L0:
iconst_0
istore 3
goto L1
L4:
iconst_0
istore 4
goto L5
L3:
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getTargetCheckedState()Z
istore 4
goto L5
L2:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isChecked()Z
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/animateThumbToCheckedState(Z)V
return
.limit locals 5
.limit stack 2
.end method

.method protected drawableStateChanged()V
aload 0
invokespecial android/widget/CompoundButton/drawableStateChanged()V
bipush 6
newarray int
astore 1
aload 1
dup
iconst_0
ldc_w 16842910
iastore
dup
iconst_1
ldc_w 16842910
iastore
dup
iconst_2
ldc_w 16843547
iastore
dup
iconst_3
ldc_w 16843597
iastore
dup
iconst_4
ldc_w 16842912
iastore
dup
iconst_5
ldc_w 16842912
iastore
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/setState([I)Z
pop
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
ifnull L1
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/setState([I)Z
pop
L1:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/invalidate()V
return
.limit locals 2
.limit stack 4
.end method

.method public getCompoundPaddingRight()I
aload 0
invokespecial android/widget/CompoundButton/getCompoundPaddingRight()I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchWidth I
iadd
istore 2
iload 2
istore 1
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getText()Ljava/lang/CharSequence;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iload 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchPadding I
iadd
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getTextOff()Ljava/lang/CharSequence;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOff Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTextOn()Ljava/lang/CharSequence;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOn Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onCreateDrawableState(I)[I
aload 0
iload 1
iconst_1
iadd
invokespecial android/widget/CompoundButton/onCreateDrawableState(I)[I
astore 2
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isChecked()Z
ifeq L0
aload 2
getstatic com/nd/android/u/tast/experience/common/NDSwitch/CHECKED_STATE_SET [I
invokestatic com/nd/android/u/tast/experience/common/NDSwitch/mergeDrawableStates([I[I)[I
pop
L0:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/widget/CompoundButton/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchLeft I
istore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchTop I
istore 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchRight I
istore 7
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchBottom I
istore 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
iload 4
iload 2
iload 7
iload 3
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
iload 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iadd
istore 6
iload 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
iadd
istore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
istore 8
iload 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
istore 5
aload 1
iload 6
iload 2
iload 7
iload 8
isub
iload 3
invokevirtual android/graphics/Canvas/clipRect(IIII)Z
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
ldc_w 0.5F
fadd
f2i
istore 8
iload 6
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
isub
iload 8
iadd
istore 7
iload 6
iload 8
iadd
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbWidth I
iadd
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
istore 6
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
iload 7
iload 2
iload 6
iload 3
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getDrawableState()[I
putfield android/text/TextPaint/drawableState [I
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getTargetCheckedState()Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOnLayout Landroid/text/Layout;
astore 9
aload 1
iload 7
iload 6
iadd
iconst_2
idiv
aload 9
invokevirtual android/text/Layout/getWidth()I
iconst_2
idiv
isub
i2f
iload 4
iload 5
iadd
iconst_2
idiv
aload 9
invokevirtual android/text/Layout/getHeight()I
iconst_2
idiv
isub
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 9
aload 1
invokevirtual android/text/Layout/draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOffLayout Landroid/text/Layout;
astore 9
aload 1
aload 9
invokevirtual android/text/Layout/getWidth()I
iload 7
iload 6
iadd
iconst_2
idiv
isub
iconst_4
iadd
i2f
fconst_0
invokevirtual android/graphics/Canvas/translate(FF)V
aload 9
aload 1
invokevirtual android/text/Layout/draw(Landroid/graphics/Canvas;)V
L1:
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOffLayout Landroid/text/Layout;
astore 9
aload 1
iload 7
iload 6
iadd
iconst_2
idiv
aload 9
invokevirtual android/text/Layout/getWidth()I
iconst_2
idiv
isub
i2f
iload 4
iload 5
iadd
iconst_2
idiv
aload 9
invokevirtual android/text/Layout/getHeight()I
iconst_2
idiv
isub
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 9
aload 1
invokevirtual android/text/Layout/draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOnLayout Landroid/text/Layout;
astore 9
aload 1
iload 7
iload 6
iadd
iconst_2
idiv
aload 9
invokevirtual android/text/Layout/getWidth()I
iconst_2
idiv
iadd
iconst_2
isub
i2f
fconst_0
invokevirtual android/graphics/Canvas/translate(FF)V
aload 9
aload 1
invokevirtual android/text/Layout/draw(Landroid/graphics/Canvas;)V
goto L1
.limit locals 10
.limit stack 5
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial android/widget/CompoundButton/onLayout(ZIIII)V
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isChecked()Z
ifeq L0
aload 0
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getThumbScrollRange()I
i2f
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
L1:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getWidth()I
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getPaddingRight()I
isub
istore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchWidth I
istore 5
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getGravity()I
bipush 112
iand
lookupswitch
16 : L2
80 : L3
default : L4
L4:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getPaddingTop()I
istore 3
iload 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchHeight I
iadd
istore 2
L5:
aload 0
iload 4
iload 5
isub
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchLeft I
aload 0
iload 3
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchTop I
aload 0
iload 2
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchBottom I
aload 0
iload 4
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchRight I
return
L0:
aload 0
fconst_0
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
goto L1
L2:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getPaddingTop()I
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getHeight()I
iadd
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getPaddingBottom()I
isub
iconst_2
idiv
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchHeight I
iconst_2
idiv
isub
istore 3
iload 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchHeight I
iadd
istore 2
goto L5
L3:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getHeight()I
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getPaddingBottom()I
isub
istore 2
iload 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchHeight I
isub
istore 3
goto L5
.limit locals 6
.limit stack 6
.end method

.method public onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 3
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 5
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 6
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOnLayout Landroid/text/Layout;
ifnonnull L0
aload 0
aload 0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOn Ljava/lang/CharSequence;
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mOnLayout Landroid/text/Layout;
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOffLayout Landroid/text/Layout;
ifnonnull L1
aload 0
aload 0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOff Ljava/lang/CharSequence;
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
putfield com/nd/android/u/tast/experience/common/NDSwitch/mOffLayout Landroid/text/Layout;
L1:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOnLayout Landroid/text/Layout;
invokevirtual android/text/Layout/getWidth()I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mOffLayout Landroid/text/Layout;
invokevirtual android/text/Layout/getWidth()I
invokestatic java/lang/Math/max(II)I
istore 7
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchMinWidth I
iload 7
iconst_2
imul
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbTextPadding I
iconst_4
imul
iadd
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iadd
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTempRect Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
invokestatic java/lang/Math/max(II)I
istore 8
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
istore 9
aload 0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbTextPadding I
iconst_2
imul
iload 7
iadd
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbWidth I
iload 3
lookupswitch
-2147483648 : L2
0 : L3
1073741824 : L4
default : L4
L4:
iload 4
lookupswitch
-2147483648 : L5
0 : L6
1073741824 : L7
default : L7
L7:
aload 0
iload 8
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchWidth I
aload 0
iload 9
putfield com/nd/android/u/tast/experience/common/NDSwitch/mSwitchHeight I
aload 0
iload 1
iload 2
invokespecial android/widget/CompoundButton/onMeasure(II)V
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getMeasuredHeight()I
iload 9
if_icmpge L8
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getMeasuredWidth()I
iload 9
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setMeasuredDimension(II)V
L8:
return
L2:
iload 5
iload 8
invokestatic java/lang/Math/min(II)I
pop
goto L4
L3:
goto L4
L5:
iload 6
iload 9
invokestatic java/lang/Math/min(II)I
pop
goto L7
L6:
goto L7
.limit locals 10
.limit stack 4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
iconst_1
istore 4
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/needBlockTouch Z
ifeq L0
aload 0
aload 1
invokespecial android/widget/CompoundButton/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 4
L1:
iload 4
ireturn
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L2
L3
L4
L5
default : L3
L3:
aload 0
aload 1
invokespecial android/widget/CompoundButton/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/isEnabled()Z
ifeq L3
aload 0
fload 2
fload 3
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/hitThumb(FF)Z
ifeq L3
aload 0
iconst_1
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
aload 0
fload 2
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchX F
aload 0
fload 3
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchY F
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
tableswitch 0
L3
L6
L7
default : L8
L8:
goto L3
L6:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
fload 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchX F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
i2f
fcmpl
ifgt L9
fload 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchY F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchSlop I
i2f
fcmpl
ifle L3
L9:
aload 0
iconst_2
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/getParent()Landroid/view/ViewParent;
iconst_1
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
aload 0
fload 2
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchX F
aload 0
fload 3
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchY F
iconst_1
ireturn
L7:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchX F
fstore 3
fconst_0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
fload 2
fload 3
fsub
fadd
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getThumbScrollRange()I
i2f
invokestatic java/lang/Math/min(FF)F
invokestatic java/lang/Math/max(FF)F
fstore 3
fload 3
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
fcmpl
ifeq L1
aload 0
fload 3
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
aload 0
fload 2
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchX F
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/invalidate()V
iconst_1
ireturn
L5:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
iconst_2
if_icmpne L10
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/stopDrag(Landroid/view/MotionEvent;)V
iconst_1
ireturn
L10:
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTouchMode I
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/clear()V
goto L3
.limit locals 5
.limit stack 4
.end method

.method public setChecked(Z)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/needBlockTouch Z
ifeq L0
return
L0:
aload 0
iload 1
invokespecial android/widget/CompoundButton/setChecked(Z)V
iload 1
ifeq L1
aload 0
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/getThumbScrollRange()I
i2f
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
L2:
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/invalidate()V
return
L1:
aload 0
fconst_0
putfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbPosition F
goto L2
.limit locals 2
.limit stack 2
.end method

.method public setNeedBlockTouch(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/common/NDSwitch/needBlockTouch Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
aload 1
iload 2
getstatic com/nd/android/u/tasklib/R$styleable/Android [I
invokevirtual android/content/Context/obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
astore 1
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/Android_android_textSize I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
pop
bipush 15
ifeq L0
bipush 15
i2f
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
invokevirtual android/text/TextPaint/getTextSize()F
fcmpl
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
bipush 15
i2f
invokevirtual android/text/TextPaint/setTextSize(F)V
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/requestLayout()V
L0:
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/Android_android_typeface I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/Android_android_textStyle I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
invokespecial com/nd/android/u/tast/experience/common/NDSwitch/setSwitchTypefaceByIndex(II)V
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 3
.limit stack 5
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
invokevirtual android/text/TextPaint/getTypeface()Landroid/graphics/Typeface;
aload 1
if_acmpeq L0
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
aload 1
invokevirtual android/text/TextPaint/setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
pop
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/requestLayout()V
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/invalidate()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
iconst_0
istore 4
iload 2
ifle L0
aload 1
ifnonnull L1
iload 2
invokestatic android/graphics/Typeface/defaultFromStyle(I)Landroid/graphics/Typeface;
astore 1
L2:
aload 0
aload 1
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setSwitchTypeface(Landroid/graphics/Typeface;)V
aload 1
ifnull L3
aload 1
invokevirtual android/graphics/Typeface/getStyle()I
istore 3
L4:
iload 2
iload 3
iconst_m1
ixor
iand
istore 2
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
astore 1
iload 2
iconst_1
iand
ifeq L5
iconst_1
istore 4
L5:
aload 1
iload 4
invokevirtual android/text/TextPaint/setFakeBoldText(Z)V
iload 2
iconst_2
iand
ifeq L6
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
ldc_w -0.25F
invokevirtual android/text/TextPaint/setTextSkewX(F)V
return
L1:
aload 1
iload 2
invokestatic android/graphics/Typeface/create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
astore 1
goto L2
L3:
iconst_0
istore 3
goto L4
L6:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
fconst_0
invokevirtual android/text/TextPaint/setTextSkewX(F)V
return
L0:
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
iconst_0
invokevirtual android/text/TextPaint/setFakeBoldText(Z)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTextPaint Landroid/text/TextPaint;
fconst_0
invokevirtual android/text/TextPaint/setTextSkewX(F)V
aload 0
aload 1
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/setSwitchTypeface(Landroid/graphics/Typeface;)V
return
.limit locals 5
.limit stack 3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOff Ljava/lang/CharSequence;
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/common/NDSwitch/mTextOn Ljava/lang/CharSequence;
aload 0
invokevirtual com/nd/android/u/tast/experience/common/NDSwitch/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
aload 0
aload 1
invokespecial android/widget/CompoundButton/verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
ifne L0
aload 1
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mThumbDrawable Landroid/graphics/drawable/Drawable;
if_acmpeq L0
aload 1
aload 0
getfield com/nd/android/u/tast/experience/common/NDSwitch/mTrackDrawable Landroid/graphics/drawable/Drawable;
if_acmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
