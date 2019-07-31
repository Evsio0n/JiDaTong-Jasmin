.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/widget/FlowLayout
.super android/view/ViewGroup
.inner class public static final enum FillLines inner com/nd/schoollife/ui/common/widget/FlowLayout$FillLines outer com/nd/schoollife/ui/common/widget/FlowLayout
.inner class public static LayoutParams inner com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams outer com/nd/schoollife/ui/common/widget/FlowLayout

.field private static final 'FILL_LINES_ALL' I = 2


.field private static final 'FILL_LINES_EXCEPT_LAST' I = 1


.field private static final 'FILL_LINES_NONE' I = 0


.field public static final 'HORIZONTAL' I = 0


.field public static final 'VERTICAL' I = 1


.field private 'centerJustified' Z

.field private 'debugDraw' Z

.field private 'fillLines' Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;

.field private 'gravity' I

.field private 'horizontalSpacing' I

.field private 'orientation' I

.field private 'verticalSpacing' I

.field private 'weightDefault' F

.field private 'weightSum' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
aload 0
bipush 51
putfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
aload 0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
putfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
aload 0
aload 1
aconst_null
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
aload 0
bipush 51
putfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
aload 0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
putfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
aload 0
bipush 51
putfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
aload 0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
putfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 4
.end method

.method private createPaint(I)Landroid/graphics/Paint;
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 2
aload 2
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 2
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 2
fconst_2
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
ifne L0
L1:
return
L0:
aload 0
sipush -256
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/createPaint(I)Landroid/graphics/Paint;
astore 5
aload 0
ldc_w -16711936
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/createPaint(I)Landroid/graphics/Paint;
astore 6
aload 0
ldc_w -65536
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/createPaint(I)Landroid/graphics/Paint;
astore 7
aload 2
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 8
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
ifle L2
aload 2
invokevirtual android/view/View/getRight()I
i2f
fstore 3
aload 2
invokevirtual android/view/View/getTop()I
i2f
aload 2
invokevirtual android/view/View/getHeight()I
i2f
fconst_2
fdiv
fadd
fstore 4
aload 1
fload 3
fload 4
fload 3
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
i2f
fadd
fload 4
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
i2f
fload 3
fadd
ldc_w 4.0F
fsub
fload 4
ldc_w 4.0F
fsub
fload 3
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
i2f
fadd
fload 4
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
i2f
fload 3
fadd
ldc_w 4.0F
fsub
fload 4
ldc_w 4.0F
fadd
fload 3
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
i2f
fadd
fload 4
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
L3:
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
ifle L4
aload 2
invokevirtual android/view/View/getLeft()I
i2f
aload 2
invokevirtual android/view/View/getWidth()I
i2f
fconst_2
fdiv
fadd
fstore 3
aload 2
invokevirtual android/view/View/getBottom()I
i2f
fstore 4
aload 1
fload 3
fload 4
fload 3
fload 4
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
i2f
fadd
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
fload 3
ldc_w 4.0F
fsub
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
i2f
fload 4
fadd
ldc_w 4.0F
fsub
fload 3
fload 4
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
i2f
fadd
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
fload 3
ldc_w 4.0F
fadd
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
i2f
fload 4
fadd
ldc_w 4.0F
fsub
fload 3
fload 4
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
i2f
fadd
aload 5
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
L5:
aload 8
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L6
aload 2
invokevirtual android/view/View/getLeft()I
i2f
fstore 3
aload 2
invokevirtual android/view/View/getTop()I
i2f
aload 2
invokevirtual android/view/View/getHeight()I
i2f
fconst_2
fdiv
fadd
fstore 4
aload 1
fload 3
fload 4
ldc_w 6.0F
fsub
fload 3
fload 4
ldc_w 6.0F
fadd
aload 7
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
ifle L3
aload 2
invokevirtual android/view/View/getRight()I
i2f
fstore 3
aload 2
invokevirtual android/view/View/getTop()I
i2f
aload 2
invokevirtual android/view/View/getHeight()I
i2f
fconst_2
fdiv
fadd
fstore 4
aload 1
fload 3
fload 4
fload 3
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
i2f
fadd
fload 4
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
i2f
fload 3
fadd
ldc_w 4.0F
fsub
fload 4
ldc_w 4.0F
fsub
fload 3
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
i2f
fadd
fload 4
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
i2f
fload 3
fadd
ldc_w 4.0F
fsub
fload 4
ldc_w 4.0F
fadd
fload 3
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
i2f
fadd
fload 4
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
goto L3
L4:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
ifle L5
aload 2
invokevirtual android/view/View/getLeft()I
i2f
aload 2
invokevirtual android/view/View/getWidth()I
i2f
fconst_2
fdiv
fadd
fstore 3
aload 2
invokevirtual android/view/View/getBottom()I
i2f
fstore 4
aload 1
fload 3
fload 4
fload 3
fload 4
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
i2f
fadd
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
fload 3
ldc_w 4.0F
fsub
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
i2f
fload 4
fadd
ldc_w 4.0F
fsub
fload 3
fload 4
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
i2f
fadd
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
fload 3
ldc_w 4.0F
fadd
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
i2f
fload 4
fadd
ldc_w 4.0F
fsub
fload 3
fload 4
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
i2f
fadd
aload 6
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
goto L5
L6:
aload 2
invokevirtual android/view/View/getLeft()I
i2f
aload 2
invokevirtual android/view/View/getWidth()I
i2f
fconst_2
fdiv
fadd
fstore 3
aload 2
invokevirtual android/view/View/getTop()I
i2f
fstore 4
aload 1
fload 3
ldc_w 6.0F
fsub
fload 4
fload 3
ldc_w 6.0F
fadd
fload 4
aload 7
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
return
.limit locals 9
.limit stack 6
.end method

