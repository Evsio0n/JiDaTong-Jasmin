.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil
.super java/lang/Object

.field private static 'executorService' Ljava/util/concurrent/ExecutorService;

.field private static 'fixService' Ljava/util/concurrent/ExecutorService;

.field private static 'moreExecutorService' Ljava/util/concurrent/ExecutorService;

.method static <clinit>()V
iconst_1
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/executorService Ljava/util/concurrent/ExecutorService;
iconst_5
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/fixService Ljava/util/concurrent/ExecutorService;
invokestatic java/util/concurrent/Executors/newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/moreExecutorService Ljava/util/concurrent/ExecutorService;
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

.method public static execute(Ljava/lang/Runnable;)V
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/executorService Ljava/util/concurrent/ExecutorService;
aload 0
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static executeFix(Ljava/lang/Runnable;)V
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/fixService Ljava/util/concurrent/ExecutorService;
aload 0
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static executeMore(Ljava/lang/Runnable;)V
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/moreExecutorService Ljava/util/concurrent/ExecutorService;
aload 0
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 2
.end method
