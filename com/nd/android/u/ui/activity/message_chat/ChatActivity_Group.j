.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Group
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.implements com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected addAdditionFrament(Landroid/support/v4/app/FragmentTransaction;)V
aload 0
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
ldc "edittextvalue"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/content Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 2
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "grouptype"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/setArguments(Landroid/os/Bundle;)V
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public createPopQuickReply()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/createPopQuickReply(J)V
return
.limit locals 1
.limit stack 3
.end method

.method protected getParam(Landroid/os/Bundle;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/messageType I
L0:
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
L1:
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
aload 1
ldc "forward_type"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
ldc "forward_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
L4:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
iconst_1
if_icmpne L5
aload 0
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/repostMsgId Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/repostMsgId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
ldc "CHAT"
ldc "get transmit key empty"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/finish()V
L7:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/finish()V
iconst_0
ireturn
L5:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
iconst_2
if_icmpne L7
aload 0
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdFilePath Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdFilePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
ldc "CHAT"
ldc "get transmit key empty fwdfile"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/finish()V
iconst_0
ireturn
L3:
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
L6:
aload 0
aload 1
ldc "grouptype"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupName(IJ)Ljava/lang/String; 3
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/name Ljava/lang/String;
L8:
aload 1
ldc "stype"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L9
aload 0
aload 1
ldc "stype"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
L9:
iconst_1
ireturn
.limit locals 2
.limit stack 5
.end method

.method public onClickSwitchBtn()V
return
.limit locals 1
.limit stack 0
.end method

.method public onResume()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onResume()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/checkGroupExist(J)Z 2
ifne L3
new com/nd/android/u/bean4xy/GroupContactItem
dup
invokespecial com/nd/android/u/bean4xy/GroupContactItem/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/setSubtype(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 1
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/finish()V
L4:
return
L3:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
iconst_2
if_icmpne L4
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdFilePath Ljava/lang/String;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/SendImageUtil/saveAndCompressBitmap(Ljava/lang/String;)Ljava/io/File;
astore 1
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Group;Ljava/io/File;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
aload 0
ldc ""
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdFilePath Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mFwdType I
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public refresh()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/refresh()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/groupType I
lookupswitch
0 : L0
2 : L1
10 : L2
default : L3
L3:
return
L0:
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L1:
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L2:
aload 1
ldc "deptid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
.limit locals 2
.limit stack 4
.end method

.method public showPopQuickReply(II)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/getIntent()Landroid/content/Intent;
ldc "fid"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
i2l
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/createPopQuickReply(J)V
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getstatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/CONTENT_CONTAINER_ID I
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/findViewById(I)Landroid/view/View;
iload 1
iload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/show(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method
