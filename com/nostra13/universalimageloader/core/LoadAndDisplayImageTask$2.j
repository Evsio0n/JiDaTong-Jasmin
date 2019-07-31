.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.inner class inner com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field private final synthetic 'val$failCause' Ljava/lang/Throwable;

.field private final synthetic 'val$failType' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.method <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/val$failType Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/val$failCause Ljava/lang/Throwable;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/shouldShowImageOnFail()Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
invokestatic com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/access$0(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/resources Landroid/content/res/Resources;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/setImageDrawable(Landroid/graphics/drawable/Drawable;)Z 1
pop
L0:
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/uri Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/this$0 Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
invokeinterface com/nostra13/universalimageloader/core/imageaware/ImageAware/getWrappedView()Landroid/view/View; 0
new com/nostra13/universalimageloader/core/assist/FailReason
dup
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/val$failType Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 0
getfield com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2/val$failCause Ljava/lang/Throwable;
invokespecial com/nostra13/universalimageloader/core/assist/FailReason/<init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V 3
return
.limit locals 1
.limit stack 7
.end method
