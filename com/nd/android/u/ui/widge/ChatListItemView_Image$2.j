.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_Image$2
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_Image
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Image$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_Image;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
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
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/changeVisible(Z)V
return
L0:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/changeVisible(Z)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 2
ldc "path"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setGifSize(Lpl/droidsonroids/gif/GifImageView;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/graphics/drawable/Drawable
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 3
.limit stack 4
.end method
