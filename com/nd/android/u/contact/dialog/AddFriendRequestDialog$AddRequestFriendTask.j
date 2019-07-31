.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddRequestFriendTask inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask outer com/nd/android/u/contact/dialog/AddFriendRequestDialog

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;

.method private <init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/<init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getBlackList()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/checkFriend(J)Z 2
ifne L3
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
iconst_0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$000(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/addMember(JLjava/lang/String;)Z 3
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L4:
aload 1
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
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/message Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
