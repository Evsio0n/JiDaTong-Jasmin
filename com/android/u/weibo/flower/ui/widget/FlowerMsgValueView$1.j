.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/onClick(Landroid/view/View;)V
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;

.method <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Landroid/os/Handler;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method
