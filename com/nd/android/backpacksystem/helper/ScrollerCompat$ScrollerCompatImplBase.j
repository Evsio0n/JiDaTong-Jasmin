.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplBase
.super java/lang/Object
.implements com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl
.inner class static ScrollerCompatImplBase inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplBase outer com/nd/android/backpacksystem/helper/ScrollerCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abortAnimation(Ljava/lang/Object;)V
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/abortAnimation()V
return
.limit locals 2
.limit stack 1
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
aload 2
ifnull L0
new android/widget/Scroller
dup
aload 1
aload 2
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
areturn
L0:
new android/widget/Scroller
dup
aload 1
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
aload 1
checkcast android/widget/Scroller
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
return
.limit locals 10
.limit stack 9
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
aload 1
checkcast android/widget/Scroller
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
return
.limit locals 12
.limit stack 9
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
fconst_0
freturn
.limit locals 2
.limit stack 1
.end method

.method public getCurrX(Ljava/lang/Object;)I
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/getCurrX()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getCurrY(Ljava/lang/Object;)I
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/getCurrY()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getFinalX(Ljava/lang/Object;)I
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/getFinalX()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getFinalY(Ljava/lang/Object;)I
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/getFinalY()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isFinished(Ljava/lang/Object;)Z
aload 1
checkcast android/widget/Scroller
invokevirtual android/widget/Scroller/isFinished()Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
aload 1
checkcast android/widget/Scroller
iload 2
iload 3
iload 4
iload 5
invokevirtual android/widget/Scroller/startScroll(IIII)V
return
.limit locals 6
.limit stack 5
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
aload 1
checkcast android/widget/Scroller
iload 2
iload 3
iload 4
iload 5
iload 6
invokevirtual android/widget/Scroller/startScroll(IIIII)V
return
.limit locals 7
.limit stack 6
.end method