.method private fillLine(Ljava/util/List;III)V
.signature "(Ljava/util/List<Landroid/view/View;>;III)V"
aload 1
invokeinterface java/util/List/size()I 0
istore 7
fconst_0
fstore 5
iload 7
ifle L0
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightSum F
fconst_0
fcmpl
ifle L1
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightSum F
fstore 6
L2:
fload 6
fconst_0
fcmpl
ifle L3
iload 2
iload 3
isub
istore 2
iconst_0
istore 12
iconst_0
istore 11
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 22
L4:
aload 22
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 22
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
astore 23
iconst_0
istore 15
iconst_0
istore 16
aload 23
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 24
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
fconst_0
fcmpg
ifge L6
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightDefault F
fstore 5
L7:
iload 2
i2f
fload 5
fmul
fload 6
fdiv
invokestatic java/lang/Math/round(F)I
istore 21
fload 6
fload 5
fsub
fstore 6
iload 2
iload 21
isub
istore 14
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
ifne L8
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
istore 13
L9:
iconst_0
istore 18
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 17
iconst_0
istore 20
iconst_0
istore 8
iconst_0
istore 9
iconst_0
istore 19
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L10
iload 8
istore 7
iload 2
istore 10
iload 13
bipush 7
iand
iconst_3
if_icmpeq L11
iload 13
iconst_2
iand
ifeq L12
iconst_1
istore 10
iload 8
istore 7
L11:
iload 7
istore 3
iload 19
istore 2
iload 10
istore 9
iload 17
istore 8
iload 13
bipush 112
iand
bipush 48
if_icmpeq L13
iload 13
bipush 32
iand
ifeq L14
iconst_1
istore 8
iload 10
istore 9
iload 19
istore 2
iload 7
istore 3
L13:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L15
iload 4
aload 23
invokevirtual android/view/View/getMeasuredHeight()I
isub
istore 10
L16:
iconst_0
istore 13
iconst_0
istore 17
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L17
iconst_0
iload 21
iload 3
imul
iconst_2
idiv
iadd
istore 3
iload 16
istore 7
L18:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L19
iload 7
iload 10
iload 2
imul
iconst_2
idiv
iadd
istore 7
L20:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
ifne L21
aload 24
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/x I
iload 12
iadd
iload 3
iadd
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/y I
iload 11
iadd
iload 7
iadd
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/setPosition(II)V
L21:
iload 13
istore 2
iload 17
istore 3
iload 9
ifeq L22
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L23
iconst_0
iload 21
iadd
istore 2
iload 17
istore 3
L22:
iload 2
istore 7
iload 3
istore 9
iload 8
ifeq L24
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L25
iload 3
iload 10
iadd
istore 9
iload 2
istore 7
L24:
iload 7
ifne L26
iload 9
ifeq L27
L26:
aload 23
aload 23
invokevirtual android/view/View/getMeasuredWidth()I
iload 7
iadd
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
aload 23
invokevirtual android/view/View/getMeasuredHeight()I
iload 9
iadd
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/view/View/measure(II)V
L27:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L28
iload 12
iload 21
iadd
istore 12
iload 14
istore 2
goto L4
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 22
L29:
fload 5
fstore 6
aload 22
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 22
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 23
aload 23
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
fconst_0
fcmpg
ifge L30
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightDefault F
fstore 6
L31:
fload 5
fload 6
fadd
fstore 5
goto L29
L30:
aload 23
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
fstore 6
goto L31
L6:
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
fstore 5
goto L7
L8:
aload 24
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
istore 13
goto L9
L12:
iload 13
iconst_4
iand
ifeq L32
iconst_2
istore 7
iload 2
istore 10
goto L11
L32:
iload 8
istore 7
iload 2
istore 10
iload 13
iconst_1
iand
ifeq L11
iconst_1
istore 7
iload 2
istore 10
goto L11
L14:
iload 13
bipush 64
iand
ifeq L33
iconst_2
istore 2
iload 7
istore 3
iload 10
istore 9
iload 17
istore 8
goto L13
L33:
iload 7
istore 3
iload 19
istore 2
iload 10
istore 9
iload 17
istore 8
iload 13
bipush 16
iand
ifeq L13
iconst_1
istore 2
iload 7
istore 3
iload 10
istore 9
iload 17
istore 8
goto L13
L10:
iload 9
istore 7
iload 3
istore 10
iload 13
bipush 7
iand
iconst_3
if_icmpeq L34
iload 13
iconst_2
iand
ifeq L35
iconst_1
istore 10
iload 9
istore 7
L34:
iload 20
istore 3
iload 7
istore 2
iload 18
istore 9
iload 10
istore 8
iload 13
bipush 112
iand
bipush 48
if_icmpeq L13
iload 13
bipush 32
iand
ifeq L36
iconst_1
istore 9
iload 20
istore 3
iload 7
istore 2
iload 10
istore 8
goto L13
L35:
iload 13
iconst_4
iand
ifeq L37
iconst_2
istore 7
iload 3
istore 10
goto L34
L37:
iload 9
istore 7
iload 3
istore 10
iload 13
iconst_1
iand
ifeq L34
iconst_1
istore 7
iload 3
istore 10
goto L34
L36:
iload 13
bipush 64
iand
ifeq L38
iconst_2
istore 3
iload 7
istore 2
iload 18
istore 9
iload 10
istore 8
goto L13
L38:
iload 20
istore 3
iload 7
istore 2
iload 18
istore 9
iload 10
istore 8
iload 13
bipush 16
iand
ifeq L13
iconst_1
istore 3
iload 7
istore 2
iload 18
istore 9
iload 10
istore 8
goto L13
L15:
iload 4
aload 23
invokevirtual android/view/View/getMeasuredWidth()I
isub
istore 10
goto L16
L17:
iconst_0
iload 21
iload 3
imul
iconst_2
idiv
iadd
istore 7
iload 15
istore 3
goto L18
L19:
iload 3
iload 10
iload 2
imul
iconst_2
idiv
iadd
istore 3
goto L20
L23:
iconst_0
iload 21
iadd
istore 3
iload 13
istore 2
goto L22
L25:
iload 2
iload 10
iadd
istore 7
iload 3
istore 9
goto L24
L28:
iload 11
iload 21
iadd
istore 11
iload 14
istore 2
goto L4
L5:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
ifeq L3
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 22
L39:
aload 22
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 22
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 23
aload 23
aload 23
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/x I
iload 12
iconst_2
idiv
iadd
aload 23
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/y I
iload 11
iconst_2
idiv
iadd
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/setPosition(II)V
goto L39
L3:
aload 1
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 25
.limit stack 5
.end method

