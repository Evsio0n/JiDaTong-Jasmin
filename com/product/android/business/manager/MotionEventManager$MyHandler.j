.bytecode 50.0
.class synchronized com/product/android/business/manager/MotionEventManager$MyHandler
.super android/os/Handler
.inner class private MyHandler inner com/product/android/business/manager/MotionEventManager$MyHandler outer com/product/android/business/manager/MotionEventManager

.field private 'mId' I

.field final synthetic 'this$0' Lcom/product/android/business/manager/MotionEventManager;

.method private <init>(Lcom/product/android/business/manager/MotionEventManager;)V
aload 0
aload 1
putfield com/product/android/business/manager/MotionEventManager$MyHandler/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/business/manager/MotionEventManager;Lcom/product/android/business/manager/MotionEventManager$1;)V
aload 0
aload 1
invokespecial com/product/android/business/manager/MotionEventManager$MyHandler/<init>(Lcom/product/android/business/manager/MotionEventManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public isIdChanged(I)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager$MyHandler/mId I
iload 1
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setId(I)V
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager$MyHandler/mId I
return
.limit locals 2
.limit stack 2
.end method
