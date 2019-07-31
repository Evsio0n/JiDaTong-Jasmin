.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearcdGroupTask inner com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask outer com/nd/android/u/contact/activity/SearchGroupResultActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Lcom/nd/android/u/contact/activity/SearchGroupResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/<init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$902(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$900(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$1000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$1100(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
bipush 15
invokevirtual com/nd/android/u/contact/com/OapGroupCom/searchGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)I
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$302(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$900(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$900(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$202(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity$SearcdGroupTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 7
.end method
