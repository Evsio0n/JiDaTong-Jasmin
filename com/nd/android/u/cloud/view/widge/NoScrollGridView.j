.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/NoScrollGridView
.super android/widget/GridView

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onMeasure(II)V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/NoScrollGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
bipush -2
if_icmpne L0
ldc_w 536870911
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
L1:
aload 0
iload 1
iload 2
invokespecial android/widget/GridView/onMeasure(II)V
return
L0:
goto L1
.limit locals 3
.limit stack 3
.end method
