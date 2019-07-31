.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/b/a
.super java/lang/Object
.inner class public static abstract interface a inner com/tencent/mm/sdk/b/a$a outer com/tencent/mm/sdk/b/a

.field private static 'level' I

.field private static 'n' Lcom/tencent/mm/sdk/b/a$a;

.field private static 'o' Lcom/tencent/mm/sdk/b/a$a;

.field private static final 'p' Ljava/lang/String;

.method static <clinit>()V
bipush 6
putstatic com/tencent/mm/sdk/b/a/level I
new com/tencent/mm/sdk/b/b
dup
invokespecial com/tencent/mm/sdk/b/b/<init>()V
astore 0
aload 0
putstatic com/tencent/mm/sdk/b/a/n Lcom/tencent/mm/sdk/b/a$a;
aload 0
putstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 0
new java/lang/StringBuilder
dup
ldc "VERSION.RELEASE:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] VERSION.CODENAME:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/CODENAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] VERSION.INCREMENTAL:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/INCREMENTAL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] BOARD:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/BOARD Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] DEVICE:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/DEVICE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] DISPLAY:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/DISPLAY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] FINGERPRINT:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/FINGERPRINT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] HOST:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/HOST Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] MANUFACTURER:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/MANUFACTURER Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] MODEL:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] PRODUCT:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/PRODUCT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] TAGS:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/TAGS Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] TYPE:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/TYPE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
ldc "] USER:["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build/USER Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/tencent/mm/sdk/b/a/p Ljava/lang/String;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic a()I
getstatic com/tencent/mm/sdk/b/a/level I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aconst_null
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static transient a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
ifnull L0
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
invokeinterface com/tencent/mm/sdk/b/a$a/b()I 0
iconst_4
if_icmpgt L0
aload 2
ifnonnull L1
L2:
aload 1
astore 2
aload 1
ifnonnull L3
ldc ""
astore 2
L3:
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
astore 1
invokestatic android/os/Process/myPid()I
pop
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokevirtual android/os/Looper/getThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
aload 1
aload 0
aload 2
invokeinterface com/tencent/mm/sdk/b/a$a/f(Ljava/lang/String;Ljava/lang/String;)V 2
L0:
return
L1:
aload 1
aload 2
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
goto L2
.limit locals 3
.limit stack 3
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
ifnull L0
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
invokeinterface com/tencent/mm/sdk/b/a$a/b()I 0
iconst_2
if_icmpgt L0
aload 1
astore 2
aload 1
ifnonnull L1
ldc ""
astore 2
L1:
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
astore 1
invokestatic android/os/Process/myPid()I
pop
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokevirtual android/os/Looper/getThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
aload 1
aload 0
aload 2
invokeinterface com/tencent/mm/sdk/b/a$a/d(Ljava/lang/String;Ljava/lang/String;)V 2
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
ifnull L0
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
invokeinterface com/tencent/mm/sdk/b/a$a/b()I 0
iconst_1
if_icmpgt L0
aload 1
astore 2
aload 1
ifnonnull L1
ldc ""
astore 2
L1:
getstatic com/tencent/mm/sdk/b/a/o Lcom/tencent/mm/sdk/b/a$a;
astore 1
invokestatic android/os/Process/myPid()I
pop
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokevirtual android/os/Looper/getThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
pop2
aload 1
aload 0
aload 2
invokeinterface com/tencent/mm/sdk/b/a$a/e(Ljava/lang/String;Ljava/lang/String;)V 2
L0:
return
.limit locals 3
.limit stack 3
.end method
