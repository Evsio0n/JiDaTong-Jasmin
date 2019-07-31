.bytecode 50.0
.class public synchronized android/support/v4/view/MotionEventCompat
.super java/lang/Object
.inner class static BaseMotionEventVersionImpl inner android/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl outer android/support/v4/view/MotionEventCompat
.inner class static EclairMotionEventVersionImpl inner android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl outer android/support/v4/view/MotionEventCompat
.inner class static abstract interface MotionEventVersionImpl inner android/support/v4/view/MotionEventCompat$MotionEventVersionImpl outer android/support/v4/view/MotionEventCompat

.field public static final 'ACTION_HOVER_ENTER' I = 9


.field public static final 'ACTION_HOVER_EXIT' I = 10


.field public static final 'ACTION_HOVER_MOVE' I = 7


.field public static final 'ACTION_MASK' I = 255


.field public static final 'ACTION_POINTER_DOWN' I = 5


.field public static final 'ACTION_POINTER_INDEX_MASK' I = 65280


.field public static final 'ACTION_POINTER_INDEX_SHIFT' I = 8


.field public static final 'ACTION_POINTER_UP' I = 6


.field public static final 'ACTION_SCROLL' I = 8


.field static final 'IMPL' Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
iconst_5
if_icmplt L0
new android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl
dup
invokespecial android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl/<init>()V
putstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
return
L0:
new android/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl
dup
invokespecial android/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl/<init>()V
putstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
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

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
getstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/MotionEventCompat$MotionEventVersionImpl/findPointerIndex(Landroid/view/MotionEvent;I)I 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
aload 0
invokevirtual android/view/MotionEvent/getAction()I
ldc_w 65280
iand
bipush 8
ishr
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
aload 0
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
getstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
aload 0
invokeinterface android/support/v4/view/MotionEventCompat$MotionEventVersionImpl/getPointerCount(Landroid/view/MotionEvent;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
getstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/MotionEventCompat$MotionEventVersionImpl/getPointerId(Landroid/view/MotionEvent;I)I 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
getstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/MotionEventCompat$MotionEventVersionImpl/getX(Landroid/view/MotionEvent;I)F 2
freturn
.limit locals 2
.limit stack 3
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
getstatic android/support/v4/view/MotionEventCompat/IMPL Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/MotionEventCompat$MotionEventVersionImpl/getY(Landroid/view/MotionEvent;I)F 2
freturn
.limit locals 2
.limit stack 3
.end method
