.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddRequestFriendTask inner com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask outer com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;

.method private <init>(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/<init>(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getBlackList()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/checkFriend(J)Z 2
ifeq L1
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31001
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifeq L3
ldc "AddFriendRequestDialog"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "AddRequestFriendTask WEIBO_REL_ADD_FOLLOW_31001:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
iconst_0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
ldc ""
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/addMember(JLjava/lang/String;)Z 3
pop
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L5
L6
L6
L7
default : L6
L6:
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/message Ljava/lang/String;
L8:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/canot_follow_self I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/message Ljava/lang/String;
goto L8
L7:
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/this$0 Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendFollowRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/favorite_friend_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog$AddRequestFriendTask/message Ljava/lang/String;
goto L8
.limit locals 2
.limit stack 4
.end method
