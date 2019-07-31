.bytecode 50.0
.class public synchronized com/nd/album/ui/widget/WrapContentGridView
.super android/widget/GridView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/GridView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onMeasure(II)V
aload 0
invokevirtual com/nd/album/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
bipush -2
if_icmpne L0
ldc_w 536870911
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "WRAP_CONTENT girdview:heightSpec="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
L1:
aload 0
iload 1
iload 2
invokespecial android/widget/GridView/onMeasure(II)V
return
L0:
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "WRAP_CONTENT girdview:heightMeasureSpec="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto L1
.limit locals 3
.limit stack 3
.end method
