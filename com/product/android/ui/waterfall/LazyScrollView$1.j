.bytecode 50.0
.class synchronized com/product/android/ui/waterfall/LazyScrollView$1
.super android/os/Handler
.enclosing method com/product/android/ui/waterfall/LazyScrollView
.inner class inner com/product/android/ui/waterfall/LazyScrollView$1

.field final synthetic 'this$0' Lcom/product/android/ui/waterfall/LazyScrollView;

.method <init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
aload 0
aload 1
putfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
-9983762 : L0
1 : L1
default : L2
L2:
return
L1:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$000(Lcom/product/android/ui/waterfall/LazyScrollView;)Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
bipush 20
isub
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getScrollY()I
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getHeight()I
iadd
if_icmpgt L3
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onBottom()V 0
return
L3:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getScrollY()I
ifne L4
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onTop()V 0
return
L4:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onScroll()V 0
return
L0:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/view/View
astore 1
aload 1
ifnull L2
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$200(Lcom/product/android/ui/waterfall/LazyScrollView;)I
aload 1
invokevirtual android/view/View/getScrollY()I
if_icmpne L5
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onStop()V 0
return
L5:
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
getfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
ldc_w -9983762
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
ldc2_w 50L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView$1/this$0 Lcom/product/android/ui/waterfall/LazyScrollView;
aload 1
invokevirtual android/view/View/getScrollY()I
invokestatic com/product/android/ui/waterfall/LazyScrollView/access$202(Lcom/product/android/ui/waterfall/LazyScrollView;I)I
pop
return
.limit locals 2
.limit stack 4
.end method
