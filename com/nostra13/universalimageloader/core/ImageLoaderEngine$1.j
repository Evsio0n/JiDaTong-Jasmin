.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/ImageLoaderEngine$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nostra13/universalimageloader/core/ImageLoaderEngine/submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.inner class inner com/nostra13/universalimageloader/core/ImageLoaderEngine$1

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final synthetic 'val$task' Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.method <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/this$0 Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/val$task Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/this$0 Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine/configuration Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/val$task Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
invokevirtual com/nostra13/universalimageloader/core/LoadAndDisplayImageTask/getLoadingUri()Ljava/lang/String;
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 2
aload 2
ifnull L0
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_1
istore 1
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/this$0 Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/ImageLoaderEngine/access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
iload 1
ifeq L2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/this$0 Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/ImageLoaderEngine/access$1(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/val$task Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
L0:
iconst_0
istore 1
goto L1
L2:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/this$0 Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invokestatic com/nostra13/universalimageloader/core/ImageLoaderEngine/access$2(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderEngine$1/val$task Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 3
.limit stack 2
.end method
