.bytecode 50.0
.class public synchronized com/bestpay/util/LoggerHelper
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String;

.field private static 'on' Z

.method static <clinit>()V
ldc com/bestpay/util/LoggerHelper
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
iconst_1
putstatic com/bestpay/util/LoggerHelper/on Z
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

.method public static d(Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
aload 0
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
aload 2
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public static e(Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
aload 0
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public static e(Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
ldc ""
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public static getLogAble()Z
getstatic com/bestpay/util/LoggerHelper/on Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static i(Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
aload 0
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
aload 2
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public static w(Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
getstatic com/bestpay/util/LoggerHelper/TAG Ljava/lang/String;
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/bestpay/util/LoggerHelper/on Z
ifeq L0
aload 0
aload 1
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method
