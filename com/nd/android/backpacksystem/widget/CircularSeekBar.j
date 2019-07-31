.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/CircularSeekBar
.super android/view/View
.inner class public static abstract interface OnCircularSeekBarChangeListener inner com/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener outer com/nd/android/backpacksystem/widget/CircularSeekBar

.field private static final 'DEFAULT_CIRCLE_COLOR' I = 0


.field private static final 'DEFAULT_CIRCLE_FILL_COLOR' I = 0


.field private static final 'DEFAULT_CIRCLE_PROGRESS_COLORS' [I

.field private static final 'DEFAULT_CIRCLE_STROKE_WIDTH' F = 3.0F


.field private static final 'DEFAULT_CIRCLE_X_RADIUS' F = 30.0F


.field private static final 'DEFAULT_CIRCLE_Y_RADIUS' F = 30.0F


.field private static final 'DEFAULT_END_ANGLE' F = 0.0F


.field private static final 'DEFAULT_MAX' I = 100


.field private static final 'DEFAULT_POINTER_HALO_BORDER_WIDTH' F = 2.0F


.field private static final 'DEFAULT_POINTER_RADIUS' F = 5.0F


.field private static final 'DEFAULT_PROGRESS' I = 0


.field private static final 'DEFAULT_START_ANGLE' F = 2.0F


.field private static final 'DEFAULT_USE_CUSTOM_RADII' Z = 0


.field private static final 'MAX_ANGLE' F = 360.0F


.field private final 'DPTOPX_SCALE' F

.field private 'mCircleColor' I

.field private 'mCircleFillColor' I

.field private 'mCircleFillPaint' Landroid/graphics/Paint;

.field private 'mCircleHeight' F

.field private 'mCirclePaint' Landroid/graphics/Paint;

.field private 'mCirclePath' Landroid/graphics/Path;

.field private 'mCircleProgressColor' [I

.field private 'mCircleProgressGlowPaint' Landroid/graphics/Paint;

.field private 'mCircleProgressPaint' Landroid/graphics/Paint;

.field private 'mCircleProgressPath' Landroid/graphics/Path;

.field private 'mCircleRectF' Landroid/graphics/RectF;

.field private 'mCircleStrokeWidth' F

.field private 'mCircleWidth' F

.field private 'mCircleXRadius' F

.field private 'mCircleYRadius' F

.field private 'mCustomRadii' Z

.field private 'mEndAngle' F

.field private 'mMax' I

.field private 'mOnCircularSeekBarChangeListener' Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;

.field private 'mPointBitmap' Landroid/graphics/Bitmap;

.field private 'mPointHeightRadii' I

.field private 'mPointWidthRadii' I

.field private 'mPointerHaloBorderWidth' F

.field private 'mPointerPosition' F

.field private 'mPointerPositionXY' [F

.field private 'mPointerRadius' F

.field private 'mProgress' I

.field private 'mProgressDegrees' F

.field private 'mStartAngle' F

.field private 'mTotalCircleDegrees' F

.method static <clinit>()V
iconst_4
newarray int
dup
iconst_0
ldc_w -10110337
iastore
dup
iconst_1
ldc_w -10110337
iastore
dup
iconst_2
ldc_w -10110337
iastore
dup
iconst_3
ldc_w -10110337
iastore
putstatic com/nd/android/backpacksystem/widget/CircularSeekBar/DEFAULT_CIRCLE_PROGRESS_COLORS [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
aload 0
getstatic com/nd/android/backpacksystem/widget/CircularSeekBar/DEFAULT_CIRCLE_PROGRESS_COLORS [I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aload 0
iconst_2
newarray float
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointWidthRadii I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointHeightRadii I
aload 0
aconst_null
iconst_0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/init(Landroid/util/AttributeSet;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
aload 0
getstatic com/nd/android/backpacksystem/widget/CircularSeekBar/DEFAULT_CIRCLE_PROGRESS_COLORS [I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aload 0
iconst_2
newarray float
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointWidthRadii I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointHeightRadii I
aload 0
aload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/init(Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
aload 0
getstatic com/nd/android/backpacksystem/widget/CircularSeekBar/DEFAULT_CIRCLE_PROGRESS_COLORS [I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aload 0
iconst_2
newarray float
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointWidthRadii I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointHeightRadii I
aload 0
aload 2
iload 3
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/init(Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method private calculatePointerAngle()V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
i2f
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
i2f
fdiv
fstore 1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
fload 1
fmul
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
fadd
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPosition F
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPosition F
ldc_w 360.0F
frem
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPosition F
return
.limit locals 2
.limit stack 3
.end method

.method private calculatePointerXYPosition()V
new android/graphics/PathMeasure
dup
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPath Landroid/graphics/Path;
iconst_0
invokespecial android/graphics/PathMeasure/<init>(Landroid/graphics/Path;Z)V
astore 1
aload 1
aload 1
invokevirtual android/graphics/PathMeasure/getLength()F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
aconst_null
invokevirtual android/graphics/PathMeasure/getPosTan(F[F[F)Z
ifne L0
new android/graphics/PathMeasure
dup
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePath Landroid/graphics/Path;
iconst_0
invokespecial android/graphics/PathMeasure/<init>(Landroid/graphics/Path;Z)V
fconst_0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
aconst_null
invokevirtual android/graphics/PathMeasure/getPosTan(F[F[F)Z
pop
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_0
faload
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointWidthRadii I
i2f
fsub
fastore
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_1
faload
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointHeightRadii I
i2f
fsub
fastore
return
.limit locals 2
.limit stack 4
.end method

.method private calculateProgressDegrees()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPosition F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
fconst_0
fcmpg
ifge L0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
ldc_w 360.0F
fadd
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private calculateTotalDegrees()V
aload 0
ldc_w 360.0F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mEndAngle F
fsub
fsub
ldc_w 360.0F
frem
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
fconst_0
fcmpg
ifgt L0
aload 0
ldc_w 360.0F
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private init(Landroid/util/AttributeSet;I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getContext()Landroid/content/Context;
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar [I
iload 2
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/initAttributes(Landroid/content/res/TypedArray;)V
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/initPaints()V
return
.limit locals 3
.limit stack 5
.end method

.method private initAttributes(Landroid/content/res/TypedArray;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalArgumentException from L3 to L4 using L5
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_circle_x_radius I
ldc_w 30.0F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleXRadius F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_circle_y_radius I
ldc_w 30.0F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleYRadius F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_pointer_radius I
ldc_w 5.0F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_pointer_halo_border_width I
fconst_2
invokevirtual android/content/res/TypedArray/getFloat(IF)F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_circle_stroke_width I
ldc_w 3.0F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_circle_color I
invokevirtual android/content/res/TypedArray/getString(I)Ljava/lang/String;
astore 2
aload 2
ifnull L1
L0:
aload 0
aload 2
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
L1:
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_circle_fill I
invokevirtual android/content/res/TypedArray/getString(I)Ljava/lang/String;
astore 2
aload 2
ifnull L4
L3:
aload 0
aload 2
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
L4:
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_Max I
bipush 100
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_progress I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_use_custom_radii I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCustomRadii Z
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_start_angle I
fconst_2
invokevirtual android/content/res/TypedArray/getFloat(IF)F
ldc_w 360.0F
frem
ldc_w 360.0F
fadd
ldc_w 360.0F
frem
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$styleable/CircularSeekBar_end_angle I
fconst_0
invokevirtual android/content/res/TypedArray/getFloat(IF)F
ldc_w 360.0F
frem
ldc_w 360.0F
fadd
ldc_w 360.0F
frem
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mEndAngle F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
invokestatic java/lang/Float/compare(FF)I
ifne L6
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mEndAngle F
ldc_w 0.1F
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mEndAngle F
L6:
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$drawable/bg_dlg_record_progress_lightspot I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
idiv
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointWidthRadii I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointHeightRadii I
return
L2:
astore 2
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
goto L1
L5:
astore 2
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
goto L4
.limit locals 3
.limit stack 4
.end method

.method private initPaints()V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setDither(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Join/ROUND Landroid/graphics/Paint$Join;
invokevirtual android/graphics/Paint/setStrokeJoin(Landroid/graphics/Paint$Join;)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Cap/ROUND Landroid/graphics/Paint$Cap;
invokevirtual android/graphics/Paint/setStrokeCap(Landroid/graphics/Paint$Cap;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setDither(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setDither(Z)V
new android/graphics/SweepGradient
dup
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aconst_null
invokespecial android/graphics/SweepGradient/<init>(FF[I[F)V
astore 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Join/ROUND Landroid/graphics/Paint$Join;
invokevirtual android/graphics/Paint/setStrokeJoin(Landroid/graphics/Paint$Join;)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Cap/ROUND Landroid/graphics/Paint$Cap;
invokevirtual android/graphics/Paint/setStrokeCap(Landroid/graphics/Paint$Cap;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressGlowPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressGlowPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/set(Landroid/graphics/Paint;)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressGlowPaint Landroid/graphics/Paint;
new android/graphics/BlurMaskFilter
dup
ldc_w 5.0F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/DPTOPX_SCALE F
fmul
getstatic android/graphics/BlurMaskFilter$Blur/NORMAL Landroid/graphics/BlurMaskFilter$Blur;
invokespecial android/graphics/BlurMaskFilter/<init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
invokevirtual android/graphics/Paint/setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private initPaths()V
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
invokevirtual android/graphics/Path/addArc(Landroid/graphics/RectF;FF)V
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mStartAngle F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
invokevirtual android/graphics/Path/addArc(Landroid/graphics/RectF;FF)V
return
.limit locals 1
.limit stack 4
.end method

.method private initRects()V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleRectF Landroid/graphics/RectF;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
fneg
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
fneg
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
invokevirtual android/graphics/RectF/set(FFFF)V
return
.limit locals 1
.limit stack 5
.end method

.method private recalculateAll()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/calculateTotalDegrees()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/calculatePointerAngle()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/calculateProgressDegrees()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/initRects()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/initPaths()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/calculatePointerXYPosition()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCircleColor()I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCircleFillColor()I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCircleProgressColor()[I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMax()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public getProgress()I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
i2f
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgressDegrees F
fmul
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mTotalCircleDegrees F
fdiv
invokestatic java/lang/Math/round(F)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 1
ldc_w -90.0F
invokevirtual android/graphics/Canvas/rotate(F)V
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getHeight()I
ineg
i2f
fconst_0
invokevirtual android/graphics/Canvas/translate(FF)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getWidth()I
iconst_2
idiv
i2f
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getHeight()I
iconst_2
idiv
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePath Landroid/graphics/Path;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointBitmap Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_0
faload
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerPositionXY [F
iconst_1
faload
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getSuggestedMinimumHeight()I
iload 2
invokestatic com/nd/android/backpacksystem/widget/CircularSeekBar/getDefaultSize(II)I
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/getSuggestedMinimumWidth()I
iload 1
invokestatic com/nd/android/backpacksystem/widget/CircularSeekBar/getDefaultSize(II)I
istore 1
iload 1
iload 2
invokestatic java/lang/Math/min(II)I
istore 4
aload 0
iload 4
iload 4
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setMeasuredDimension(II)V
aload 0
iload 2
i2f
fconst_2
fdiv
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
ldc_w 1.5F
fmul
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
aload 0
iload 1
i2f
fconst_2
fdiv
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
ldc_w 1.5F
fmul
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCustomRadii Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleYRadius F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
fcmpg
ifge L1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleYRadius F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
ldc_w 1.5F
fmul
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleXRadius F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
fcmpg
ifge L0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleXRadius F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleStrokeWidth F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerRadius F
fsub
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mPointerHaloBorderWidth F
ldc_w 1.5F
fmul
fsub
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
invokestatic java/lang/Math/min(FF)F
fstore 3
aload 0
fload 3
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleHeight F
aload 0
fload 3
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleWidth F
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/recalculateAll()V
return
.limit locals 5
.limit stack 4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast android/os/Bundle
astore 1
aload 0
aload 1
ldc "PARENT"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
invokespecial android/view/View/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
ldc "MAX"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
aload 0
aload 1
ldc "PROGRESS"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
aload 0
aload 1
ldc "mCircleColor"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
aload 0
aload 1
ldc "mCircleProgressColor"
invokevirtual android/os/Bundle/getIntArray(Ljava/lang/String;)[I
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/initPaints()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/recalculateAll()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
aload 0
invokespecial android/view/View/onSaveInstanceState()Landroid/os/Parcelable;
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "PARENT"
aload 1
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 2
ldc "MAX"
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "PROGRESS"
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "mCircleColor"
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "mCircleProgressColor"
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
invokevirtual android/os/Bundle/putIntArray(Ljava/lang/String;[I)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public setCircleColor(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCirclePaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setCircleFillColor(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleFillColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setCircleProgressColor([I)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
new android/graphics/SweepGradient
dup
fconst_0
fconst_0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressColor [I
aconst_null
invokespecial android/graphics/SweepGradient/<init>(FF[I[F)V
astore 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mCircleProgressPaint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
pop
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/invalidate()V
return
.limit locals 2
.limit stack 6
.end method

.method public setMax(I)V
iload 1
ifle L0
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
if_icmpgt L1
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mOnCircularSeekBarChangeListener Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mOnCircularSeekBarChangeListener Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
iconst_0
invokeinterface com/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener/onProgressChanged(Lcom/nd/android/backpacksystem/widget/CircularSeekBar;IZ)V 3
L1:
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mMax I
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/recalculateAll()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/invalidate()V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public setOnSeekBarChangeListener(Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mOnCircularSeekBarChangeListener Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setProgress(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
iload 1
if_icmpeq L0
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/CircularSeekBar/mProgress I
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mOnCircularSeekBarChangeListener Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/widget/CircularSeekBar/mOnCircularSeekBarChangeListener Lcom/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener;
aload 0
iload 1
iconst_0
invokeinterface com/nd/android/backpacksystem/widget/CircularSeekBar$OnCircularSeekBarChangeListener/onProgressChanged(Lcom/nd/android/backpacksystem/widget/CircularSeekBar;IZ)V 3
L1:
aload 0
invokespecial com/nd/android/backpacksystem/widget/CircularSeekBar/recalculateAll()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/invalidate()V
L0:
return
.limit locals 2
.limit stack 4
.end method
