.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.implements com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$2
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3

.field protected 'copyAcknowledgeAudioTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'listener' Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;

.field private 'mAudioMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mFlowerFragment' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.field private 'mMsgPuller' Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;

.field protected 'mPostQuickReplies' [Ljava/lang/String;

.field private 'today' Ljava/lang/String;

.field protected 'waitDialog' Landroid/app/ProgressDialog;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
aload 0
new com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/listener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/onGetDataSuccess(Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
.limit locals 3
.limit stack 3
.end method

.method private getFlowerAndBirthdayInfo(J)V
new java/lang/Thread
dup
new com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3
dup
aload 0
lload 1
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 3
.limit stack 7
.end method

.method private needPullerMessageTip(Ljava/lang/String;)Z
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pullerMessageTip_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ifnull L0
aload 1
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method private onGetDataSuccess(Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
astore 12
iconst_m1
istore 3
aload 12
ldc "-"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 12
aload 12
arraylength
iconst_2
if_icmplt L0
aload 12
arraylength
iconst_2
if_icmpge L1
return
L1:
aload 12
arraylength
iconst_2
if_icmpne L2
aload 12
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
aload 12
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
L3:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 12
aload 12
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 7
iload 7
istore 6
aload 12
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 8
aload 12
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
istore 9
iload 5
bipush 12
if_icmpne L4
iload 4
bipush 29
if_icmple L4
iload 6
istore 3
iload 9
iconst_1
if_icmpne L5
iload 6
istore 3
iload 8
iconst_3
if_icmpge L5
iload 6
iconst_1
isub
istore 3
L5:
aload 12
iload 3
iload 5
iload 4
invokevirtual java/util/Calendar/set(III)V
aload 12
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 10
aload 12
iload 7
iload 9
iload 8
invokevirtual java/util/Calendar/set(III)V
lload 10
aload 12
invokevirtual java/util/Calendar/getTimeInMillis()J
lsub
ldc2_w 86400000L
ldiv
l2i
iconst_2
iadd
istore 4
iload 4
istore 3
iload 4
iflt L0
iload 4
istore 3
iload 4
iconst_4
if_icmpgt L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
ifnull L6
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/isAdded()Z
ifeq L6
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/showBirthday()V
iload 4
istore 3
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
ifnull L7
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/isAdded()Z
ifeq L7
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
iload 3
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/setData(IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
L2:
aload 12
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
aload 12
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
goto L3
L4:
iload 6
istore 3
iload 5
iconst_1
if_icmpne L5
iload 6
istore 3
iload 4
iconst_3
if_icmpge L5
iload 6
istore 3
iload 9
bipush 12
if_icmpne L5
iload 6
istore 3
iload 8
bipush 29
if_icmple L5
iload 6
iconst_1
iadd
istore 3
goto L5
L6:
ldc "CHAT"
ldc "mheadFragment not attached"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iload 4
istore 3
goto L0
L7:
ldc "CHAT"
ldc "mflowerFragment not attached"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 13
.limit stack 4
.end method

.method protected addAdditionFrament(Landroid/support/v4/app/FragmentTransaction;)V
aload 0
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
ldc "edittextvalue"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/content Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 2
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/setArguments(Landroid/os/Bundle;)V
aload 0
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "fid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/setArguments(Landroid/os/Bundle;)V
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/CONTENT_FLOWER I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFlowerFragment Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public createPopQuickReply()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/createPopQuickReply(J)V
return
.limit locals 1
.limit stack 3
.end method

.method public getGeneralId()J
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method protected getParam(Landroid/os/Bundle;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/messageType I
L0:
aload 0
aload 1
ldc "fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
L1:
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
aload 1
ldc "forward_type"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
ldc "forward_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
L4:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
iconst_1
if_icmpne L5
aload 0
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/repostMsgId Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/repostMsgId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
ldc "CHAT"
ldc "get transmit key empty"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/finish()V
L7:
iconst_0
ireturn
L2:
astore 1
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/finish()V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
L5:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
iconst_2
if_icmpne L7
aload 0
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdFilePath Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdFilePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
ldc "CHAT"
ldc "get transmit key empty fwdfile"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/finish()V
iconst_0
ireturn
L3:
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
L6:
aload 1
ldc "quick_reply_type"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L8
aload 0
aload 1
ldc "quick_reply_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mQuickReplyType I
L8:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/name Ljava/lang/String;
L9:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public onClickSwitchBtn()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onPause()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onPause()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mMsgPuller Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mMsgPuller Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/stop()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onResume()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/getLoginPoint(J)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsMyFolling(Landroid/content/Context;J)Z 3
istore 1
aload 0
invokestatic java/lang/System/currentTimeMillis()J
invokestatic com/nd/android/u/chatUiUtils/TimeUtils/GetDate(J)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/today Ljava/lang/String;
iload 1
ifeq L3
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/today Ljava/lang/String;
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/needPullerMessageTip(Ljava/lang/String;)Z
ifne L4
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pullerMessageTip_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/isContains(Ljava/lang/String;)Z
ifne L3
L4:
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pullerMessageTip_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/today Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mMsgPuller Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
ifnonnull L5
aload 0
new com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller
dup
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mMsgPuller Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
L5:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mMsgPuller Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/start(Landroid/content/Context;J)V
L3:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
iconst_2
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdFilePath Ljava/lang/String;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/SendImageUtil/saveAndCompressBitmap(Ljava/lang/String;)Ljava/io/File;
astore 2
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$2
dup
aload 0
aload 2
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$2/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;Ljava/io/File;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
aload 0
ldc ""
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdFilePath Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mFwdType I
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 5
.end method

.method public onStart()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onStart()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
ldc2_w 10003057L
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
ldc2_w 666666666L
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
ldc2_w 999999999L
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
ldc2_w 777777777L
lcmp
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getFlowerAndBirthdayInfo(J)V
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/subFriendStatus(J)V
return
.limit locals 1
.limit stack 4
.end method

.method public refresh()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/refresh()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "fid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
ldc com/nd/android/u/ui/activity/chat_config/ChatConfigActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public showPopQuickReply(II)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getIntent()Landroid/content/Intent;
ldc "fid"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
i2l
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/createPopQuickReply(J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/listener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/setOnItemSelectListener(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;)V
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getstatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/CONTENT_CONTAINER_ID I
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/findViewById(I)Landroid/view/View;
iload 1
iload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/show(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method
