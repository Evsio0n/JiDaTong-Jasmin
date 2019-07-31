.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/createDiscussion(Ljava/lang/String;Ljava/util/Iterator;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;

.field final synthetic 'val$group' Lcom/product/android/commonInterface/contact/OapGroup;

.field final synthetic 'val$newIDs' [J

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Lcom/product/android/commonInterface/contact/OapGroup;[J)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aload 0
aload 2
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
aload 3
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$newIDs [J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/val$newIDs [J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
pop
return
.limit locals 1
.limit stack 3
.end method
