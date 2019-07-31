.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
.enclosing method com/nd/android/u/contact/activity/XYNewSearchGroupActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
lload 2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifeq L0
L1:
return
L0:
iload 1
sipush 2003
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/handler Landroid/os/Handler;
sipush 2003
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$200(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V 1
return
.limit locals 5
.limit stack 4
.end method
