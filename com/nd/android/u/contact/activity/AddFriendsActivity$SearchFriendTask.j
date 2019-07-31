.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchFriendTask inner com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask outer com/nd/android/u/contact/activity/AddFriendsActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Lcom/nd/android/u/contact/activity/AddFriendsActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$900(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/List;
ifnonnull L3
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$902(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/util/List;)Ljava/util/List;
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$1000(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUserByKey(Ljava/lang/String;)Ljava/util/List;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$902(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$900(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/List;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$900(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L5
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$900(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$SearchFriendTask/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$1100(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
ldc "200"
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setMessage(Ljava/lang/String;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L6:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
