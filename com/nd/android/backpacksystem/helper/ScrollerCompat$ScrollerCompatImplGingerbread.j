.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplGingerbread
.super java/lang/Object
.implements com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl
.inner class static ScrollerCompatImplGingerbread inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplGingerbread outer com/nd/android/backpacksystem/helper/ScrollerCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abortAnimation(Ljava/lang/Object;)V
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/abortAnimation(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 1
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/computeScrollOffset(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
aload 1
aload 2
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 2
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
aload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/fling(Ljava/lang/Object;IIIIIIII)V
return
.limit locals 10
.limit stack 9
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
aload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
iload 10
iload 11
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/fling(Ljava/lang/Object;IIIIIIIIII)V
return
.limit locals 12
.limit stack 11
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
fconst_0
freturn
.limit locals 2
.limit stack 1
.end method

.method public getCurrX(Ljava/lang/Object;)I
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/getCurrX(Ljava/lang/Object;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getCurrY(Ljava/lang/Object;)I
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/getCurrY(Ljava/lang/Object;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getFinalX(Ljava/lang/Object;)I
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/getFinalX(Ljava/lang/Object;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getFinalY(Ljava/lang/Object;)I
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/getFinalY(Ljava/lang/Object;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isFinished(Ljava/lang/Object;)Z
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/isFinished(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
aload 1
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/isOverScrolled(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
aload 1
iload 2
iload 3
iload 4
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
return
.limit locals 5
.limit stack 4
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
aload 1
iload 2
iload 3
iload 4
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/notifyVerticalEdgeReached(Ljava/lang/Object;III)V
return
.limit locals 5
.limit stack 4
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
aload 1
iload 2
iload 3
iload 4
iload 5
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/startScroll(Ljava/lang/Object;IIII)V
return
.limit locals 6
.limit stack 5
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
aload 1
iload 2
iload 3
iload 4
iload 5
iload 6
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompatGingerbread/startScroll(Ljava/lang/Object;IIIII)V
return
.limit locals 7
.limit stack 6
.end method
