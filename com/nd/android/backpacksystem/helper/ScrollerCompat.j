.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/helper/ScrollerCompat
.super java/lang/Object
.inner class static abstract interface ScrollerCompatImpl inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl outer com/nd/android/backpacksystem/helper/ScrollerCompat
.inner class static ScrollerCompatImplBase inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplBase outer com/nd/android/backpacksystem/helper/ScrollerCompat
.inner class static ScrollerCompatImplGingerbread inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplGingerbread outer com/nd/android/backpacksystem/helper/ScrollerCompat
.inner class static ScrollerCompatImplIcs inner com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplIcs outer com/nd/android/backpacksystem/helper/ScrollerCompat

.field static final 'IMPL' Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;

.field 'mScroller' Ljava/lang/Object;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
istore 0
iload 0
bipush 14
if_icmplt L0
new com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplIcs
dup
invokespecial com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplIcs/<init>()V
putstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
return
L0:
iload 0
bipush 9
if_icmplt L1
new com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplGingerbread
dup
invokespecial com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplGingerbread/<init>()V
putstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
return
L1:
new com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplBase
dup
invokespecial com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImplBase/<init>()V
putstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
return
.limit locals 1
.limit stack 2
.end method

.method <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 1
aload 2
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object; 2
putfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
return
.limit locals 3
.limit stack 4
.end method

.method public static create(Landroid/content/Context;)Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
aload 0
aconst_null
invokestatic com/nd/android/backpacksystem/helper/ScrollerCompat/create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/nd/android/backpacksystem/helper/ScrollerCompat;
new com/nd/android/backpacksystem/helper/ScrollerCompat
dup
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/helper/ScrollerCompat/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public abortAnimation()V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/abortAnimation(Ljava/lang/Object;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public computeScrollOffset()Z
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/computeScrollOffset(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fling(IIIIIIII)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/fling(Ljava/lang/Object;IIIIIIII)V 9
return
.limit locals 9
.limit stack 10
.end method

.method public fling(IIIIIIIIII)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
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
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/fling(Ljava/lang/Object;IIIIIIIIII)V 11
return
.limit locals 11
.limit stack 12
.end method

.method public getCurrVelocity()F
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/getCurrVelocity(Ljava/lang/Object;)F 1
freturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrX()I
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/getCurrX(Ljava/lang/Object;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrY()I
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/getCurrY(Ljava/lang/Object;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getFinalX()I
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/getFinalX(Ljava/lang/Object;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getFinalY()I
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/getFinalY(Ljava/lang/Object;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isFinished()Z
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/isFinished(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isOverScrolled()Z
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/isOverScrolled(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public notifyHorizontalEdgeReached(III)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
iload 1
iload 2
iload 3
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/notifyHorizontalEdgeReached(Ljava/lang/Object;III)V 4
return
.limit locals 4
.limit stack 5
.end method

.method public notifyVerticalEdgeReached(III)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
iload 1
iload 2
iload 3
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/notifyVerticalEdgeReached(Ljava/lang/Object;III)V 4
return
.limit locals 4
.limit stack 5
.end method

.method public startScroll(IIII)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
iload 1
iload 2
iload 3
iload 4
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/startScroll(Ljava/lang/Object;IIII)V 5
return
.limit locals 5
.limit stack 6
.end method

.method public startScroll(IIIII)V
getstatic com/nd/android/backpacksystem/helper/ScrollerCompat/IMPL Lcom/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl;
aload 0
getfield com/nd/android/backpacksystem/helper/ScrollerCompat/mScroller Ljava/lang/Object;
iload 1
iload 2
iload 3
iload 4
iload 5
invokeinterface com/nd/android/backpacksystem/helper/ScrollerCompat$ScrollerCompatImpl/startScroll(Ljava/lang/Object;IIIII)V 6
return
.limit locals 6
.limit stack 7
.end method
