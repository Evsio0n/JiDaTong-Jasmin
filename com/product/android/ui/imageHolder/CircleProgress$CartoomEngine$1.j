.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1
.super android/os/Handler
.enclosing method com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/<init>(Lcom/product/android/ui/imageHolder/CircleProgress;)V
.inner class CartoomEngine inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine outer com/product/android/ui/imageHolder/CircleProgress
.inner class inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1

.field final synthetic 'this$1' Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;

.field final synthetic 'val$this$0' Lcom/product/android/ui/imageHolder/CircleProgress;

.method <init>(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;Lcom/product/android/ui/imageHolder/CircleProgress;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
aload 0
aload 2
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/val$this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 16
L0
default : L1
L1:
return
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
ifeq L1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
astore 1
aload 1
aload 1
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
fconst_1
fadd
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
f2i
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMainProgress(I)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
lload 2
invokestatic com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/access$002(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;J)J
pop2
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokestatic com/product/android/ui/imageHolder/CircleProgress/access$100(Lcom/product/android/ui/imageHolder/CircleProgress;)I
i2f
fcmpl
iflt L1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/this$1 Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/stopCartoom()V
return
.limit locals 4
.limit stack 3
.end method
