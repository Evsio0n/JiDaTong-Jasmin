.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/refreshView(I)V
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;

.field final synthetic 'val$current' I

.method <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;I)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
iload 2
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/val$current I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/val$current I
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Lcom/product/android/ui/widget/AnimImageView;
invokevirtual com/product/android/ui/widget/AnimImageView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method
