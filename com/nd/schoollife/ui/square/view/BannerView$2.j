.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/BannerView$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/schoollife/ui/square/view/BannerView
.inner class inner com/nd/schoollife/ui/square/view/BannerView$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/BannerView;

.method <init>(Lcom/nd/schoollife/ui/square/view/BannerView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView$2/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$2/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$200(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/os/Handler;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$2/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$200(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/os/Handler;
sipush 2048
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$2/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$200(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/os/Handler;
sipush 2048
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
