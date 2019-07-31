.bytecode 50.0
.class public synchronized abstract com/nd/album/ui/widget/BaseSingleView
.super android/widget/LinearLayout
.implements android/view/View$OnTouchListener
.inner class inner com/nd/album/ui/widget/BaseSingleView$1

.field static final 'DRAG' I = 1


.field private static final 'HIDE_MENU' I = 1


.field static final 'MAX' F = 4.0F


.field static final 'MIN' F = 0.5F


.field public static final 'MINIZOOM' I = 2


.field static final 'NONE' I = 0


.field private static final 'TAG' Ljava/lang/String; = "SinglePictureView"

.field static final 'ZOOM' I = 2


.field 'MAX_SCALE' F

.field 'MIN_SCALE' F

.field protected final 'SAVE_IMAGE_FAIL' I

.field protected final 'SAVE_IMAGE_NOT_EXIST' I

.field protected final 'SAVE_IMAGE_START' I

.field protected final 'SAVE_IMAGE_SUCCESS' I

.field 'dist' F

.field private 'distanceTime' J

.field private 'firClick' J

.field private 'isZoom' Z

.field private 'isbig' Z

.field protected 'layoutTop' Landroid/widget/RelativeLayout;

.field 'limitX1' F

.field 'limitX2' F

.field 'limitY1' F

.field 'limitY2' F

.field protected 'mActivity' Landroid/app/Activity;

.field protected 'mBmpHeight' F

.field protected 'mBmpWidth' F

.field protected 'mHandler' Landroid/os/Handler;

.field protected 'mImageView' Landroid/widget/ImageView;

.field protected 'mNum' I

.field protected 'mScreenHeight' I

.field protected 'mScreenWidth' I

.field 'matrix' Landroid/graphics/Matrix;

.field 'mid' Landroid/graphics/PointF;

.field 'minScaleR' F

.field 'mode' I

.field private 'myCalendar' Ljava/util/Calendar;

.field 'prev' Landroid/graphics/PointF;

.field 'savedMatrix' Landroid/graphics/Matrix;

.field private 'secClick' J

.field 'subX' F

.field 'subY' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
aload 0
ldc_w 4.0F
putfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
ldc_w 0.5F
putfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mode I
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/mid Landroid/graphics/PointF;
aload 0
fconst_1
putfield com/nd/album/ui/widget/BaseSingleView/dist F
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
aload 0
iconst_4
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_START I
aload 0
iconst_5
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_SUCCESS I
aload 0
bipush 6
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_FAIL I
aload 0
bipush 7
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_NOT_EXIST I
aload 0
new com/nd/album/ui/widget/BaseSingleView$1
dup
aload 0
invokespecial com/nd/album/ui/widget/BaseSingleView$1/<init>(Lcom/nd/album/ui/widget/BaseSingleView;)V
putfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
aload 0
ldc_w 4.0F
putfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
ldc_w 0.5F
putfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mode I
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/nd/album/ui/widget/BaseSingleView/mid Landroid/graphics/PointF;
aload 0
fconst_1
putfield com/nd/album/ui/widget/BaseSingleView/dist F
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
aload 0
iconst_4
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_START I
aload 0
iconst_5
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_SUCCESS I
aload 0
bipush 6
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_FAIL I
aload 0
bipush 7
putfield com/nd/album/ui/widget/BaseSingleView/SAVE_IMAGE_NOT_EXIST I
aload 0
new com/nd/album/ui/widget/BaseSingleView$1
dup
aload 0
invokespecial com/nd/album/ui/widget/BaseSingleView$1/<init>(Lcom/nd/album/ui/widget/BaseSingleView;)V
putfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
return
.limit locals 3
.limit stack 4
.end method

