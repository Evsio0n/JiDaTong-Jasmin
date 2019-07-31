.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearcdFriendTask inner com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask outer com/nd/android/u/contact/activity/SearchUserResultActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchUserResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Lcom/nd/android/u/contact/activity/SearchUserResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/<init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$400(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUserByUsername(Ljava/lang/String;)Ljava/util/List;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$302(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/util/List;)Ljava/util/List;
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
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
putfield com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
