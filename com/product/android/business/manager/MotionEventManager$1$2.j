.bytecode 50.0
.class synchronized com/product/android/business/manager/MotionEventManager$1$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/product/android/business/manager/MotionEventManager$1/onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.inner class inner com/product/android/business/manager/MotionEventManager$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$2

.field final synthetic 'this$1' Lcom/product/android/business/manager/MotionEventManager$1;

.method <init>(Lcom/product/android/business/manager/MotionEventManager$1;)V
aload 0
aload 1
putfield com/product/android/business/manager/MotionEventManager$1$2/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$2/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$2/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$2/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$900(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onReStore(FF)V
return
.limit locals 1
.limit stack 3
.end method
