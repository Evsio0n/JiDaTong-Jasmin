.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/createGroup(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;

.field final synthetic 'val$group' Lcom/product/android/commonInterface/contact/OapGroup;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aload 0
aload 2
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3/val$group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 2
.end method
