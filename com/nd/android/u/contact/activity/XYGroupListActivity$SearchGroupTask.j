.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected SearchGroupTask inner com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask outer com/nd/android/u/contact/activity/XYGroupListActivity

.field private 'mKey' Ljava/lang/String;

.field private 'tempList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/tempList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/mKey Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method protected final transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
aaload
ldc "key"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/mKey Ljava/lang/String;
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/tempList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/mKey Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/searchGroupByDB(Ljava/lang/String;)Ljava/util/Iterator; 1
astore 1
aload 1
ifnull L3
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/tempList Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 1
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/tempList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/tempList Ljava/util/List;
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/mKey Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$1102(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Ljava/lang/String;)Ljava/lang/String;
pop
iload 2
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
iconst_0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/showListView(Z)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
iconst_1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/showListView(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/common/android/utils/task/genericTask/TaskResult
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 2
.limit stack 2
.end method
