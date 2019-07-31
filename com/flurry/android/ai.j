.bytecode 50.0
.class final synchronized com/flurry/android/ai
.super java/lang/Object

.field private static 'a' Z

.field private static 'b' I

.method static <clinit>()V
iconst_0
putstatic com/flurry/android/ai/a Z
iconst_5
putstatic com/flurry/android/ai/b I
return
.limit locals 0
.limit stack 1
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_3
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_3
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
aload 2
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static a()V
iconst_1
putstatic com/flurry/android/ai/a Z
return
.limit locals 0
.limit stack 1
.end method

.method static a(I)V
iload 0
putstatic com/flurry/android/ai/b I
return
.limit locals 1
.limit stack 1
.end method

.method static a(Ljava/lang/String;)Z
aload 0
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
bipush 6
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
bipush 6
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static b()V
iconst_0
putstatic com/flurry/android/ai/a Z
return
.limit locals 0
.limit stack 1
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_4
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_4
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
aload 2
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_5
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
getstatic com/flurry/android/ai/a Z
ifne L0
getstatic com/flurry/android/ai/b I
iconst_5
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
aload 1
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
ireturn
.limit locals 3
.limit stack 3
.end method
