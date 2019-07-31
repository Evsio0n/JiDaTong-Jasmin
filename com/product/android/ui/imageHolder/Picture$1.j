.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/Picture$1
.super java/lang/Object
.implements com/product/android/ui/imageHolder/DownloadListener
.enclosing method com/product/android/ui/imageHolder/Picture
.inner class inner com/product/android/ui/imageHolder/Picture$1

.field final synthetic 'this$0' Lcom/product/android/ui/imageHolder/Picture;

.method <init>(Lcom/product/android/ui/imageHolder/Picture;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/Picture$1/this$0 Lcom/product/android/ui/imageHolder/Picture;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public fail(Ljava/lang/String;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
new com/product/android/ui/imageHolder/Picture$DownloadProgress
dup
iconst_m1
aload 1
invokespecial com/product/android/ui/imageHolder/Picture$DownloadProgress/<init>(ILjava/lang/String;)V
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 5
.end method

.method public showProgress(JJLjava/lang/String;)V
lconst_0
lload 1
lcmp
ifne L0
return
L0:
ldc2_w 100L
lload 3
lmul
lload 1
ldiv
lstore 1
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
new com/product/android/ui/imageHolder/Picture$DownloadProgress
dup
lload 1
l2i
aload 5
invokespecial com/product/android/ui/imageHolder/Picture$DownloadProgress/<init>(ILjava/lang/String;)V
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
.limit locals 6
.limit stack 5
.end method

.method public success(Ljava/lang/String;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
new com/product/android/ui/imageHolder/Picture$DownloadProgress
dup
bipush 100
aload 1
invokespecial com/product/android/ui/imageHolder/Picture$DownloadProgress/<init>(ILjava/lang/String;)V
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 5
.end method
