.bytecode 50.0
.class public synchronized com/common/android/ui/flowIndicator/TitleFlowIndicator
.super android/widget/TextView
.implements com/common/android/ui/flowIndicator/FlowIndicator

.field private static final 'FOOTER_COLOR' I = -15291


.field private static final 'FOOTER_LINE_HEIGHT' I = 4


.field private static final 'FOOTER_TRIANGLE_HEIGHT' I = 10


.field private static final 'SELECTED_COLOR' I = -15291


.field private static final 'TEXT_COLOR' I = -5592406


.field private static final 'TEXT_SIZE' I = 15


.field private static final 'TITLE_PADDING' I = 10


.field private 'currentPosition' I

.field private 'currentScroll' I

.field private 'footerLineHeight' I

.field private 'footerTriangleHeight' I

.field private 'paintFooterLine' Landroid/graphics/Paint;

.field private 'paintFooterTriangle' Landroid/graphics/Paint;

.field private 'paintSelected' Landroid/graphics/Paint;

.field private 'paintText' Landroid/graphics/Paint;

.field private 'path' Landroid/graphics/Path;

.field private 'titlePadding' I

.field private 'titleProvider' Lcom/common/android/ui/flowIndicator/TitleProvider;

.field private 'viewFlow' Lcom/common/android/ui/flowIndicator/ViewFlow;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentScroll I
aload 0
aconst_null
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titleProvider Lcom/common/android/ui/flowIndicator/TitleProvider;
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
aload 0
ldc_w -5592406
ldc_w 15.0F
sipush -15291
iconst_4
sipush -15291
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/initDraw(IFIII)V
return
.limit locals 2
.limit stack 6
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentScroll I
aload 0
aconst_null
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titleProvider Lcom/common/android/ui/flowIndicator/TitleProvider;
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_footerColor I
sipush -15291
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 4
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_footerLineHeight I
iconst_4
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_footerTriangleHeight I
bipush 10
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerTriangleHeight I
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_selectedColor I
sipush -15291
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 5
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_textColor I
ldc_w -5592406
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 6
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_textSize I
ldc_w 15.0F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
fstore 3
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_titlePadding I
bipush 10
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titlePadding I
aload 0
iload 6
fload 3
iload 5
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
iload 4
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/initDraw(IFIII)V
return
.limit locals 7
.limit stack 6
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
aload 0
iload 1
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/getTitle(I)Ljava/lang/String;
astore 3
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 4
aload 4
aload 2
aload 3
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
putfield android/graphics/Rect/right I
aload 4
aload 2
invokevirtual android/graphics/Paint/descent()F
aload 2
invokevirtual android/graphics/Paint/ascent()F
fsub
f2i
putfield android/graphics/Rect/bottom I
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
.signature "(Landroid/graphics/Paint;)Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getAdapter()Landroid/widget/Adapter;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
istore 2
L1:
iconst_0
istore 3
L2:
iload 3
iload 2
if_icmpge L3
aload 0
iload 3
aload 1
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
astore 8
aload 8
getfield android/graphics/Rect/right I
aload 8
getfield android/graphics/Rect/left I
isub
istore 4
aload 8
getfield android/graphics/Rect/bottom I
istore 5
aload 8
getfield android/graphics/Rect/top I
istore 6
aload 8
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iconst_2
idiv
iload 4
iconst_2
idiv
isub
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentScroll I
isub
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iload 3
imul
iadd
putfield android/graphics/Rect/left I
aload 8
aload 8
getfield android/graphics/Rect/left I
iload 4
iadd
putfield android/graphics/Rect/right I
aload 8
iconst_0
putfield android/graphics/Rect/top I
aload 8
iload 5
iload 6
isub
putfield android/graphics/Rect/bottom I
aload 7
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L0:
iconst_1
istore 2
goto L1
L3:
aload 7
areturn
.limit locals 9
.limit stack 4
.end method

