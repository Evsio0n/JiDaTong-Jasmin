.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public GetNextPageTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity

.field 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 3
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getOrder()I
ifeq L0
iconst_0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getDeptid()I
i2l
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
bipush 20
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$600(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/getFlowerRank(IJIII)Ljava/util/ArrayList;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
ifle L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 1
iload 2
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/RankInfo
getfield com/product/android/commonInterface/contact/RankInfo/ranking I
iconst_1
iadd
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$602(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;I)I
pop
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/RankInfo
getfield com/product/android/commonInterface/contact/RankInfo/uid J
lstore 4
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
lload 4
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/createPhotoWallItem(J)Lcom/nd/android/u/contact/view/PhotoWallItem;
astore 6
aload 6
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/list Ljava/util/ArrayList;
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L0:
iconst_0
istore 2
L3:
iload 2
bipush 20
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$200(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/getCurrentTotalNumber()I
iload 2
iadd
istore 3
iload 3
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$400(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L4
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$400(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
lload 4
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/createPhotoWallItem(J)Lcom/nd/android/u/contact/view/PhotoWallItem;
astore 1
aload 1
ifnull L5
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/list Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 7
.limit stack 6
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
