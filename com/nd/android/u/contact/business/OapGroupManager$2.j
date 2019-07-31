.bytecode 50.0
.class final synchronized com/nd/android/u/contact/business/OapGroupManager$2
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileGroupCallback
.enclosing method com/nd/android/u/contact/business/OapGroupManager/getGroupNameByGUid(JJ)Ljava/lang/String;
.inner class static final inner com/nd/android/u/contact/business/OapGroupManager$2

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
ifnull L0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 3
.limit stack 2
.end method
