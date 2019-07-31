.bytecode 50.0
.class synchronized android/support/v4/widget/ScrollerCompat
.super java/lang/Object
.inner class static ScrollerCompatImplIcs inner android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs outer android/support/v4/widget/ScrollerCompat

.field 'mScroller' Landroid/widget/Scroller;

.method <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/widget/Scroller
dup
aload 1
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
return
.limit locals 2
.limit stack 4
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs
dup
aload 0
invokespecial android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs/<init>(Landroid/content/Context;)V
areturn
L0:
new android/support/v4/widget/ScrollerCompat
dup
aload 0
invokespecial android/support/v4/widget/ScrollerCompat/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public abortAnimation()V
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method public computeScrollOffset()Z
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public fling(IIIIIIII)V
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
return
.limit locals 9
.limit stack 9
.end method

.method public getCurrVelocity()F
fconst_0
freturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrX()I
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrY()I
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDuration()I
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getDuration()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isFinished()Z
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public startScroll(IIII)V
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
iload 1
iload 2
iload 3
iload 4
invokevirtual android/widget/Scroller/startScroll(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public startScroll(IIIII)V
aload 0
getfield android/support/v4/widget/ScrollerCompat/mScroller Landroid/widget/Scroller;
iload 1
iload 2
iload 3
iload 4
iload 5
invokevirtual android/widget/Scroller/startScroll(IIIII)V
return
.limit locals 6
.limit stack 6
.end method
