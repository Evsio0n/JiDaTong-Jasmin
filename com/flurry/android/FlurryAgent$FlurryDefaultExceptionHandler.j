.bytecode 50.0
.class public synchronized com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler
.super java/lang/Object
.implements java/lang/Thread$UncaughtExceptionHandler

.field private 'a' Ljava/lang/Thread$UncaughtExceptionHandler;

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic java/lang/Thread/getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
putfield com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler/a Ljava/lang/Thread$UncaughtExceptionHandler;
return
.limit locals 1
.limit stack 2
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
invokestatic com/flurry/android/FlurryAgent/h()Lcom/flurry/android/FlurryAgent;
aload 2
invokevirtual com/flurry/android/FlurryAgent/a(Ljava/lang/Throwable;)V
L1:
aload 0
getfield com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler/a Ljava/lang/Thread$UncaughtExceptionHandler;
ifnull L3
aload 0
getfield com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler/a Ljava/lang/Thread$UncaughtExceptionHandler;
aload 1
aload 2
invokeinterface java/lang/Thread$UncaughtExceptionHandler/uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V 2
L3:
return
L2:
astore 3
ldc "FlurryAgent"
ldc ""
aload 3
invokestatic com/flurry/android/ai/b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L1
.limit locals 4
.limit stack 3
.end method
