.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/RotationTextView
.super android/widget/TextView

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 1
ldc_w -17.0F
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/RotationTextView/getMeasuredWidth()I
iconst_2
idiv
i2f
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/RotationTextView/getMeasuredHeight()I
iconst_2
idiv
i2f
invokevirtual android/graphics/Canvas/rotate(FFF)V
aload 0
aload 1
invokespecial android/widget/TextView/onDraw(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 5
.end method
