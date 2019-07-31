.bytecode 50.0
.class synchronized com/product/android/business/manager/MotionEventManager$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/product/android/business/manager/MotionEventManager
.inner class inner com/product/android/business/manager/MotionEventManager$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$2

.field 'result' Z

.field final synthetic 'this$0' Lcom/product/android/business/manager/MotionEventManager;

.method <init>(Lcom/product/android/business/manager/MotionEventManager;)V
aload 0
aload 1
putfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager$1/result Z
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokevirtual com/product/android/business/manager/MotionEventManager/onTouch()V
aload 2
invokevirtual android/view/MotionEvent/getAction()I
lookupswitch
0 : L0
1 : L1
2 : L2
6 : L3
261 : L4
262 : L3
517 : L5
518 : L6
default : L7
L7:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/result Z
ireturn
L0:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getX()F
invokestatic com/product/android/business/manager/MotionEventManager/access$002(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokestatic com/product/android/business/manager/MotionEventManager/access$102(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$100(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onDown(FF)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$202(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$302(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$408(Lcom/product/android/business/manager/MotionEventManager;)I
pop
new com/product/android/business/manager/MotionEventManager$MyHandler
dup
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aconst_null
invokespecial com/product/android/business/manager/MotionEventManager$MyHandler/<init>(Lcom/product/android/business/manager/MotionEventManager;Lcom/product/android/business/manager/MotionEventManager$1;)V
astore 1
aload 1
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$400(Lcom/product/android/business/manager/MotionEventManager;)I
invokevirtual com/product/android/business/manager/MotionEventManager$MyHandler/setId(I)V
aload 1
new com/product/android/business/manager/MotionEventManager$1$1
dup
aload 0
aload 1
invokespecial com/product/android/business/manager/MotionEventManager$1$1/<init>(Lcom/product/android/business/manager/MotionEventManager$1;Lcom/product/android/business/manager/MotionEventManager$MyHandler;)V
ldc2_w 700L
invokevirtual com/product/android/business/manager/MotionEventManager$MyHandler/postDelayed(Ljava/lang/Runnable;J)Z
pop
goto L7
L1:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getX()F
invokestatic com/product/android/business/manager/MotionEventManager/access$802(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokestatic com/product/android/business/manager/MotionEventManager/access$902(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$302(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1000(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L8
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L8:
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onUp(FF)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/result Z
ifeq L9
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
getfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
ifeq L7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onReStore(FF)V
goto L7
L9:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$200(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L10
aload 2
invokevirtual android/view/MotionEvent/getEventTime()J
aload 2
invokevirtual android/view/MotionEvent/getDownTime()J
lsub
l2f
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1100(Lcom/product/android/business/manager/MotionEventManager;)I
i2f
fcmpg
ifge L10
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokevirtual com/product/android/business/manager/MotionEventManager/onClick()Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
getfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
ifeq L11
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onReStore(FF)V
L12:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/result Z
ifne L7
L10:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$000(Lcom/product/android/business/manager/MotionEventManager;)F
fsub
fstore 3
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$100(Lcom/product/android/business/manager/MotionEventManager;)F
fsub
fstore 4
fload 3
invokestatic java/lang/Math/abs(F)F
fstore 5
fload 4
invokestatic java/lang/Math/abs(F)F
fstore 6
fload 5
fload 6
fcmpl
ifle L13
fload 5
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1300(Lcom/product/android/business/manager/MotionEventManager;)F
fcmpl
ifle L14
fload 3
fconst_0
fcmpl
ifle L15
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
fload 3
invokevirtual com/product/android/business/manager/MotionEventManager/onSlipRight(F)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
L14:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
getfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
ifeq L7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onReStore(FF)V
goto L7
L11:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onPress(FF)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/product/android/business/manager/MotionEventManager$1$2
dup
aload 0
invokespecial com/product/android/business/manager/MotionEventManager$1$2/<init>(Lcom/product/android/business/manager/MotionEventManager$1;)V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1200(Lcom/product/android/business/manager/MotionEventManager;)I
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
goto L12
L15:
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
fload 3
invokevirtual com/product/android/business/manager/MotionEventManager/onSlipLeft(F)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
goto L14
L13:
fload 6
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1400(Lcom/product/android/business/manager/MotionEventManager;)F
fcmpl
ifle L14
fload 4
fconst_0
fcmpl
ifle L16
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
fload 4
invokevirtual com/product/android/business/manager/MotionEventManager/onSlipDown(F)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
goto L14
L16:
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
fload 4
invokevirtual com/product/android/business/manager/MotionEventManager/onSlipUp(F)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
goto L14
L2:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getX()F
invokestatic com/product/android/business/manager/MotionEventManager/access$802(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokestatic com/product/android/business/manager/MotionEventManager/access$902(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$100(Lcom/product/android/business/manager/MotionEventManager;)F
invokestatic com/product/android/business/manager/MotionEventManager/access$1500(Lcom/product/android/business/manager/MotionEventManager;FFFF)F
ldc_w 35.0F
fcmpl
ifle L17
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$202(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
L17:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$100(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onMove(FFFF)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1600(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L18
aload 2
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_2
if_icmple L19
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokestatic com/product/android/business/manager/MotionEventManager/access$1800(Lcom/product/android/business/manager/MotionEventManager;Landroid/view/MotionEvent;)F
invokestatic com/product/android/business/manager/MotionEventManager/access$1702(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1700(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$2000(Lcom/product/android/business/manager/MotionEventManager;)F
fdiv
invokestatic com/product/android/business/manager/MotionEventManager/access$1902(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onTripleZoom(F)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
goto L7
L19:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L18:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1000(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L20
aload 2
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
if_icmple L21
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
invokestatic com/product/android/business/manager/MotionEventManager/access$1500(Lcom/product/android/business/manager/MotionEventManager;FFFF)F
fstore 3
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
fload 3
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$2200(Lcom/product/android/business/manager/MotionEventManager;)F
fdiv
invokestatic com/product/android/business/manager/MotionEventManager/access$2102(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$2100(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$2300(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onZoom(FF)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
goto L7
L21:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L20:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$200(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$600(Lcom/product/android/business/manager/MotionEventManager;)Z
ifne L7
aload 2
invokevirtual android/view/MotionEvent/getEventTime()J
aload 2
invokevirtual android/view/MotionEvent/getDownTime()J
lsub
l2f
fstore 3
fload 3
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1100(Lcom/product/android/business/manager/MotionEventManager;)I
i2f
fcmpl
ifle L22
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onLongClick(FF)Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/result Z
ifeq L7
goto L7
L22:
fload 3
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$1200(Lcom/product/android/business/manager/MotionEventManager;)I
i2f
fcmpl
ifle L7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
getfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
ifne L7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onPress(FF)V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
putfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
goto L7
L4:
aload 2
invokevirtual android/view/MotionEvent/getPointerCount()I
istore 7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$302(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
iload 7
iconst_2
if_icmplt L23
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
invokestatic com/product/android/business/manager/MotionEventManager/access$1500(Lcom/product/android/business/manager/MotionEventManager;FFFF)F
invokestatic com/product/android/business/manager/MotionEventManager/access$2202(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokevirtual com/product/android/business/manager/MotionEventManager/onDoubleTouchTown()Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$202(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L23:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L5:
aload 2
invokevirtual android/view/MotionEvent/getPointerCount()I
istore 7
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$302(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
iload 7
iconst_3
if_icmplt L24
aload 0
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokevirtual com/product/android/business/manager/MotionEventManager/onTripleTouchTown()Z
putfield com/product/android/business/manager/MotionEventManager$1/result Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$202(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$1602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 2
invokestatic com/product/android/business/manager/MotionEventManager/access$1800(Lcom/product/android/business/manager/MotionEventManager;Landroid/view/MotionEvent;)F
invokestatic com/product/android/business/manager/MotionEventManager/access$2002(Lcom/product/android/business/manager/MotionEventManager;F)F
pop
goto L7
L24:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L3:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
L6:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_0
invokestatic com/product/android/business/manager/MotionEventManager/access$1602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
goto L7
.limit locals 8
.limit stack 7
.end method
