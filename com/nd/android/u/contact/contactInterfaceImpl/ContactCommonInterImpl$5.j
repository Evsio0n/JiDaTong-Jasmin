.bytecode 50.0
.class synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessGroupProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;

.field final synthetic 'val$gidDis' J

.method <init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
aload 0
aload 1
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 0
lload 2
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5/val$gidDis J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
dup
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5/val$gidDis J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
astore 1
aload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/loadGroup()Z 0
ifeq L0
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2003
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5/val$gidDis J
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLoginAllGroups()V
L0:
return
.limit locals 2
.limit stack 5
.end method
