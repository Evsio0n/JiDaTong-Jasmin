.bytecode 50.0
.class public final synchronized com/common/android/utils/EraseLogUtils
.super java/lang/Object
.inner class inner com/common/android/utils/EraseLogUtils$1

.field private static final 'LOG_FILE_NAME_LEN' I = 14


.field private static final 'LOG_NAME_LEN' I = 10


.field private static final 'MONTH_EXPANTION' I = 100


.field private static final 'WEEK_DAY' I = 7


.field private static final 'YEAR_EXPANTION' I = 1000


.field private static volatile 'instance' Lcom/common/android/utils/EraseLogUtils;

.field private 'mbRunning' Z

.field private 'mstrInternalCacheDir' Ljava/lang/String;

.field private 'mstrSDCardCacheDir' Ljava/lang/String;

.method private <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/EraseLogUtils/mbRunning Z
aload 0
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
putfield com/common/android/utils/EraseLogUtils/mstrSDCardCacheDir Ljava/lang/String;
aload 0
new java/lang/String
dup
aload 2
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
putfield com/common/android/utils/EraseLogUtils/mstrInternalCacheDir Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method private eraseLogOneMonthAgo()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
getfield com/common/android/utils/EraseLogUtils/mstrSDCardCacheDir Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 1
aload 0
getfield com/common/android/utils/EraseLogUtils/mstrSDCardCacheDir Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Log"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/EraseLogUtils/eraseLogs(Ljava/lang/String;)V
L0:
aload 1
iconst_0
aload 1
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/common/android/utils/EraseLogUtils/mstrInternalCacheDir Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
aload 0
getfield com/common/android/utils/EraseLogUtils/mstrInternalCacheDir Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Log"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/EraseLogUtils/eraseLogs(Ljava/lang/String;)V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method private eraseLogs(Ljava/lang/String;)V
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 4
aload 4
iconst_5
bipush -7
invokevirtual java/util/Calendar/add(II)V
aload 1
new com/common/android/utils/EraseLogUtils$1
dup
aload 0
aload 4
iconst_1
invokevirtual java/util/Calendar/get(I)I
sipush 1000
imul
aload 4
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
bipush 100
imul
iadd
aload 4
iconst_5
invokevirtual java/util/Calendar/get(I)I
iadd
invokespecial com/common/android/utils/EraseLogUtils$1/<init>(Lcom/common/android/utils/EraseLogUtils;I)V
invokevirtual java/io/File/listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
astore 1
aload 1
ifnull L0
aload 1
arraylength
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 1
iload 2
aaload
invokevirtual java/io/File/delete()Z
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 5
.limit stack 7
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/EraseLogUtils;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/common/android/utils/EraseLogUtils/instance Lcom/common/android/utils/EraseLogUtils;
ifnonnull L3
ldc com/common/android/utils/EraseLogUtils
monitorenter
L0:
getstatic com/common/android/utils/EraseLogUtils/instance Lcom/common/android/utils/EraseLogUtils;
ifnonnull L1
new com/common/android/utils/EraseLogUtils
dup
aload 0
aload 1
invokespecial com/common/android/utils/EraseLogUtils/<init>(Ljava/lang/String;Ljava/lang/String;)V
putstatic com/common/android/utils/EraseLogUtils/instance Lcom/common/android/utils/EraseLogUtils;
L1:
ldc com/common/android/utils/EraseLogUtils
monitorexit
L3:
getstatic com/common/android/utils/EraseLogUtils/instance Lcom/common/android/utils/EraseLogUtils;
areturn
L2:
astore 0
L4:
ldc com/common/android/utils/EraseLogUtils
monitorexit
L5:
aload 0
athrow
.limit locals 2
.limit stack 4
.end method

.method public EraseLogIfNotRunning()V
aload 0
getfield com/common/android/utils/EraseLogUtils/mbRunning Z
ifne L0
aload 0
iconst_1
putfield com/common/android/utils/EraseLogUtils/mbRunning Z
aload 0
invokespecial com/common/android/utils/EraseLogUtils/eraseLogOneMonthAgo()V
aload 0
iconst_0
putfield com/common/android/utils/EraseLogUtils/mbRunning Z
L0:
return
.limit locals 1
.limit stack 2
.end method
