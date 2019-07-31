.bytecode 50.0
.class public synchronized com/bumptech/glide/manager/RequestTracker
.super java/lang/Object

.field private 'isPaused' Z

.field private final 'pendingRequests' Ljava/util/List; signature "Ljava/util/List<Lcom/bumptech/glide/request/Request;>;"

.field private final 'requests' Ljava/util/Set; signature "Ljava/util/Set<Lcom/bumptech/glide/request/Request;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/WeakHashMap
dup
invokespecial java/util/WeakHashMap/<init>()V
invokestatic java/util/Collections/newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
putfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method addRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clearRequests()V
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/Request
invokeinterface com/bumptech/glide/request/Request/clear()V 0
goto L0
L1:
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 2
.limit stack 1
.end method

.method public isPaused()Z
aload 0
getfield com/bumptech/glide/manager/RequestTracker/isPaused Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public pauseRequests()V
aload 0
iconst_1
putfield com/bumptech/glide/manager/RequestTracker/isPaused Z
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/Request
astore 2
aload 2
invokeinterface com/bumptech/glide/request/Request/isRunning()Z 0
ifeq L0
aload 2
invokeinterface com/bumptech/glide/request/Request/pause()V 0
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public removeRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public restartRequests()V
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/Request
astore 2
aload 2
invokeinterface com/bumptech/glide/request/Request/isComplete()Z 0
ifne L0
aload 2
invokeinterface com/bumptech/glide/request/Request/isCancelled()Z 0
ifne L0
aload 2
invokeinterface com/bumptech/glide/request/Request/pause()V 0
aload 0
getfield com/bumptech/glide/manager/RequestTracker/isPaused Z
ifne L2
aload 2
invokeinterface com/bumptech/glide/request/Request/begin()V 0
goto L0
L2:
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public resumeRequests()V
aload 0
iconst_0
putfield com/bumptech/glide/manager/RequestTracker/isPaused Z
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/Request
astore 2
aload 2
invokeinterface com/bumptech/glide/request/Request/isComplete()Z 0
ifne L0
aload 2
invokeinterface com/bumptech/glide/request/Request/isCancelled()Z 0
ifne L0
aload 2
invokeinterface com/bumptech/glide/request/Request/isRunning()Z 0
ifne L0
aload 2
invokeinterface com/bumptech/glide/request/Request/begin()V 0
goto L0
L1:
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 3
.limit stack 2
.end method

.method public runRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
getfield com/bumptech/glide/manager/RequestTracker/requests Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/bumptech/glide/manager/RequestTracker/isPaused Z
ifne L0
aload 1
invokeinterface com/bumptech/glide/request/Request/begin()V 0
return
L0:
aload 0
getfield com/bumptech/glide/manager/RequestTracker/pendingRequests Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
