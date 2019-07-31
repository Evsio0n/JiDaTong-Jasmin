.bytecode 50.0
.class synchronized android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs
.super android/support/v4/widget/ScrollerCompat
.inner class static ScrollerCompatImplIcs inner android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs outer android/support/v4/widget/ScrollerCompat

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/support/v4/widget/ScrollerCompat/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCurrVelocity()F
aload 0
getfield android/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs/mScroller Landroid/widget/Scroller;
invokestatic android/support/v4/widget/ScrollerCompatIcs/getCurrVelocity(Landroid/widget/Scroller;)F
freturn
.limit locals 1
.limit stack 1
.end method
