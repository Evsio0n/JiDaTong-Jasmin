.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddFriendFollowTask inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "friend"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapUser
astore 2
aload 2
ifnull L4
L0:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/WeiboAddFollow(J)I
ifne L1
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$100(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
ldc ""
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/addMember(JLjava/lang/String;)Z 3
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$1202(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;J)J
pop2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendFollowTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
iconst_m1
aload 1
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/setResult(ILandroid/content/Intent;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 4
.end method
