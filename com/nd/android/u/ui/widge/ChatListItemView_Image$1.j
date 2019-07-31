.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_Image$1
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/assist/ImageLoadingListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_Image
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Image$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_Image;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onLoadingCancelled:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
aload 2
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Image/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
astore 3
aload 3
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "path"
aload 2
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 4
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 1
aload 3
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 2
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Image;
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onLoadingComplete and path is null:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 3
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onLoadingFailed:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 3
.end method

.method public onLoadingProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
return
.limit locals 3
.limit stack 0
.end method
