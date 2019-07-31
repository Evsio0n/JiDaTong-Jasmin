.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/PublicNumberLoginManager
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IGroupSupplier
.inner class inner com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public loginAllGroup(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lims/outInterface/IGroup;>;)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1/<init>(Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L2:
return
L1:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
invokeinterface ims/outInterface/IGroup/loginInit()V 0
goto L3
.limit locals 2
.limit stack 4
.end method
