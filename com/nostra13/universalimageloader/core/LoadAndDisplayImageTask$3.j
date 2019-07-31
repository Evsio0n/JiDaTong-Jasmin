.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireCancelEvent()V
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.method <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V 2
return
.limit locals 1
.limit stack 3
.end method
