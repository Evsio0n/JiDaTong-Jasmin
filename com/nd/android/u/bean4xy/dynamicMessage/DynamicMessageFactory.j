.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DynamicMessageFactory
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getGroupDynamicMessage(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
aload 1
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Group/getMessageContentType()I
tableswitch 10003
L0
L1
L2
L3
L3
L3
L4
default : L3
L3:
aconst_null
areturn
L0:
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L5
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionRenamed
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionRenamed/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
L5:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
L1:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MemberLeaveGroup/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
L2:
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L6
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToDiscussion
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToDiscussion/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
L6:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_InviteMembersToGroup/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
L4:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getPersonDynamicMessage(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
aload 1
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getMessageContentType()I
tableswitch 20001
L0
L1
L2
L3
default : L4
L4:
aconst_null
areturn
L0:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
areturn
L2:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
areturn
L1:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MicroblogUpdate
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MicroblogUpdate/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
areturn
L3:
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend
dup
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
areturn
.limit locals 2
.limit stack 4
.end method
