.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/L
.super java/lang/Object

.field private static final 'LOG_FORMAT' Ljava/lang/String; = "%1$s\n%2$s"

.field private static volatile 'writeDebugLogs' Z

.field private static volatile 'writeLogs' Z

.method static <clinit>()V
iconst_0
putstatic com/nostra13/universalimageloader/utils/L/writeDebugLogs Z
iconst_1
putstatic com/nostra13/universalimageloader/utils/L/writeLogs Z
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static transient d(Ljava/lang/String;[Ljava/lang/Object;)V
getstatic com/nostra13/universalimageloader/utils/L/writeDebugLogs Z
ifeq L0
iconst_3
aconst_null
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public static disableLogging()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
iconst_0
invokestatic com/nostra13/universalimageloader/utils/L/writeLogs(Z)V
return
.limit locals 0
.limit stack 1
.end method

.method public static transient e(Ljava/lang/String;[Ljava/lang/Object;)V
bipush 6
aconst_null
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static e(Ljava/lang/Throwable;)V
bipush 6
aload 0
aconst_null
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 4
.end method

.method public static transient e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
bipush 6
aload 0
aload 1
aload 2
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static enableLogging()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
iconst_1
invokestatic com/nostra13/universalimageloader/utils/L/writeLogs(Z)V
return
.limit locals 0
.limit stack 1
.end method

.method public static transient i(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_4
aconst_null
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 4
.end method

.method private static transient log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
getstatic com/nostra13/universalimageloader/utils/L/writeLogs Z
ifne L0
return
L0:
aload 2
astore 4
aload 3
arraylength
ifle L1
aload 2
aload 3
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
L1:
aload 1
ifnonnull L2
L3:
iload 0
getstatic com/nostra13/universalimageloader/core/ImageLoader/TAG Ljava/lang/String;
aload 4
invokestatic android/util/Log/println(ILjava/lang/String;Ljava/lang/String;)I
pop
return
L2:
aload 4
ifnonnull L4
aload 1
invokevirtual java/lang/Throwable/getMessage()Ljava/lang/String;
astore 2
L5:
ldc "%1$s\n%2$s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 1
invokestatic android/util/Log/getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
goto L3
L4:
aload 4
astore 2
goto L5
.limit locals 5
.limit stack 5
.end method

.method public static transient w(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_5
aconst_null
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static writeDebugLogs(Z)V
iload 0
putstatic com/nostra13/universalimageloader/utils/L/writeDebugLogs Z
return
.limit locals 1
.limit stack 1
.end method

.method public static writeLogs(Z)V
iload 0
putstatic com/nostra13/universalimageloader/utils/L/writeLogs Z
return
.limit locals 1
.limit stack 1
.end method
