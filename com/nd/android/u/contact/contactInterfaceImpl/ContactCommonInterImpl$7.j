.bytecode 50.0
.class synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessGroupGetData(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;

.field final synthetic 'val$gidTemp' J

.method <init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
aload 0
aload 1
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 0
lload 2
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/val$gidTemp J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
dup
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/val$gidTemp J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
astore 1
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/loadGroup()Z 0
ifne L0
return
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/val$gidTemp J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
iconst_m1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/access$000(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;JLjava/lang/String;Z)V
return
.limit locals 3
.limit stack 5
.end method
