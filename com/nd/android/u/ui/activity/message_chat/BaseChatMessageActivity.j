.bytecode 50.0
.class public synchronized abstract com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener
.implements com/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener
.implements com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
.inner class inner com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1

.field protected static final 'BOTTOM_CONTAINER_ID' I

.field protected static final 'CONTENT_CONTAINER_ID' I

.field protected static final 'CONTENT_FLOWER' I

.field protected static final 'HEAD_CONTAINER_ID' I

.field protected static final 'PSP_BOTTOM_CONTAINER_ID' I

.field protected 'appcode' Ljava/lang/String;

.field protected 'content' Ljava/lang/String;

.field protected 'generalId' J

.field protected 'groupType' I

.field private 'itemSelectListener' Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;

.field protected 'mAudioModeNotice' Lcom/nd/android/u/ui/widge/PopAudioModeNotice;

.field protected 'mBottomFragment' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.field protected 'mDataSupplier' Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;

.field protected 'mFwdFilePath' Ljava/lang/String;

.field protected 'mFwdType' I

.field protected 'mMessageListFragment' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.field protected 'mPopQuickReply' Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;

.field protected 'mQuickReplyType' I

.field protected 'messageType' I

.field protected 'mheadFragment' Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;

.field protected 'mpubNumBottomFragment' Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;

.field protected 'msgLayout' Lcom/nd/android/u/ui/widge/ResizeLayout;

.field protected 'name' Ljava/lang/String;

.field protected 'repostMsgId' Ljava/lang/String;

.method static <clinit>()V
getstatic com/nd/android/u/chat/R$id/head_container I
putstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/HEAD_CONTAINER_ID I
getstatic com/nd/android/u/chat/R$id/content_container I
putstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/CONTENT_CONTAINER_ID I
getstatic com/nd/android/u/chat/R$id/bottom_container I
putstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/BOTTOM_CONTAINER_ID I
getstatic com/nd/android/u/chat/R$id/content_flower I
putstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/CONTENT_FLOWER I
getstatic com/nd/android/u/chat/R$id/psp_bottom_container I
putstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/PSP_BOTTOM_CONTAINER_ID I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mQuickReplyType I
aload 0
new com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1/<init>(Lcom/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity;)V
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/itemSelectListener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
return
.limit locals 1
.limit stack 4
.end method

.method private initDataSupplier()V
aload 0
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/INSTANCE Lcom/nd/android/u/controller/factory/DataSupplierFactory;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/generalId J
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/groupType I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/appcode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/DataSupplierFactory/getDataSupplier(IJILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/clearUnreadCount()V 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackAllMessage()V 0
return
.limit locals 1
.limit stack 7
.end method

.method protected addAdditionFrament(Landroid/support/v4/app/FragmentTransaction;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected addDefaultFragment(Ljava/lang/String;)V
aload 0
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
iconst_1
if_icmpne L1
L0:
aload 2
ldc "SHOW_STATUS"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L2:
aload 2
ldc "title"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "resid"
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getRightButtonRes()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/setArguments(Landroid/os/Bundle;)V
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "repost_data"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/repostMsgId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 1
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/setArguments(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/HEAD_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mheadFragment Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/CONTENT_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/addAdditionFrament(Landroid/support/v4/app/FragmentTransaction;)V
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L1:
aload 2
ldc "SHOW_STATUS"
iconst_0
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
goto L2
.limit locals 3
.limit stack 4
.end method

.method protected createPopQuickReply(J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/getmReplyType()I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mQuickReplyType I
if_icmpeq L1
L0:
aload 0
new com/nd/android/u/ui/widge/chatfragment/PopQuickReply
dup
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mQuickReplyType I
lload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/PopQuickReply/<init>(Landroid/content/Context;IJ)V
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/itemSelectListener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/setOnItemSelectListener(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/getmReplyType()I
iconst_2
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getIntent()Landroid/content/Intent;
ldc "QUICKREPLY"
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/setQuickReply([Ljava/lang/String;)V
L1:
return
.limit locals 3
.limit stack 7
.end method

.method public finish()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/finish()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aconst_null
putfield com/nd/android/u/controller/ChatGlobalVariable/dataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/clearData()V
return
.limit locals 1
.limit stack 2
.end method

.method public getDataSupplier()Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract getParam(Landroid/os/Bundle;)Z
.end method

.method protected getRightButtonRes()I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
iconst_1
if_icmpne L0
getstatic com/nd/android/u/chat/R$drawable/btn_group_detail I
ireturn
L0:
getstatic com/nd/android/u/chat/R$drawable/bt_detail I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public leftBtnHandle()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/chat/R$layout/activity_new_chat I
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
aload 2
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/finish()V
return
L0:
aload 0
aload 2
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/name Ljava/lang/String;
aload 0
aload 2
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getParam(Landroid/os/Bundle;)Z
ifne L1
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/finish()V
return
L1:
aload 1
ifnull L2
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/refreshViewByChanged()V
L2:
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/name Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/addDefaultFragment(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/initDataSupplier()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnonnull L3
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "null data supplier:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/messageType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/generalId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",grouptype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",appcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/appcode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/finish()V
L3:
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/specialProccess()V
return
.limit locals 3
.limit stack 4
.end method

.method public onDismissOtherFragment()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAdded()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onNewIntent(Landroid/content/Intent;)V
aload 1
ldc "content"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "content"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/content Ljava/lang/String;
L0:
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L1
aload 0
aload 1
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getParam(Landroid/os/Bundle;)Z
ifne L2
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/finish()V
L1:
return
L2:
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/initDataSupplier()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/refreshViewByChanged()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/name Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/addDefaultFragment(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onPause()V
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlayAndSetCureentNull()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onResume()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
putfield com/nd/android/u/controller/ChatGlobalVariable/dataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
return
.limit locals 1
.limit stack 2
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onStart()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
iconst_0
putfield com/nd/android/u/controller/ChatGlobalVariable/isOpenCamera Z
return
.limit locals 1
.limit stack 2
.end method

.method protected refreshViewByChanged()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 1
aload 1
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/CONTENT_CONTAINER_ID I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/ui/widge/chatfragment/MessageListFragment
astore 3
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/BOTTOM_CONTAINER_ID I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/ui/widge/chatfragment/BottomFragment
astore 4
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/PSP_BOTTOM_CONTAINER_ID I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
astore 5
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/CONTENT_FLOWER I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/ui/widge/chatfragment/FlowerFragment
astore 6
aload 3
ifnull L0
aload 2
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L0:
aload 4
ifnull L1
aload 2
aload 4
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L1:
aload 6
ifnull L2
aload 2
aload 6
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L2:
aload 5
ifnull L3
aload 2
aload 5
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L3:
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/removeHeaderOnNewIntent(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
.limit locals 7
.limit stack 3
.end method

.method protected removeHeaderOnNewIntent(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/HEAD_CONTAINER_ID I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/ui/widge/chatfragment/HeadFragment
astore 1
aload 1
ifnull L0
aload 2
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method

.method protected specialProccess()V
return
.limit locals 1
.limit stack 0
.end method
