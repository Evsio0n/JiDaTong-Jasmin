.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup
.super com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public prepareMessage()Z
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/oriMessage Ljava/lang/String;
ldc "\u3001"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/memberNames [Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/invite_members_to_group I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/oriMessage Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/displayTitle Ljava/lang/String;
iconst_0
ireturn
.limit locals 1
.limit stack 7
.end method
