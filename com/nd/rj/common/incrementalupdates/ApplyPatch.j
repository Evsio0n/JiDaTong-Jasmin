.bytecode 50.0
.class public final synchronized com/nd/rj/common/incrementalupdates/ApplyPatch
.super java/lang/Object

.field private static final 'sCanUseNative' Z

.method static <clinit>()V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
ldc "IncrementalUpdates"
invokestatic java/lang/System/loadLibrary(Ljava/lang/String;)V
L1:
iconst_1
istore 0
L3:
iload 0
putstatic com/nd/rj/common/incrementalupdates/ApplyPatch/sCanUseNative Z
return
L2:
astore 1
iconst_0
istore 0
goto L3
.limit locals 2
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static native applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static canUseNative()Z
getstatic com/nd/rj/common/incrementalupdates/ApplyPatch/sCanUseNative Z
ireturn
.limit locals 0
.limit stack 1
.end method
