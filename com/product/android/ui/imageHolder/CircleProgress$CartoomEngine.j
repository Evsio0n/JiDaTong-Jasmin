.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/CircleProgress$CartoomEngine
.super java/lang/Object
.inner class CartoomEngine inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine outer com/product/android/ui/imageHolder/CircleProgress
.inner class inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1
.inner class MyTimerTask inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask outer com/product/android/ui/imageHolder/CircleProgress$CartoomEngine

.field private static final 'TIMER_ID' I = 16


.field public 'mBCartoom' Z

.field public 'mCurFloatProcess' F

.field public 'mHandler' Landroid/os/Handler;

.field public 'mSaveMax' I

.field public 'mTimer' Ljava/util/Timer;

.field public 'mTimerInterval' I

.field public 'mTimerTask' Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;

.field final synthetic 'this$0' Lcom/product/android/ui/imageHolder/CircleProgress;

.field private 'timeMil' J

.method public <init>(Lcom/product/android/ui/imageHolder/CircleProgress;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1
dup
aload 0
aload 1
invokespecial com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1/<init>(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;Lcom/product/android/ui/imageHolder/CircleProgress;)V
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimer Ljava/util/Timer;
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mSaveMax I
aload 0
bipush 50
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerInterval I
aload 0
fconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$002(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;J)J
aload 0
lload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/timeMil J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method public startCartoom(I)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
iload 1
ifle L5
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
istore 2
L1:
iload 2
iconst_1
if_icmpne L3
L5:
aload 0
monitorexit
return
L3:
aload 0
lconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/timeMil J
aload 0
iconst_1
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
iconst_0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMainProgress(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
iconst_0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setSubProgress(I)V
aload 0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokestatic com/product/android/ui/imageHolder/CircleProgress/access$100(Lcom/product/android/ui/imageHolder/CircleProgress;)I
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mSaveMax I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
sipush 1000
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerInterval I
idiv
iload 1
imul
invokestatic com/product/android/ui/imageHolder/CircleProgress/access$102(Lcom/product/android/ui/imageHolder/CircleProgress;I)I
pop
aload 0
fconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mCurFloatProcess F
aload 0
new com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask
dup
aload 0
invokespecial com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask/<init>(Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;)V
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerTask Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimer Ljava/util/Timer;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerTask Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerInterval I
i2l
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerInterval I
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
L4:
goto L5
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 6
.end method

.method public stopCartoom()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
istore 1
L1:
iload 1
ifne L3
L5:
aload 0
monitorexit
return
L3:
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mBCartoom Z
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mSaveMax I
invokestatic com/product/android/ui/imageHolder/CircleProgress/access$102(Lcom/product/android/ui/imageHolder/CircleProgress;I)I
pop
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
iconst_0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMainProgress(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
iconst_0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setSubProgress(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerTask Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;
ifnull L5
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerTask Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask/cancel()Z
pop
aload 0
aconst_null
putfield com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/mTimerTask Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask;
L4:
goto L5
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 2
.end method
