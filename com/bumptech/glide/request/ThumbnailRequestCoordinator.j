.bytecode 50.0
.class public synchronized com/bumptech/glide/request/ThumbnailRequestCoordinator
.super java/lang/Object
.implements com/bumptech/glide/request/RequestCoordinator
.implements com/bumptech/glide/request/Request

.field private 'coordinator' Lcom/bumptech/glide/request/RequestCoordinator;

.field private 'full' Lcom/bumptech/glide/request/Request;

.field private 'thumb' Lcom/bumptech/glide/request/Request;

.method public <init>()V
aload 0
aconst_null
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/<init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
return
.limit locals 2
.limit stack 2
.end method

.method private parentCanNotifyStatusChanged()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z 1
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private parentCanSetImage()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/canSetImage(Lcom/bumptech/glide/request/Request;)Z 1
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private parentIsAnyResourceSet()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
invokeinterface com/bumptech/glide/request/RequestCoordinator/isAnyResourceSet()Z 0
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public begin()V
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isRunning()Z 0
ifne L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/begin()V 0
L0:
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isRunning()Z 0
ifne L1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/begin()V 0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
aload 0
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/parentCanNotifyStatusChanged()Z
ifeq L0
aload 1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokevirtual com/bumptech/glide/request/ThumbnailRequestCoordinator/isAnyResourceSet()Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
aload 0
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/parentCanSetImage()Z
ifeq L0
aload 1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isResourceSet()Z 0
ifne L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/clear()V 0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public isAnyResourceSet()Z
aload 0
invokespecial com/bumptech/glide/request/ThumbnailRequestCoordinator/parentIsAnyResourceSet()Z
ifne L0
aload 0
invokevirtual com/bumptech/glide/request/ThumbnailRequestCoordinator/isResourceSet()Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCancelled()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isCancelled()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isComplete()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isComplete()Z 0
ifne L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isComplete()Z 0
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isFailed()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isFailed()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPaused()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isPaused()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isResourceSet()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isResourceSet()Z 0
ifne L0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isResourceSet()Z 0
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRunning()Z
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isRunning()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
aload 1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
ifnull L2
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/coordinator Lcom/bumptech/glide/request/RequestCoordinator;
aload 0
invokeinterface com/bumptech/glide/request/RequestCoordinator/onRequestSuccess(Lcom/bumptech/glide/request/Request;)V 1
L2:
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/isComplete()Z 0
ifne L1
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/clear()V 0
return
.limit locals 2
.limit stack 2
.end method

.method public pause()V
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/pause()V 0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/pause()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/recycle()V 0
aload 0
getfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
invokeinterface com/bumptech/glide/request/Request/recycle()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
aload 0
aload 1
putfield com/bumptech/glide/request/ThumbnailRequestCoordinator/full Lcom/bumptech/glide/request/Request;
aload 0
aload 2
putfield com/bumptech/glide/request/ThumbnailRequestCoordinator/thumb Lcom/bumptech/glide/request/Request;
return
.limit locals 3
.limit stack 2
.end method
