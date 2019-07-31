.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddFriendGroupTask inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$300(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setUid(J)V
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$300(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/addFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 1
astore 1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$AddFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