.method private isDoubleClick(FF)Z
iconst_0
istore 8
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
putfield com/nd/album/ui/widget/BaseSingleView/myCalendar Ljava/util/Calendar;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/firClick J
lconst_0
lcmp
ifne L0
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/myCalendar Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
putfield com/nd/album/ui/widget/BaseSingleView/firClick J
aload 0
lconst_0
putfield com/nd/album/ui/widget/BaseSingleView/distanceTime J
L1:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/distanceTime J
lconst_0
lcmp
ifle L2
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/distanceTime J
ldc2_w 500L
lcmp
ifge L2
aload 0
lconst_0
putfield com/nd/album/ui/widget/BaseSingleView/firClick J
aload 0
lconst_0
putfield com/nd/album/ui/widget/BaseSingleView/secClick J
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/isbig Z
ifne L3
ldc "SinglePictureView"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "x:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
fload 1
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc " y:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
fload 2
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
fconst_1
fsub
fload 1
fmul
fneg
fstore 4
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
fconst_1
fsub
fload 2
fmul
fneg
fstore 3
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fmul
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
fmul
fstore 5
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fmul
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
fmul
fstore 6
fload 3
fstore 1
fload 6
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fcmpl
ifle L4
aload 0
fload 6
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fsub
fneg
putfield com/nd/album/ui/widget/BaseSingleView/limitY1 F
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/limitY2 F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/subY F
fmul
fstore 7
fload 3
fstore 2
fload 3
fneg
fload 7
fcmpg
ifge L5
fload 7
fneg
fstore 2
L5:
fload 2
fstore 1
fload 7
fload 2
fadd
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/limitY1 F
fcmpg
ifge L4
fload 6
fload 7
fadd
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fsub
fneg
fstore 1
L4:
fload 4
fstore 3
fload 5
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fcmpl
ifle L6
aload 0
fload 5
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fsub
fneg
putfield com/nd/album/ui/widget/BaseSingleView/limitX1 F
aload 0
fconst_0
putfield com/nd/album/ui/widget/BaseSingleView/limitX2 F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/subX F
fmul
fstore 6
fload 4
fstore 2
fload 4
fneg
fload 6
fcmpg
ifge L7
fload 6
fneg
fstore 2
L7:
fload 2
fstore 3
fload 6
fload 2
fadd
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/limitX1 F
fcmpg
ifge L6
fload 5
fload 6
fadd
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fsub
fneg
fstore 3
L6:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
fload 3
fload 1
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/isZoom Z
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
L8:
iconst_1
istore 8
L9:
iload 8
ireturn
L0:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/secClick J
lconst_0
lcmp
ifne L1
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/myCalendar Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
putfield com/nd/album/ui/widget/BaseSingleView/secClick J
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/secClick J
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/firClick J
lsub
putfield com/nd/album/ui/widget/BaseSingleView/distanceTime J
goto L1
L3:
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/resetMatrix()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/center()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
goto L8
L2:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/distanceTime J
ldc2_w 500L
lcmp
ifle L9
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/secClick J
putfield com/nd/album/ui/widget/BaseSingleView/firClick J
aload 0
lconst_0
putfield com/nd/album/ui/widget/BaseSingleView/secClick J
iconst_0
ireturn
.limit locals 9
.limit stack 5
.end method

.method private setMenuVisible(I)V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/layoutTop Landroid/widget/RelativeLayout;
iload 1
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
iload 1
ifne L0
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/resetTime()V
return
L0:
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/cancelHandHideMenu()V
return
.limit locals 2
.limit stack 2
.end method

