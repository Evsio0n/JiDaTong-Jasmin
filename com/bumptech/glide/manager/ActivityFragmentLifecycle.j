.bytecode 50.0
.class synchronized com/bumptech/glide/manager/ActivityFragmentLifecycle
.super java/lang/Object
.implements com/bumptech/glide/manager/Lifecycle

.field private 'isDestroyed' Z

.field private 'isStarted' Z

.field private final 'lifecycleListeners' Ljava/util/Set; signature "Ljava/util/Set<Lcom/bumptech/glide/manager/LifecycleListener;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/WeakHashMap
dup
invokespecial java/util/WeakHashMap/<init>()V
invokestatic java/util/Collections/newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
putfield com/bumptech/glide/manager/ActivityFragmentLifecycle/lifecycleListeners Ljava/util/Set;
return
.limit locals 1
.limit stack 3
.end method

.method public addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/lifecycleListeners Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/isDestroyed Z
ifeq L0
aload 1
invokeinterface com/bumptech/glide/manager/LifecycleListener/onDestroy()V 0
return
L0:
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/isStarted Z
ifeq L1
aload 1
invokeinterface com/bumptech/glide/manager/LifecycleListener/onStart()V 0
return
L1:
aload 1
invokeinterface com/bumptech/glide/manager/LifecycleListener/onStop()V 0
return
.limit locals 2
.limit stack 2
.end method

.method onDestroy()V
aload 0
iconst_1
putfield com/bumptech/glide/manager/ActivityFragmentLifecycle/isDestroyed Z
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/lifecycleListeners Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/LifecycleListener
invokeinterface com/bumptech/glide/manager/LifecycleListener/onDestroy()V 0
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method onStart()V
aload 0
iconst_1
putfield com/bumptech/glide/manager/ActivityFragmentLifecycle/isStarted Z
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/lifecycleListeners Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/LifecycleListener
invokeinterface com/bumptech/glide/manager/LifecycleListener/onStart()V 0
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method onStop()V
aload 0
iconst_0
putfield com/bumptech/glide/manager/ActivityFragmentLifecycle/isStarted Z
aload 0
getfield com/bumptech/glide/manager/ActivityFragmentLifecycle/lifecycleListeners Ljava/util/Set;
invokestatic com/bumptech/glide/util/Util/getSnapshot(Ljava/util/Collection;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/LifecycleListener
invokeinterface com/bumptech/glide/manager/LifecycleListener/onStop()V 0
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method