.method private getHorizontalSpacing(Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;)I
aload 1
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacingSpecified()Z
ifeq L0
aload 1
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
ireturn
.limit locals 2
.limit stack 1
.end method

.method private getVerticalSpacing(Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;)I
aload 1
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacingSpecified()Z
ifeq L0
aload 1
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
ireturn
.limit locals 2
.limit stack 1
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
aload 2
getstatic com/nd/schoollife/R$styleable/FlowLayout [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
L0:
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_horizontalSpacing I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_verticalSpacing I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_orientation2 I
iconst_0
invokevirtual android/content/res/TypedArray/getInteger(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_debugDraw I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_weightSum I
fconst_0
invokevirtual android/content/res/TypedArray/getFloat(IF)F
putfield com/nd/schoollife/ui/common/widget/FlowLayout/weightSum F
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_weightDefault I
fconst_0
invokevirtual android/content/res/TypedArray/getFloat(IF)F
putfield com/nd/schoollife/ui/common/widget/FlowLayout/weightDefault F
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_centerJustified I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_android_gravity I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
istore 3
L1:
iload 3
iflt L4
L3:
aload 0
iload 3
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/setGravity(I)V
L4:
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_fillLines I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
istore 3
L5:
iload 3
iflt L7
L6:
aload 0
iload 3
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/from(I)Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/setFillLines(Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;)V
L7:
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
L2:
astore 2
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 2
athrow
.limit locals 4
.limit stack 4
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
aload 1
instanceof com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
aload 0
aload 1
aload 2
lload 3
invokespecial android/view/ViewGroup/drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
istore 5
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
iload 5
ireturn
.limit locals 6
.limit stack 5
.end method

.method protected volatile synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/generateDefaultLayoutParams()Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected generateDefaultLayoutParams()Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
new com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/<init>(II)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public volatile synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
areturn
.limit locals 2
.limit stack 2
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
new com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
dup
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getContext()Landroid/content/Context;
aload 1
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;
new com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
dup
aload 1
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public getFillLines()Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGravity()I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHorizontalSpacing()I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrientation()I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getVerticalSpacing()I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWeightDefault()F
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightDefault F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getWeightSum()F
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/weightSum F
freturn
.limit locals 1
.limit stack 1
.end method

.method public isCenterJustified()Z
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDebugDraw()Z
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getChildCount()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 2
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 7
aload 6
aload 7
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/x I
aload 7
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/y I
aload 7
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/x I
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
iadd
aload 7
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/y I
aload 6
invokevirtual android/view/View/getMeasuredHeight()I
iadd
invokevirtual android/view/View/layout(IIII)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 8
.limit stack 6
.end method

.method protected onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 4
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingRight()I
istore 5
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
istore 6
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 7
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
istore 8
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingBottom()I
istore 9
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 11
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 3
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L0
iload 4
iload 5
isub
iload 6
isub
istore 12
L1:
iconst_0
istore 4
iconst_0
istore 3
iconst_0
istore 6
iconst_0
istore 5
iconst_0
istore 16
iconst_0
istore 14
iconst_0
istore 7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 23
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getChildCount()I
istore 22
iconst_0
istore 13
L2:
iload 13
iload 22
if_icmpge L3
aload 0
iload 13
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getChildAt(I)Landroid/view/View;
astore 24
aload 24
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L4
iload 5
istore 8
iload 4
istore 5
iload 3
istore 4
iload 6
istore 9
L5:
iload 13
iconst_1
iadd
istore 13
iload 9
istore 6
iload 4
istore 3
iload 5
istore 4
iload 8
istore 5
goto L2
L0:
iload 7
iload 8
isub
iload 9
isub
istore 12
iload 3
istore 11
goto L1
L4:
aload 24
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
astore 25
aload 24
iload 1
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingRight()I
iadd
aload 25
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/width I
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/getChildMeasureSpec(III)I
iload 2
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingBottom()I
iadd
aload 25
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/height I
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/getChildMeasureSpec(III)I
invokevirtual android/view/View/measure(II)V
aload 0
aload 25
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/getHorizontalSpacing(Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;)I
istore 8
aload 0
aload 25
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/getVerticalSpacing(Lcom/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams;)I
istore 9
aload 24
invokevirtual android/view/View/getMeasuredWidth()I
istore 10
aload 24
invokevirtual android/view/View/getMeasuredHeight()I
istore 15
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L6
iload 10
istore 7
iload 15
istore 10
iload 9
istore 17
iload 8
istore 18
iload 10
istore 8
L7:
iload 6
iload 7
iadd
istore 10
iload 10
iload 18
iadd
istore 9
aload 25
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
ifne L8
iload 11
ifeq L9
iload 10
iload 12
if_icmple L9
L8:
iconst_1
istore 21
L10:
iload 3
istore 19
iload 4
istore 20
iload 5
istore 6
iload 21
ifeq L11
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
if_acmpeq L12
aload 0
aload 23
iload 12
iload 16
iload 3
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/fillLine(Ljava/util/List;III)V
L12:
iload 5
iload 4
iadd
istore 6
iload 8
istore 19
iload 7
istore 10
iload 8
iload 17
iadd
istore 20
iload 10
iload 18
iadd
istore 9
L11:
iload 10
istore 3
iload 20
iload 8
iload 17
iadd
invokestatic java/lang/Math/max(II)I
istore 16
iload 19
iload 8
invokestatic java/lang/Math/max(II)I
istore 8
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L13
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
iload 10
iadd
iload 7
isub
istore 4
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
iload 6
iadd
istore 5
L14:
aload 25
iload 4
iload 5
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/setPosition(II)V
iload 14
iload 10
invokestatic java/lang/Math/max(II)I
istore 14
iload 6
iload 8
iadd
istore 7
aload 23
aload 24
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 8
istore 4
iload 16
istore 5
iload 3
istore 16
iload 6
istore 8
goto L5
L6:
iload 15
istore 7
iload 8
istore 17
iload 10
istore 8
iload 9
istore 18
goto L7
L9:
iconst_0
istore 21
goto L10
L13:
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
iload 6
iadd
istore 4
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
iload 10
iadd
iload 15
isub
istore 5
goto L14
L3:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/ALL Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
if_acmpne L15
aload 0
aload 23
iload 12
iload 16
iload 3
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout/fillLine(Ljava/util/List;III)V
L15:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L16
iload 14
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingRight()I
iadd
iadd
istore 3
iload 7
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingBottom()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
iadd
iadd
istore 4
L17:
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
ifne L18
aload 0
iload 3
iload 1
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/resolveSize(II)I
iload 4
iload 2
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/resolveSize(II)I
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/setMeasuredDimension(II)V
return
L16:
iload 14
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingBottom()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingTop()I
iadd
iadd
istore 3
iload 7
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingLeft()I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/getPaddingRight()I
iadd
iadd
istore 4
goto L17
L18:
aload 0
iload 4
iload 1
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/resolveSize(II)I
iload 3
iload 2
invokestatic com/nd/schoollife/ui/common/widget/FlowLayout/resolveSize(II)I
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/setMeasuredDimension(II)V
return
.limit locals 26
.limit stack 5
.end method

.method public setCenterJustified(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/centerJustified Z
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setDebugDraw(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/debugDraw Z
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFillLines(Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;)V
aload 1
ifnull L0
L1:
aload 0
aload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/fillLines Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
L0:
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public setGravity(I)V
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
iload 1
if_icmpne L0
return
L0:
iload 1
istore 2
iload 1
bipush 7
iand
ifne L1
iload 1
iconst_3
ior
istore 2
L1:
iload 2
istore 1
iload 2
bipush 112
iand
ifne L2
iload 2
bipush 48
ior
istore 1
L2:
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/gravity I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 3
.limit stack 2
.end method

.method public setHorizontalSpacing(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/horizontalSpacing I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOrientation(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/orientation I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setVerticalSpacing(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout/verticalSpacing I
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setWeightDefault(F)V
aload 0
fconst_0
fload 1
invokestatic java/lang/Math/max(FF)F
putfield com/nd/schoollife/ui/common/widget/FlowLayout/weightDefault F
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 3
.end method

.method public setWeightSum(F)V
aload 0
fconst_0
fload 1
invokestatic java/lang/Math/max(FF)F
putfield com/nd/schoollife/ui/common/widget/FlowLayout/weightSum F
aload 0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/requestLayout()V
return
.limit locals 2
.limit stack 3
.end method
