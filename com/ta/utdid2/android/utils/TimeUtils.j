.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/TimeUtils
.super java/lang/Object

.field public static final 'TAG' Ljava/lang/String;

.field public static final 'TOTAL_M_S_ONE_DAY' I = 86400000


.method static <clinit>()V
ldc com/ta/utdid2/android/utils/TimeUtils
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putstatic com/ta/utdid2/android/utils/TimeUtils/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static isUpToDate(JI)Z
invokestatic java/lang/System/currentTimeMillis()J
lload 0
lsub
ldc2_w 86400000L
ldiv
iload 2
i2l
lcmp
ifge L0
iconst_1
istore 3
L1:
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L2
getstatic com/ta/utdid2/android/utils/TimeUtils/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "isUpToDate: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc "; oldTimestamp: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "; currentTimestamp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
iload 3
ireturn
L0:
iconst_0
istore 3
goto L1
.limit locals 4
.limit stack 4
.end method
