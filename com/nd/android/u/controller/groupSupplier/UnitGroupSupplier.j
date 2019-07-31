.bytecode 50.0
.class public synchronized com/nd/android/u/controller/groupSupplier/UnitGroupSupplier
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IGroupSupplier

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
new com/nd/android/u/controller/bean/DefaultGroup
dup
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUnitid()I 0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
bipush 20
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 2
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public loginAllGroup(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lims/outInterface/IGroup;>;)V"
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
invokeinterface ims/outInterface/IGroup/loginInit()V 0
goto L0
.limit locals 2
.limit stack 1
.end method