.method protected CheckView()V
bipush 9
newarray float
astore 1
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 1
invokevirtual android/graphics/Matrix/getValues([F)V
aload 1
iconst_0
faload
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fcmpg
ifgt L0
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/isZoom Z
L0:
aload 1
iconst_0
faload
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
fcmpg
ifge L1
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
invokevirtual android/graphics/Matrix/setScale(FF)V
L2:
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/center()V
return
L1:
aload 1
iconst_0
faload
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
fcmpl
ifle L3
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
goto L2
L3:
aload 1
iconst_0
faload
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fcmpl
ifne L2
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
goto L2
.limit locals 2
.limit stack 3
.end method

.method public cancelHandHideMenu()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected center()V
aload 0
iconst_1
iconst_1
invokevirtual com/nd/album/ui/widget/BaseSingleView/center(ZZ)V
return
.limit locals 1
.limit stack 3
.end method

.method protected center(ZZ)V
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 8
aload 8
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
new android/graphics/RectF
dup
fconst_0
fconst_0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
invokespecial android/graphics/RectF/<init>(FFFF)V
astore 9
aload 8
aload 9
invokevirtual android/graphics/Matrix/mapRect(Landroid/graphics/RectF;)Z
pop
aload 9
invokevirtual android/graphics/RectF/height()F
fstore 7
aload 9
invokevirtual android/graphics/RectF/width()F
fstore 6
fconst_0
fstore 5
fconst_0
fstore 4
fload 4
fstore 3
iload 2
ifeq L0
fload 7
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fcmpg
ifge L1
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fload 7
fsub
fconst_2
fdiv
aload 9
getfield android/graphics/RectF/top F
fsub
fstore 3
L0:
fload 5
fstore 4
iload 1
ifeq L2
fload 6
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fcmpg
ifge L3
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fload 6
fsub
fconst_2
fdiv
aload 9
getfield android/graphics/RectF/left F
fsub
fstore 4
L2:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
fload 4
fload 3
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
return
L1:
aload 9
getfield android/graphics/RectF/top F
fconst_0
fcmpl
ifle L4
aload 9
getfield android/graphics/RectF/top F
fneg
fstore 3
goto L0
L4:
fload 4
fstore 3
aload 9
getfield android/graphics/RectF/bottom F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
fcmpg
ifge L0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getHeight()I
i2f
aload 9
getfield android/graphics/RectF/bottom F
fsub
fstore 3
goto L0
L3:
aload 9
getfield android/graphics/RectF/left F
fconst_0
fcmpl
ifle L5
aload 9
getfield android/graphics/RectF/left F
fneg
fstore 4
goto L2
L5:
fload 5
fstore 4
aload 9
getfield android/graphics/RectF/right F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
fcmpg
ifge L2
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
aload 9
getfield android/graphics/RectF/right F
fsub
fstore 4
goto L2
.limit locals 10
.limit stack 6
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
aload 1
invokespecial android/widget/LinearLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getmNum()I
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hideMenu()V
aload 0
iconst_0
invokespecial com/nd/album/ui/widget/BaseSingleView/setMenuVisible(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
fstore 3
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
fstore 4
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
fstore 5
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
fstore 6
aload 1
fload 3
fload 4
fadd
fconst_2
fdiv
fload 5
fload 6
fadd
fconst_2
fdiv
invokevirtual android/graphics/PointF/set(FF)V
return
.limit locals 7
.limit stack 4
.end method

.method protected minZoom()V
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
fdiv
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
fdiv
invokestatic java/lang/Math/min(FF)F
putfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
ldc_w 0.5F
fcmpl
ifle L0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
ldc_w 4.0F
fcmpg
ifge L0
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
putfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
aload 0
ldc_w 4.0F
putfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
L1:
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenWidth I
i2f
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fmul
fsub
fconst_2
fdiv
putfield com/nd/album/ui/widget/BaseSingleView/subX F
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mScreenHeight I
i2f
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fmul
fsub
fconst_2
fdiv
putfield com/nd/album/ui/widget/BaseSingleView/subY F
return
L0:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
ldc_w 4.0F
fcmpl
iflt L2
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
fconst_2
fadd
putfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/minScaleR F
putfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
goto L1
L2:
aload 0
ldc_w 4.0F
putfield com/nd/album/ui/widget/BaseSingleView/MAX_SCALE F
aload 0
ldc_w 0.5F
putfield com/nd/album/ui/widget/BaseSingleView/MIN_SCALE F
goto L1
.limit locals 1
.limit stack 4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
tableswitch 0
L0
L1
L2
L3
L3
L4
L5
default : L3
L3:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokevirtual android/graphics/PointF/set(FF)V
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/mode I
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/CheckView()V
iconst_1
ireturn
L4:
aload 0
aload 0
aload 2
invokevirtual com/nd/album/ui/widget/BaseSingleView/spacing(Landroid/view/MotionEvent;)F
putfield com/nd/album/ui/widget/BaseSingleView/dist F
aload 0
aload 2
invokevirtual com/nd/album/ui/widget/BaseSingleView/spacing(Landroid/view/MotionEvent;)F
ldc_w 10.0F
fcmpl
ifle L6
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mid Landroid/graphics/PointF;
aload 2
invokevirtual com/nd/album/ui/widget/BaseSingleView/midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
aload 0
iconst_2
putfield com/nd/album/ui/widget/BaseSingleView/mode I
L6:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/CheckView()V
iconst_1
ireturn
L1:
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mode I
aload 0
aload 2
invokevirtual android/view/MotionEvent/getRawX()F
aload 2
invokevirtual android/view/MotionEvent/getRawY()F
invokespecial com/nd/album/ui/widget/BaseSingleView/isDoubleClick(FF)Z
ifne L3
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
getfield android/graphics/PointF/x F
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 6.0F
fcmpg
ifge L7
aload 2
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
getfield android/graphics/PointF/y F
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 6.0F
fcmpg
ifge L7
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/switchMenu()V
L7:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/CheckView()V
iconst_1
ireturn
L5:
aload 0
iconst_0
putfield com/nd/album/ui/widget/BaseSingleView/mode I
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/CheckView()V
iconst_1
ireturn
L2:
ldc "SinglePictureView"
ldc "ACTION_MOVE"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mode I
iconst_1
if_icmpne L8
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/isZoom Z
ifeq L8
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
getfield android/graphics/PointF/x F
fsub
aload 2
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/prev Landroid/graphics/PointF;
getfield android/graphics/PointF/y F
fsub
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
L9:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokevirtual com/nd/album/ui/widget/BaseSingleView/CheckView()V
iconst_1
ireturn
L8:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mode I
iconst_2
if_icmpne L9
aload 0
aload 2
invokevirtual com/nd/album/ui/widget/BaseSingleView/spacing(Landroid/view/MotionEvent;)F
fstore 3
fload 3
ldc_w 10.0F
fcmpl
ifle L9
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/savedMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
fload 3
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/dist F
fdiv
fstore 3
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
fload 3
fload 3
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mid Landroid/graphics/PointF;
getfield android/graphics/PointF/x F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mid Landroid/graphics/PointF;
getfield android/graphics/PointF/y F
invokevirtual android/graphics/Matrix/postScale(FFFF)Z
pop
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/isZoom Z
aload 0
iconst_1
putfield com/nd/album/ui/widget/BaseSingleView/isbig Z
goto L9
.limit locals 4
.limit stack 5
.end method

.method public abstract releaseBitmap()V
.end method

.method protected resetMatrix()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/reset()V
return
.limit locals 1
.limit stack 1
.end method

.method public resetTime()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/mHandler Landroid/os/Handler;
aload 1
ldc2_w 5000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public abstract setButtonEnable(Z)V
.end method

.method public showMenu()V
aload 0
iconst_0
invokespecial com/nd/album/ui/widget/BaseSingleView/setMenuVisible(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected spacing(Landroid/view/MotionEvent;)F
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
fsub
fstore 2
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
fsub
fstore 3
fload 2
fload 2
fmul
fload 3
fload 3
fmul
fadd
f2d
invokestatic java/lang/Math/sqrt(D)D
d2f
freturn
.limit locals 4
.limit stack 3
.end method

.method protected switchMenu()V
iconst_4
istore 1
aload 0
getfield com/nd/album/ui/widget/BaseSingleView/layoutTop Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
iconst_4
if_icmpne L0
iconst_0
istore 1
L0:
aload 0
iload 1
invokespecial com/nd/album/ui/widget/BaseSingleView/setMenuVisible(I)V
return
.limit locals 2
.limit stack 2
.end method
