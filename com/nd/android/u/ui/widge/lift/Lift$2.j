.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/lift/Lift$2
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnPreDrawListener
.enclosing method com/nd/android/u/ui/widge/lift/Lift/<init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
.inner class inner com/nd/android/u/ui/widge/lift/Lift$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/lift/Lift;

.method <init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPreDraw()Z
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$500(Lcom/nd/android/u/ui/widge/lift/Lift;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$200(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getWidth()I
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$602(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
pop
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$200(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$702(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
pop
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$2/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_1
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$502(Lcom/nd/android/u/ui/widge/lift/Lift;Z)Z
pop
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method
