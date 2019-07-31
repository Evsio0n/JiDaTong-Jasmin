.bytecode 50.0
.class synchronized com/common/android/ui/wheel/WheelScroller$1
.super android/view/GestureDetector$SimpleOnGestureListener
.enclosing method com/common/android/ui/wheel/WheelScroller
.inner class inner com/common/android/ui/wheel/WheelScroller$1

.field final synthetic 'this$0' Lcom/common/android/ui/wheel/WheelScroller;

.method <init>(Lcom/common/android/ui/wheel/WheelScroller;)V
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelScroller$1/this$0 Lcom/common/android/ui/wheel/WheelScroller;
aload 0
invokespecial android/view/GestureDetector$SimpleOnGestureListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
aload 0
getfield com/common/android/ui/wheel/WheelScroller$1/this$0 Lcom/common/android/ui/wheel/WheelScroller;
iconst_0
invokestatic com/common/android/ui/wheel/WheelScroller/access$002(Lcom/common/android/ui/wheel/WheelScroller;I)I
pop
aload 0
getfield com/common/android/ui/wheel/WheelScroller$1/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
iconst_0
aload 0
getfield com/common/android/ui/wheel/WheelScroller$1/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$000(Lcom/common/android/ui/wheel/WheelScroller;)I
iconst_0
fload 4
fneg
f2i
iconst_0
iconst_0
ldc_w -2147483647
ldc_w 2147483647
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
aload 0
getfield com/common/android/ui/wheel/WheelScroller$1/this$0 Lcom/common/android/ui/wheel/WheelScroller;
iconst_0
invokestatic com/common/android/ui/wheel/WheelScroller/access$200(Lcom/common/android/ui/wheel/WheelScroller;I)V
iconst_1
ireturn
.limit locals 5
.limit stack 9
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
iconst_1
ireturn
.limit locals 5
.limit stack 1
.end method
