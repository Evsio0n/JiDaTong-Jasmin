.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/<init>()V
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
iload 1
tableswitch 2001
L0
L1
L2
default : L1
L1:
return
L2:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 2
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
return
L0:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/delGroup(J)V
return
.limit locals 5
.limit stack 4
.end method
