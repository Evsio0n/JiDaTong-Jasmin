.bytecode 50.0
.class synchronized com/nd/album/ui/widget/AlbumTaskOverView$3
.super android/os/Handler
.enclosing method com/nd/album/ui/widget/AlbumTaskOverView
.inner class inner com/nd/album/ui/widget/AlbumTaskOverView$3

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/AlbumTaskOverView;

.method <init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/AlbumTaskOverView$3/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
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
tableswitch 2013
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView$3/this$0 Lcom/nd/album/ui/widget/AlbumTaskOverView;
iconst_0
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/beginAnimate(Z)V
return
.limit locals 2
.limit stack 2
.end method
