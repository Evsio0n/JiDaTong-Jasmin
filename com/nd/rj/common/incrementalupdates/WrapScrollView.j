.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/WrapScrollView
.super android/widget/ScrollView

.field private 'mContext' Landroid/content/Context;

.field private 'mPixelsHeight' I

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/WrapScrollView/mContext Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/WrapScrollView/mContext Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
astore 1
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 1
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 0
aload 2
getfield android/util/DisplayMetrics/heightPixels I
putfield com/nd/rj/common/incrementalupdates/WrapScrollView/mPixelsHeight I
return
.limit locals 3
.limit stack 3
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokespecial android/widget/ScrollView/onMeasure(II)V
aload 0
getfield com/nd/rj/common/incrementalupdates/WrapScrollView/mPixelsHeight I
i2d
ldc2_w 0.4D
dmul
ldc2_w 0.5D
dadd
d2i
istore 3
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
ifne L0
L1:
return
L0:
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/WrapScrollView/getMeasuredHeight()I
istore 2
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
iload 3
if_icmple L1
aload 0
iload 1
iload 3
invokevirtual com/nd/rj/common/incrementalupdates/WrapScrollView/setMeasuredDimension(II)V
return
.limit locals 4
.limit stack 4
.end method
