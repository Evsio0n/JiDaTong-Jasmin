.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireProgressEvent(II)Z
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field private final synthetic 'val$current' I

.field private final synthetic 'val$total' I

.method <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;II)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/val$current I
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/val$total I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/progressListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/val$current I
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1/val$total I
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener/onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V 4
return
.limit locals 1
.limit stack 5
.end method
