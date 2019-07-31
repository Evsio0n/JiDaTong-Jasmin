.bytecode 50.0
.class synchronized com/product/android/business/manager/MotionEventManager$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/product/android/business/manager/MotionEventManager$1/onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.inner class inner com/product/android/business/manager/MotionEventManager$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$1

.field final synthetic 'this$1' Lcom/product/android/business/manager/MotionEventManager$1;

.field final synthetic 'val$handler' Lcom/product/android/business/manager/MotionEventManager$MyHandler;

.method <init>(Lcom/product/android/business/manager/MotionEventManager$1;Lcom/product/android/business/manager/MotionEventManager$MyHandler;)V
aload 0
aload 1
putfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
aload 0
aload 2
putfield com/product/android/business/manager/MotionEventManager$1$1/val$handler Lcom/product/android/business/manager/MotionEventManager$MyHandler;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/val$handler Lcom/product/android/business/manager/MotionEventManager$MyHandler;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$400(Lcom/product/android/business/manager/MotionEventManager;)I
invokevirtual com/product/android/business/manager/MotionEventManager$MyHandler/isIdChanged(I)Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$200(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L1
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$300(Lcom/product/android/business/manager/MotionEventManager;)Z
ifeq L1
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mbCanBeClick && mbIsSingleDown && mbLongClickNotified="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$600(Lcom/product/android/business/manager/MotionEventManager;)Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/manager/MotionEventManager/access$700(Lcom/product/android/business/manager/MotionEventManager;Ljava/lang/String;)V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$600(Lcom/product/android/business/manager/MotionEventManager;)Z
ifne L1
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mbLongClickNotified="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$600(Lcom/product/android/business/manager/MotionEventManager;)Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/manager/MotionEventManager/access$700(Lcom/product/android/business/manager/MotionEventManager;Ljava/lang/String;)V
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
invokestatic com/product/android/business/manager/MotionEventManager/access$100(Lcom/product/android/business/manager/MotionEventManager;)F
invokevirtual com/product/android/business/manager/MotionEventManager/onLongClick(FF)Z
pop
aload 0
getfield com/product/android/business/manager/MotionEventManager$1$1/this$1 Lcom/product/android/business/manager/MotionEventManager$1;
getfield com/product/android/business/manager/MotionEventManager$1/this$0 Lcom/product/android/business/manager/MotionEventManager;
iconst_1
invokestatic com/product/android/business/manager/MotionEventManager/access$602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
pop
return
.limit locals 1
.limit stack 3
.end method
