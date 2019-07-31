.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$5
.super java/util/TimerTask
.enclosing method com/product/android/ui/widget/TopRankView/StartTimer()V
.inner class inner com/product/android/ui/widget/TopRankView$5

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$5/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/widget/TopRankView$5/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1600(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
bipush 100
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
