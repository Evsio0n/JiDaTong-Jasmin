.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CreateDiscussionTask inner com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask outer com/nd/android/u/contact/activity/XYSelectUserActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Lcom/nd/android/u/contact/activity/XYSelectUserActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch java/lang/Exception from L6 to L7 using L3
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch java/lang/Exception from L7 to L8 using L3
aload 1
ifnull L6
L0:
aload 1
arraylength
ifle L6
aload 1
iconst_0
aaload
ldc "name"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
new com/nd/android/u/contact/com/OapDiscussionCom
dup
invokespecial com/nd/android/u/contact/com/OapDiscussionCom/<init>()V
aload 5
aload 7
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/createDiscussion(Ljava/lang/String;Ljava/util/ArrayList;)J
putfield com/nd/android/u/contact/activity/XYSelectUserActivity/gid J
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gid J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 1
aload 5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 1
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 7
invokevirtual java/util/ArrayList/size()I
newarray long
astore 6
aload 7
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L1:
iconst_0
istore 2
L4:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 8
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 8
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gid J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 8
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
aload 5
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
aload 6
iload 2
lload 3
lastore
iload 2
iconst_1
iadd
istore 2
goto L4
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
aload 1
aload 5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/addDiscussion(Lcom/product/android/commonInterface/contact/OapGroup;)Lcom/product/android/commonInterface/contact/OapGroup;
pop
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 6
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
pop
L8:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 9
.limit stack 4
.end method
