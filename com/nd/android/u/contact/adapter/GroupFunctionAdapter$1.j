.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/GroupFunctionAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/GroupFunctionAdapter
.inner class inner com/nd/android/u/contact/adapter/GroupFunctionAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/groupfun_list_cb I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L1
L0:
return
L1:
aload 1
checkcast android/widget/CheckBox
invokevirtual android/widget/CheckBox/isChecked()Z
ifne L2
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iconst_0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
L3:
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$200(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Landroid/os/Handler;
ifnull L4
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$200(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Landroid/os/Handler;
sipush 10000
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L4:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc ""
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendGroupInfoChange(Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iconst_2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
invokestatic com/nd/android/u/contact/adapter/GroupFunctionAdapter/access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
goto L3
.limit locals 2
.limit stack 3
.end method
