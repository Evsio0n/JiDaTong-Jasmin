.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/AniImageView$1
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/AniImageView
.inner class inner com/nd/android/u/ui/widge/AniImageView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/AniImageView;

.method <init>(Lcom/nd/android/u/ui/widge/AniImageView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 9991
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
invokestatic com/nd/android/u/ui/widge/AniImageView/access$000(Lcom/nd/android/u/ui/widge/AniImageView;)I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
invokestatic com/nd/android/u/ui/widge/AniImageView/access$100(Lcom/nd/android/u/ui/widge/AniImageView;)I
iconst_1
iadd
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
invokestatic com/nd/android/u/ui/widge/AniImageView/access$200(Lcom/nd/android/u/ui/widge/AniImageView;)I
irem
invokestatic com/nd/android/u/ui/widge/AniImageView/access$102(Lcom/nd/android/u/ui/widge/AniImageView;I)I
pop
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
invokestatic com/nd/android/u/ui/widge/AniImageView/access$300(Lcom/nd/android/u/ui/widge/AniImageView;)V
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
invokestatic com/nd/android/u/ui/widge/AniImageView/access$400(Lcom/nd/android/u/ui/widge/AniImageView;)Landroid/os/Handler;
sipush 9991
aload 0
getfield com/nd/android/u/ui/widge/AniImageView$1/this$0 Lcom/nd/android/u/ui/widge/AniImageView;
getfield com/nd/android/u/ui/widge/AniImageView/mUpdateRate I
i2l
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
.limit locals 2
.limit stack 4
.end method
