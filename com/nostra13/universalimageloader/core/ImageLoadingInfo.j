.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/core/ImageLoadingInfo
.super java/lang/Object

.field final 'imageAware' Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final 'listener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final 'loadFromUriLock' Ljava/util/concurrent/locks/ReentrantLock;

.field final 'memoryCacheKey' Ljava/lang/String;

.field final 'options' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final 'progressListener' Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field final 'targetSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final 'uri' Ljava/lang/String;

.method public <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/uri Ljava/lang/String;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/imageAware Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
aload 5
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/options Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 6
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/listener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
aload 0
aload 7
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/progressListener Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
aload 0
aload 8
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/loadFromUriLock Ljava/util/concurrent/locks/ReentrantLock;
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/ImageLoadingInfo/memoryCacheKey Ljava/lang/String;
return
.limit locals 9
.limit stack 2
.end method
