.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/lift/Lift$BirthThread
.super java/lang/Thread
.inner class BirthThread inner com/nd/android/u/ui/widge/lift/Lift$BirthThread outer com/nd/android/u/ui/widge/lift/Lift

.field 'mTime' I

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/lift/Lift;

.method public <init>(Lcom/nd/android/u/ui/widge/lift/Lift;I)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift$BirthThread/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iload 2
putfield com/nd/android/u/ui/widge/lift/Lift$BirthThread/mTime I
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$BirthThread/mTime I
i2l
invokestatic java/lang/Thread/sleep(J)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$BirthThread/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
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
