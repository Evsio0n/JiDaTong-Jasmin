.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchOrgDetailTask inner com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask outer com/nd/android/u/cloud/activity/OrgDetailActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OrgDetailActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/this$0 Lcom/nd/android/u/cloud/activity/OrgDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Lcom/nd/android/u/cloud/activity/OrgDetailActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/<init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapRequestProces/getInstance()Lcom/nd/android/u/contact/business/ContactOapRequestProces;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/this$0 Lcom/nd/android/u/cloud/activity/OrgDetailActivity;
invokestatic com/nd/android/u/cloud/activity/OrgDetailActivity/access$100(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)I
invokevirtual com/nd/android/u/contact/business/ContactOapRequestProces/searchDetail(I)Ljava/util/List;
astore 1
L1:
aload 1
ifnull L6
L4:
aload 1
invokeinterface java/util/List/size()I 0
ifle L6
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/this$0 Lcom/nd/android/u/cloud/activity/OrgDetailActivity;
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokestatic com/nd/android/u/cloud/activity/OrgDetailActivity/access$202(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Lcom/nd/android/u/contact/dataStructure/OapUnit;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
pop
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L7:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 0
aload 1
invokevirtual com/common/android/utils/http/ResponseException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
