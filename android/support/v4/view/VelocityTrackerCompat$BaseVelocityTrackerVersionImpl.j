.bytecode 50.0
.class synchronized android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl
.super java/lang/Object
.implements android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl
.inner class static BaseVelocityTrackerVersionImpl inner android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl outer android/support/v4/view/VelocityTrackerCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getXVelocity(Landroid/view/VelocityTracker;I)F
aload 1
invokevirtual android/view/VelocityTracker/getXVelocity()F
freturn
.limit locals 3
.limit stack 1
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
aload 1
invokevirtual android/view/VelocityTracker/getYVelocity()F
freturn
.limit locals 3
.limit stack 1
.end method
