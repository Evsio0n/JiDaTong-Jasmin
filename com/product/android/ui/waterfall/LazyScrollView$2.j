.bytecode 50.0
.class synchronized com/product/android/ui/waterfall/LazyScrollView$2
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/product/android/ui/waterfall/LazyScrollView
.inner class inner com/product/android/ui/waterfall/LazyScrollView$2

.field final synthetic 'this$0' Lcom/product/android/ui/waterfall/LazyScrollView;

.method <init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
aload 0
aload 1
putfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L0
L1
default : L2
L2:
iconst_0
ireturn
L1:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$000(Lcom/product/android/ui/waterfall/LazyScrollView;)Landroid/view/View;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onMove()V 0
goto L2
L0:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$000(Lcom/product/android/ui/waterfall/LazyScrollView;)Landroid/view/View;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
ldc2_w 200L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onUp()V 0
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$2/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
ldc_w -9983762
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
ldc2_w 50L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
goto L2
.limit locals 3
.limit stack 4
.end method
