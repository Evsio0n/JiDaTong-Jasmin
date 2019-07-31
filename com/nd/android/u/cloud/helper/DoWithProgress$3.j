.bytecode 50.0
.class synchronized com/nd/android/u/cloud/helper/DoWithProgress$3
.super java/lang/Thread
.enclosing method com/nd/android/u/cloud/helper/DoWithProgress/Execute()V
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/helper/DoWithProgress;

.method <init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress$3/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$3/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doProcedure()I
istore 1
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
sipush 257
putfield android/os/Message/what I
aload 2
iload 1
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$3/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/messageHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 2
.end method