.method private getTitle(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "title "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titleProvider Lcom/common/android/ui/flowIndicator/TitleProvider;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titleProvider Lcom/common/android/ui/flowIndicator/TitleProvider;
iload 1
invokeinterface com/common/android/ui/flowIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
astore 2
L0:
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method private initDraw(IFIII)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
fload 2
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintSelected Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintSelected Landroid/graphics/Paint;
iload 3
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintSelected Landroid/graphics/Paint;
fload 2
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintSelected Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterLine Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterLine Landroid/graphics/Paint;
iload 4
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterLine Landroid/graphics/Paint;
sipush -15291
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterTriangle Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterTriangle Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterTriangle Landroid/graphics/Paint;
iload 5
invokevirtual android/graphics/Paint/setColor(I)V
return
.limit locals 6
.limit stack 3
.end method

.method private measureHeight(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 2
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
ldc_w 1073741824
if_icmpne L0
iload 1
ireturn
L0:
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 3
aload 3
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/descent()F
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/ascent()F
fsub
f2i
putfield android/graphics/Rect/bottom I
aload 3
getfield android/graphics/Rect/bottom I
aload 3
getfield android/graphics/Rect/top I
isub
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerTriangleHeight I
iadd
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
iadd
bipush 10
iadd
ireturn
.limit locals 4
.limit stack 3
.end method

.method private measureWidth(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 2
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
ldc_w 1073741824
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "ViewFlow can only be used in EXACTLY mode."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 1
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/widget/TextView/onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
astore 7
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getAdapter()Landroid/widget/Adapter;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
istore 2
L1:
aload 7
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 6
aload 6
getfield android/graphics/Rect/right I
aload 6
getfield android/graphics/Rect/left I
isub
istore 3
aload 6
getfield android/graphics/Rect/left I
ifge L2
aload 6
iconst_0
putfield android/graphics/Rect/left I
aload 6
iload 3
putfield android/graphics/Rect/right I
L2:
aload 6
getfield android/graphics/Rect/right I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
if_icmple L3
aload 6
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
putfield android/graphics/Rect/right I
aload 6
aload 6
getfield android/graphics/Rect/right I
iload 3
isub
putfield android/graphics/Rect/left I
L3:
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
ifle L4
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
iconst_1
isub
istore 3
L5:
iload 3
iflt L4
aload 7
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 6
aload 6
getfield android/graphics/Rect/right I
aload 6
getfield android/graphics/Rect/left I
isub
istore 4
aload 6
getfield android/graphics/Rect/left I
ifge L6
aload 6
iconst_0
putfield android/graphics/Rect/left I
aload 6
iload 4
putfield android/graphics/Rect/right I
iload 3
iload 2
iconst_1
isub
if_icmpge L6
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
iload 3
if_icmpeq L6
aload 7
iload 3
iconst_1
iadd
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 8
aload 6
getfield android/graphics/Rect/right I
bipush 10
iadd
aload 8
getfield android/graphics/Rect/left I
if_icmple L6
aload 6
aload 8
getfield android/graphics/Rect/left I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titlePadding I
iload 4
iadd
isub
putfield android/graphics/Rect/left I
L6:
iload 3
iconst_1
isub
istore 3
goto L5
L0:
iconst_1
istore 2
goto L1
L4:
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
iload 2
iconst_1
isub
if_icmpge L7
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
iconst_1
iadd
istore 3
L8:
iload 3
iload 2
if_icmpge L7
aload 7
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 6
aload 6
getfield android/graphics/Rect/right I
istore 4
aload 6
getfield android/graphics/Rect/left I
istore 5
aload 6
getfield android/graphics/Rect/right I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
if_icmple L9
aload 6
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
putfield android/graphics/Rect/right I
aload 6
aload 6
getfield android/graphics/Rect/right I
iload 4
iload 5
isub
isub
putfield android/graphics/Rect/left I
iload 3
ifle L9
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
iload 3
if_icmpeq L9
aload 7
iload 3
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 8
aload 6
getfield android/graphics/Rect/left I
bipush 10
isub
aload 8
getfield android/graphics/Rect/right I
if_icmpge L9
aload 6
aload 8
getfield android/graphics/Rect/right I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titlePadding I
iadd
putfield android/graphics/Rect/left I
L9:
iload 3
iconst_1
iadd
istore 3
goto L8
L7:
iconst_0
istore 3
L10:
iload 3
iload 2
if_icmpge L11
aload 0
iload 3
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/getTitle(I)Ljava/lang/String;
astore 8
aload 7
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Rect
astore 9
aload 9
getfield android/graphics/Rect/left I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
if_icmple L12
aload 9
getfield android/graphics/Rect/left I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
if_icmplt L13
L12:
aload 9
getfield android/graphics/Rect/right I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
if_icmple L14
aload 9
getfield android/graphics/Rect/right I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iadd
if_icmpge L14
L13:
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintText Landroid/graphics/Paint;
astore 6
aload 9
getfield android/graphics/Rect/left I
aload 9
getfield android/graphics/Rect/right I
iadd
iconst_2
idiv
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iconst_2
idiv
isub
invokestatic java/lang/Math/abs(I)I
bipush 20
if_icmpge L15
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintSelected Landroid/graphics/Paint;
astore 6
L15:
aload 1
aload 8
aload 9
getfield android/graphics/Rect/left I
i2f
aload 9
getfield android/graphics/Rect/bottom I
i2f
aload 6
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
L14:
iload 3
iconst_1
iadd
istore 3
goto L10
L11:
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
fconst_0
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getHeight()I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
isub
i2f
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getHeight()I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
isub
i2f
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterLine Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iconst_2
idiv
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getHeight()I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
isub
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerTriangleHeight I
isub
i2f
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iconst_2
idiv
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerTriangleHeight I
iadd
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getHeight()I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
isub
i2f
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getWidth()I
iconst_2
idiv
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerTriangleHeight I
isub
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/getHeight()I
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/footerLineHeight I
isub
i2f
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/path Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/flowIndicator/TitleFlowIndicator/paintFooterTriangle Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return
.limit locals 10
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/measureWidth(I)I
aload 0
iload 2
invokespecial com/common/android/ui/flowIndicator/TitleFlowIndicator/measureHeight(I)I
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/setMeasuredDimension(II)V
return
.limit locals 3
.limit stack 4
.end method

.method public onScrolled(IIII)V
aload 0
iload 1
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentScroll I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/invalidate()V
return
.limit locals 5
.limit stack 2
.end method

.method public onSwitched(Landroid/view/View;I)V
aload 0
iload 2
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/currentPosition I
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/invalidate()V
return
.limit locals 3
.limit stack 2
.end method

.method public setTitleProvider(Lcom/common/android/ui/flowIndicator/TitleProvider;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/titleProvider Lcom/common/android/ui/flowIndicator/TitleProvider;
return
.limit locals 2
.limit stack 2
.end method

.method public setViewFlow(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/TitleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
invokevirtual com/common/android/ui/flowIndicator/TitleFlowIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method
