.bytecode 50.0
.class public synchronized android/support/v4/view/VelocityTrackerCompat
.super java/lang/Object
.inner class static BaseVelocityTrackerVersionImpl inner android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl outer android/support/v4/view/VelocityTrackerCompat
.inner class static HoneycombVelocityTrackerVersionImpl inner android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl outer android/support/v4/view/VelocityTrackerCompat
.inner class static abstract interface VelocityTrackerVersionImpl inner android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl outer android/support/v4/view/VelocityTrackerCompat

.field static final 'IMPL' Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
new android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl
dup
invokespecial android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl/<init>()V
putstatic android/support/v4/view/VelocityTrackerCompat/IMPL Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
return
L0:
new android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl
dup
invokespecial android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl/<init>()V
putstatic android/support/v4/view/VelocityTrackerCompat/IMPL Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
getstatic android/support/v4/view/VelocityTrackerCompat/IMPL Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl/getXVelocity(Landroid/view/VelocityTracker;I)F 2
freturn
.limit locals 2
.limit stack 3
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
getstatic android/support/v4/view/VelocityTrackerCompat/IMPL Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl/getYVelocity(Landroid/view/VelocityTracker;I)F 2
freturn
.limit locals 2
.limit stack 3
.end method
