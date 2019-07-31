.bytecode 50.0
.class final synchronized com/common/android/utils/concurrent/NdExecutors$1
.super java/lang/Thread
.enclosing method com/common/android/utils/concurrent/NdExecutors/quit()V
.inner class static final inner com/common/android/utils/concurrent/NdExecutors$1

.method <init>()V
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public run()V
ldc2_w 1000L
invokestatic com/common/android/utils/concurrent/NdExecutors/awaitQuit(J)Z
pop
return
.limit locals 1
.limit stack 2
.end method
