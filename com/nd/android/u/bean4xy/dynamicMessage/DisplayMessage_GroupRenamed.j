.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed
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
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "gname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/groupName Ljava/lang/String;
L1:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/group_renamed_content I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/groupName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/displayTitle Ljava/lang/String;
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 7
.end method

.method public updateRecentContactItem(I)V
aload 0
iload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/groupId Ljava/lang/String;
astore 2
new com/nd/android/u/bean4xy/GroupContactItem
dup
invokespecial com/nd/android/u/bean4xy/GroupContactItem/<init>()V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setId(Ljava/lang/String;)V
aload 3
iconst_0
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setSubtype(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/resetName()V
return
.limit locals 4
.limit stack 2
.end method
