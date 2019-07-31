.bytecode 50.0
.class synchronized com/nd/album/ui/widget/AlbumTaskOverView$2
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/nd/album/ui/widget/AlbumTaskOverView/beginAnimate(Z)V
.inner class inner com/nd/album/ui/widget/AlbumTaskOverView$2

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/AlbumTaskOverView;

.field final synthetic 'val$bShow' Z

.method <init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;Z)V
aload 0
aload 1
putfield com/nd/album/ui/widget/AlbumTaskOverView$2/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
aload 0
iload 2
putfield com/nd/album/ui/widget/AlbumTaskOverView$2/val$bShow Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/val$bShow Z
ifne L0
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
bipush 8
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setVisibility(I)V
L0:
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/clearAnimation()V
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/val$bShow Z
ifeq L1
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
getfield com/nd/album/ui/widget/AlbumTaskOverView/handler Landroid/os/Handler;
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$2/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
getfield com/nd/album/ui/widget/AlbumTaskOverView/handler Landroid/os/Handler;
sipush 2013
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
ldc2_w 4000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
L1:
return
.limit locals 2
.limit stack 4
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method
