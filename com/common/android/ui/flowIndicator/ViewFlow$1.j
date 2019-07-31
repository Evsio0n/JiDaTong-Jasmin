.bytecode 50.0
.class synchronized com/common/android/ui/flowIndicator/ViewFlow$1
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.enclosing method com/common/android/ui/flowIndicator/ViewFlow
.inner class inner com/common/android/ui/flowIndicator/ViewFlow$1

.field final synthetic 'this$0' Lcom/common/android/ui/flowIndicator/ViewFlow;

.method <init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow$1/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGlobalLayout()V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$1/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$1/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$000(Lcom/common/android/ui/flowIndicator/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invokevirtual android/view/ViewTreeObserver/removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$1/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$1/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$100(Lcom/common/android/ui/flowIndicator/ViewFlow;)I
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setSelection(I)V
return
.limit locals 1
.limit stack 2
.end method
