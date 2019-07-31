.bytecode 50.0
.class public final synchronized com/bumptech/glide/util/LogTime
.super java/lang/Object

.field private static final 'MILLIS_MULTIPLIER' D

.method static <clinit>()V
dconst_1
dstore 0
bipush 17
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L0
dconst_1
ldc2_w 10.0D
ldc2_w 6.0D
invokestatic java/lang/Math/pow(DD)D
ddiv
dstore 0
L0:
dload 0
putstatic com/bumptech/glide/util/LogTime/MILLIS_MULTIPLIER D
return
.limit locals 2
.limit stack 6
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getElapsedMillis(J)D
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lload 0
lsub
l2d
getstatic com/bumptech/glide/util/LogTime/MILLIS_MULTIPLIER D
dmul
dreturn
.limit locals 2
.limit stack 4
.end method

.method public static getLogTime()J
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
bipush 17
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L0
invokestatic android/os/SystemClock/elapsedRealtimeNanos()J
lreturn
L0:
invokestatic java/lang/System/currentTimeMillis()J
lreturn
.limit locals 0
.limit stack 2
.end method
