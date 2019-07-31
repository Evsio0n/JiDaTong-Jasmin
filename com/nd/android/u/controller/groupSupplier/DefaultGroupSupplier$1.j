.bytecode 50.0
.class synchronized com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier/loginAllGroup(Ljava/util/ArrayList;)V
.inner class inner com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1

.field final synthetic 'this$0' Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;

.method <init>(Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;)V
aload 0
aload 1
putfield com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1/this$0 Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/initAllGroup()V 0
aload 0
getfield com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1/this$0 Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;
invokevirtual com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier/getGroupList()Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier$1/this$0 Lcom/nd/android/u/controller/groupSupplier/DefaultGroupSupplier;
aload 1
invokevirtual com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier/loginAllGroup(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method
