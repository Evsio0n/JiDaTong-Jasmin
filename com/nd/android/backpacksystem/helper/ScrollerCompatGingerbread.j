.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static abortAnimation(Ljava/lang/Object;)V
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/abortAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/computeScrollOffset()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
aload 1
ifnull L0
new android/widget/OverScroller
dup
aload 0
aload 1
invokespecial android/widget/OverScroller/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
areturn
L0:
new android/widget/OverScroller
dup
aload 0
invokespecial android/widget/OverScroller/<init>(Landroid/content/Context;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public static fling(Ljava/lang/Object;IIIIIIII)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
invokevirtual android/widget/OverScroller/fling(IIIIIIII)V
return
.limit locals 9
.limit stack 9
.end method

.method public static fling(Ljava/lang/Object;IIIIIIIIII)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
iload 10
invokevirtual android/widget/OverScroller/fling(IIIIIIIIII)V
return
.limit locals 11
.limit stack 11
.end method

.method public static getCurrX(Ljava/lang/Object;)I
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/getCurrX()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getCurrY(Ljava/lang/Object;)I
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/getCurrY()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getFinalX(Ljava/lang/Object;)I
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/getFinalX()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getFinalY(Ljava/lang/Object;)I
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/getFinalY()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isFinished(Ljava/lang/Object;)Z
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/isFinished()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isOverScrolled(Ljava/lang/Object;)Z
aload 0
checkcast android/widget/OverScroller
invokevirtual android/widget/OverScroller/isOverScrolled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
invokevirtual android/widget/OverScroller/notifyHorizontalEdgeReached(III)V
return
.limit locals 4
.limit stack 4
.end method

.method public static notifyVerticalEdgeReached(Ljava/lang/Object;III)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
invokevirtual android/widget/OverScroller/notifyVerticalEdgeReached(III)V
return
.limit locals 4
.limit stack 4
.end method

.method public static startScroll(Ljava/lang/Object;IIII)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
iload 4
invokevirtual android/widget/OverScroller/startScroll(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
aload 0
checkcast android/widget/OverScroller
iload 1
iload 2
iload 3
iload 4
iload 5
invokevirtual android/widget/OverScroller/startScroll(IIIII)V
return
.limit locals 6
.limit stack 6
.end method
