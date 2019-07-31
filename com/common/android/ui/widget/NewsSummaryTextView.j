.bytecode 50.0
.class public synchronized com/common/android/ui/widget/NewsSummaryTextView
.super android/widget/TextView
.inner class static synthetic inner com/common/android/ui/widget/NewsSummaryTextView$1
.inner class private TextLine inner com/common/android/ui/widget/NewsSummaryTextView$TextLine outer com/common/android/ui/widget/NewsSummaryTextView

.field private final 'DEFAULT_LINE_COUNT' I

.field private final 'DEFAULT_LINE_LENGTH' F

.field private final 'DEFAULT_TEXT_COLOR' I

.field private final 'DEFAULT_TEXT_SIZE' I

.field private 'mLineContentLength' F

.field private 'mLineCount' I

.field private 'mMaxWidth' I

.field private final 'mPaint' Landroid/graphics/Paint;

.field private 'mText' Ljava/lang/String;

.field private 'mTextColor' I

.field private 'mTextLines' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/widget/NewsSummaryTextView$TextLine;>;"

.field private 'mTextSize' F

.field private final 'textSize' [I

.field private final 'tmp' Landroid/graphics/Rect;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/ui/widget/NewsSummaryTextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/common/android/ui/widget/NewsSummaryTextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_2
putfield com/common/android/ui/widget/NewsSummaryTextView/DEFAULT_LINE_COUNT I
aload 0
ldc_w 0.5F
putfield com/common/android/ui/widget/NewsSummaryTextView/DEFAULT_LINE_LENGTH F
aload 0
ldc_w -16777216
putfield com/common/android/ui/widget/NewsSummaryTextView/DEFAULT_TEXT_COLOR I
aload 0
bipush 32
putfield com/common/android/ui/widget/NewsSummaryTextView/DEFAULT_TEXT_SIZE I
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/common/android/ui/widget/NewsSummaryTextView/tmp Landroid/graphics/Rect;
aload 0
iconst_2
newarray int
putfield com/common/android/ui/widget/NewsSummaryTextView/textSize [I
aload 0
iconst_2
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineCount I
aload 0
ldc_w 0.5F
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineContentLength F
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr_android_maxLines I
iconst_2
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineCount I
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr_android_textColor I
ldc_w -16777216
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/widget/NewsSummaryTextView/mTextColor I
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr_android_textSize I
bipush 32
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
i2f
putfield com/common/android/ui/widget/NewsSummaryTextView/mTextSize F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr_lastLineContentLength I
ldc_w 0.5F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineContentLength F
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/NewsSummaryTextViewAttr_android_text I
invokevirtual android/content/res/TypedArray/getText(I)Ljava/lang/CharSequence;
astore 2
aload 2
ifnull L0
aload 0
aload 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
L0:
aload 0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextColor I
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setTextColor(I)V
aload 0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextSize F
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setTextSize(F)V
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
invokespecial com/common/android/ui/widget/NewsSummaryTextView/init()V
return
.limit locals 4
.limit stack 5
.end method

.method private init()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method private isSecondLineHalf(II)Z
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
iload 1
iload 2
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/tmp Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mLineCount I
iconst_1
isub
if_icmpne L0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/tmp Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/width()I
i2f
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mMaxWidth I
i2f
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mLineContentLength F
fmul
fcmpl
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method private measureAndSplitText(Landroid/graphics/Paint;Ljava/lang/String;I)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getFontMetrics()Landroid/graphics/Paint$FontMetrics;
astore 17
aload 17
getfield android/graphics/Paint$FontMetrics/bottom F
aload 17
getfield android/graphics/Paint$FontMetrics/top F
fsub
f2i
istore 4
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/getPaddingBottom()I
iload 4
iadd
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/getPaddingTop()I
iadd
istore 15
aload 2
invokevirtual java/lang/String/length()I
istore 16
iconst_0
istore 6
iconst_0
istore 8
iconst_0
istore 4
iload 3
istore 10
aload 17
getfield android/graphics/Paint$FontMetrics/bottom F
f2i
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/getPaddingBottom()I
iadd
istore 14
iconst_1
istore 7
iconst_1
istore 5
L0:
iload 4
istore 9
iload 6
iload 16
if_icmpge L1
iload 8
iconst_1
iadd
istore 13
iload 13
iload 16
iconst_1
iadd
if_icmpeq L2
aload 0
iload 6
iload 13
invokespecial com/common/android/ui/widget/NewsSummaryTextView/isSecondLineHalf(II)Z
ifeq L3
L2:
iload 6
iload 16
iconst_1
isub
if_icmpgt L3
iload 4
istore 9
iload 7
ifeq L1
iload 4
iload 15
iadd
istore 9
new com/common/android/ui/widget/NewsSummaryTextView$TextLine
dup
aload 0
aconst_null
invokespecial com/common/android/ui/widget/NewsSummaryTextView$TextLine/<init>(Lcom/common/android/ui/widget/NewsSummaryTextView;Lcom/common/android/ui/widget/NewsSummaryTextView$1;)V
astore 1
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L4
aload 1
aload 2
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/text Ljava/lang/String;
L5:
aload 1
iconst_0
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/x I
aload 1
iload 9
iload 14
isub
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/y I
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/textSize [I
iconst_1
iload 9
iastore
return
L4:
iload 13
aload 2
invokevirtual java/lang/String/length()I
if_icmpge L6
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
iload 6
iload 13
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/text Ljava/lang/String;
goto L5
L6:
aload 1
aload 2
iload 6
iload 13
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/text Ljava/lang/String;
goto L5
L3:
aload 1
aload 2
iload 6
iload 13
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/tmp Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
iload 10
istore 11
iload 7
istore 9
iload 5
istore 12
iload 5
ifeq L7
iconst_0
istore 12
iload 3
istore 11
iconst_1
istore 9
L7:
iload 11
istore 10
iload 13
istore 8
iload 9
istore 7
iload 12
istore 5
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/tmp Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/width()I
iload 11
if_icmple L0
iconst_1
istore 5
new com/common/android/ui/widget/NewsSummaryTextView$TextLine
dup
aload 0
aconst_null
invokespecial com/common/android/ui/widget/NewsSummaryTextView$TextLine/<init>(Lcom/common/android/ui/widget/NewsSummaryTextView;Lcom/common/android/ui/widget/NewsSummaryTextView$1;)V
astore 17
aload 17
aload 2
iload 6
iload 13
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/text Ljava/lang/String;
aload 17
iconst_0
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/x I
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
aload 17
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 9
ifeq L8
iload 4
iload 15
iadd
istore 4
aload 17
iload 4
iload 14
isub
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/y I
L9:
iload 13
iconst_1
isub
istore 6
iload 11
istore 10
iload 13
istore 8
iload 9
istore 7
goto L0
L8:
aload 17
iload 4
iload 15
iadd
iload 14
isub
putfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/y I
goto L9
.limit locals 18
.limit stack 6
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/widget/NewsSummaryTextView$TextLine
astore 4
aload 1
aload 4
getfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/text Ljava/lang/String;
aload 4
getfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/x I
i2f
aload 4
getfield com/common/android/ui/widget/NewsSummaryTextView$TextLine/y I
i2f
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 5
.limit stack 5
.end method

.method protected onMeasure(II)V
iconst_0
istore 3
aload 0
iload 1
iload 2
invokespecial android/widget/TextView/onMeasure(II)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
ifnull L0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
ldc_w 2147483647
iload 1
invokestatic com/common/android/ui/widget/NewsSummaryTextView/resolveSize(II)I
putfield com/common/android/ui/widget/NewsSummaryTextView/mMaxWidth I
aload 0
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mMaxWidth I
invokespecial com/common/android/ui/widget/NewsSummaryTextView/measureAndSplitText(Landroid/graphics/Paint;Ljava/lang/String;I)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/textSize [I
iconst_0
iaload
istore 5
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/textSize [I
iconst_1
iaload
istore 4
iload 4
ifge L1
iload 4
istore 3
L1:
iconst_0
iload 5
iadd
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/getSuggestedMinimumWidth()I
invokestatic java/lang/Math/max(II)I
istore 4
iload 3
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/getSuggestedMinimumHeight()I
invokestatic java/lang/Math/max(II)I
istore 3
aload 0
iload 4
iload 1
invokestatic com/common/android/ui/widget/NewsSummaryTextView/resolveSize(II)I
iload 3
iload 2
invokestatic com/common/android/ui/widget/NewsSummaryTextView/resolveSize(II)I
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setMeasuredDimension(II)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public setLineContentLength(F)V
aload 0
fload 1
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineContentLength F
return
.limit locals 2
.limit stack 2
.end method

.method public setLineMaxCount(I)V
aload 0
iload 1
putfield com/common/android/ui/widget/NewsSummaryTextView/mLineCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/ui/widget/NewsSummaryTextView/mText Ljava/lang/String;
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mTextLines Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/requestLayout()V
aload 0
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextColor(I)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(F)V
aload 0
getfield com/common/android/ui/widget/NewsSummaryTextView/mPaint Landroid/graphics/Paint;
fload 1
invokevirtual android/graphics/Paint/setTextSize(F)V
return
.limit locals 2
.limit stack 2
.end method
