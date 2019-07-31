.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask
.super java/util/TimerTask
.inner class CartoomEngine inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine outer com/product/android/ui/imageHolder/CircleProgress
.inner class MyTimerTask inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask outer com/product/android/ui/imageHolder/CircleProgress$CartoomEngine

.field final synthetic 'this$1' Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;

.method <init>(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mHandler Landroid/os/Handler;
bipush 16
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
return
.limit locals 1
.limit stack 2
.end method
