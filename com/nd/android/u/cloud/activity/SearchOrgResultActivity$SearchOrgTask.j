.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchOrgTask inner com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask outer com/nd/android/u/cloud/activity/SearchOrgResultActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/<init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapRequestProces/getInstance()Lcom/nd/android/u/contact/business/ContactOapRequestProces;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$300(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)Ljava/lang/String;
iconst_m1
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$400(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)I
bipush 20
imul
bipush 20
invokevirtual com/nd/android/u/contact/business/ContactOapRequestProces/search(Ljava/lang/String;III)Ljava/util/HashMap;
astore 1
L1:
aload 1
ifnull L5
L4:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
aload 1
ldc "list"
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/List
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$502(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
aload 1
ldc "total"
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$602(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;I)I
pop
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 0
aload 1
invokevirtual com/common/android/utils/http/ResponseException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 5
.end method
