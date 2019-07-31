.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/lift/Lift$RemoveThread
.super java/lang/Thread
.inner class RemoveThread inner com/nd/android/u/ui/widge/lift/Lift$RemoveThread outer com/nd/android/u/ui/widge/lift/Lift

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/lift/Lift;

.method <init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift$RemoveThread/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
ldc2_w 8000L
invokestatic java/lang/Thread/sleep(J)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$RemoveThread/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$800(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method
