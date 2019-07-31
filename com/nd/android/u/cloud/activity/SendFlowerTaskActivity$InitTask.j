.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public InitTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getOrder()I
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$400(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
ifnull L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getUnitid()I
if_icmpne L4
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getDeptid()I
ifne L4
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getUnitid()I
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserByUnitid(II)Ljava/util/ArrayList; 2
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$402(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L3:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$400(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L6
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/contact/business/OapUnitManager/getInstance()Lcom/nd/android/u/contact/business/OapUnitManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getUnitid()I
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getDeptid()I
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
invokevirtual com/nd/android/u/contact/business/OapUnitManager/searchChildsDeptid(JIII)Ljava/util/ArrayList;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$402(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L5:
goto L3
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$300(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
return
.limit locals 1
.limit stack 1
.end method
