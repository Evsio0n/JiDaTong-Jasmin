.bytecode 50.0
.class public synchronized com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IGroupSupplier
.inner class inner com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/isGroupsExist()Z 0
ifeq L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserGroups()Ljava/util/ArrayList; 0
astore 2
aload 2
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
aload 1
areturn
L2:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
astore 3
aload 1
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 3
invokeinterface ims/outInterface/IGroup/getGid()Ljava/lang/String; 0
aload 3
invokeinterface ims/outInterface/IGroup/getGroupType()I 0
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aconst_null
areturn
.limit locals 4
.limit stack 5
.end method

.method public loginAllGroup(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lims/outInterface/IGroup;>;)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
return
L2:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
invokeinterface ims/outInterface/IGroup/loginInit()V 0
goto L1
L0:
new java/lang/Thread
dup
new com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1
dup
aload 0
invokespecial com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1/<init>(Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 2
.limit stack 5
.end method
