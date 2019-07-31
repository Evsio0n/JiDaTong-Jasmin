.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private DeleteFriendGroupTask inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$800(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$800(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L6
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$800(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 3
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 3
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/delFriendGroup(I)Z 1
pop
L1:
goto L7
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L7
L6:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
ifnull L8
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L8
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
goto L9
L10:
aload 1
ifnull L8
aload 1
invokeinterface java/util/Set/size()I 0
ifle L8
aload 1
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L11:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 3
iconst_0
istore 2
L12:
iload 2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L11
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
aload 3
invokevirtual java/lang/Integer/intValue()I
if_icmpne L4
L3:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$DeleteFriendGroupTask/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/modFriendGroup(Ljava/lang/String;)Z 1
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L12
L5:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
L8:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 3
.end method
