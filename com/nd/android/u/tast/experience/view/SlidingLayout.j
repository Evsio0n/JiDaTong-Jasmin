.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/view/SlidingLayout
.super android/view/ViewGroup

.field private 'heightSpec' I

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'scrollOffset' I

.field private 'widthSpec' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/view/SlidingLayout/widthSpec I
aload 0
invokespecial com/nd/android/u/tast/experience/view/SlidingLayout/init()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/view/SlidingLayout/widthSpec I
aload 0
invokespecial com/nd/android/u/tast/experience/view/SlidingLayout/init()V
return
.limit locals 3
.limit stack 3
.end method

.method private init()V
aload 0
new android/widget/Scroller
dup
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getContext()Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
return
.limit locals 1
.limit stack 4
.end method

.method private measureChildItem(Landroid/view/View;II)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 4
aload 4
ifnonnull L0
return
L0:
aload 4
getfield android/view/ViewGroup$LayoutParams/width I
iconst_m1
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getMeasuredWidth()I
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
L2:
aload 4
getfield android/view/ViewGroup$LayoutParams/height I
iconst_m1
if_icmpne L3
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getMeasuredHeight()I
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 3
L4:
aload 1
iload 2
iload 3
invokevirtual android/view/View/measure(II)V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
aload 1
invokevirtual android/view/View/getMeasuredHeight()I
invokestatic java/lang/Math/max(II)I
putfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/widthSpec I
aload 1
invokevirtual android/view/View/getMeasuredWidth()I
invokestatic java/lang/Math/max(II)I
putfield com/nd/android/u/tast/experience/view/SlidingLayout/widthSpec I
return
L1:
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getMeasuredWidth()I
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
goto L2
L3:
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getMeasuredHeight()I
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 3
goto L4
.limit locals 5
.limit stack 3
.end method

.method public close()V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
ifle L0
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/scrollOffset I
ineg
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/smoothScrollTo(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public computeScroll()V
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
istore 1
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollY()I
istore 2
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 3
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
istore 4
iload 1
iload 3
if_icmpne L1
iload 2
iload 4
if_icmpeq L2
L1:
aload 0
iload 3
iload 4
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/scrollTo(II)V
L2:
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/invalidate()V
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public isOpened()Z
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getChildCount()I
istore 4
iconst_0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
aload 0
iload 2
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getChildAt(I)Landroid/view/View;
astore 6
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getPaddingTop()I
istore 5
aload 6
iload 3
iload 5
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
iload 3
iadd
aload 6
invokevirtual android/view/View/getMeasuredHeight()I
iload 5
iadd
invokevirtual android/view/View/layout(IIII)V
iload 3
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
iadd
istore 3
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
iload 3
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getWidth()I
isub
putfield com/nd/android/u/tast/experience/view/SlidingLayout/scrollOffset I
return
.limit locals 7
.limit stack 6
.end method

.method protected onMeasure(II)V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
aload 0
sipush 400
iload 1
invokestatic com/nd/android/u/tast/experience/view/SlidingLayout/getDefaultSize(II)I
sipush 400
iload 2
invokestatic com/nd/android/u/tast/experience/view/SlidingLayout/getDefaultSize(II)I
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/setMeasuredDimension(II)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getChildCount()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 0
aload 0
iload 3
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getChildAt(I)Landroid/view/View;
iload 1
iload 2
invokespecial com/nd/android/u/tast/experience/view/SlidingLayout/measureChildItem(Landroid/view/View;II)V
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/widthSpec I
iload 1
invokestatic com/nd/android/u/tast/experience/view/SlidingLayout/getDefaultSize(II)I
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/heightSpec I
iload 2
invokestatic com/nd/android/u/tast/experience/view/SlidingLayout/getDefaultSize(II)I
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/setMeasuredDimension(II)V
return
.limit locals 5
.limit stack 4
.end method

.method public open()V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
ifgt L0
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/scrollOffset I
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/smoothScrollTo(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public scrollTo(II)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup/scrollTo(II)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/postInvalidate()V
return
.limit locals 3
.limit stack 3
.end method

.method public setDefault()V
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/scrollTo(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public setOpen()V
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/scrollOffset I
iconst_0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/scrollTo(II)V
return
.limit locals 1
.limit stack 3
.end method

.method smoothScrollTo(I)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
istore 2
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
iload 2
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollY()I
iload 1
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollY()I
sipush 1000
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/invalidate()V
return
.limit locals 3
.limit stack 6
.end method

.method public toggle()Z
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/getScrollX()I
istore 1
iload 1
ifle L0
aload 0
iload 1
ineg
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/smoothScrollTo(I)V
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/nd/android/u/tast/experience/view/SlidingLayout/scrollOffset I
invokevirtual com/nd/android/u/tast/experience/view/SlidingLayout/smoothScrollTo(I)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
