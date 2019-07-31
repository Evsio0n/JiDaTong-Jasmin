.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected SearchUserTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;

.method protected <init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
aload 1
iconst_0
aaload
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L0:
aload 2
invokevirtual java/util/ArrayList/clear()V
aload 0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
aload 1
ldc "strNamePre"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserIdByKey(JILjava/lang/String;)Ljava/util/ArrayList; 4
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask/paraData Ljava/lang/Object;
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 7
.end method
