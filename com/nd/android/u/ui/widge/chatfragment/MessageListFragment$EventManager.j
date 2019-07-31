.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager
.super com/product/android/business/manager/MotionEventManager
.inner class private EventManager inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager outer com/nd/android/u/ui/widge/chatfragment/MessageListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method public <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
aload 2
invokespecial com/product/android/business/manager/MotionEventManager/<init>(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method private getPos(FF)I
iconst_0
istore 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
instanceof com/nd/android/u/ui/widge/ScrollListView
ifeq L0
iconst_1
istore 3
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
fload 1
f2i
fload 2
f2i
invokevirtual com/nd/android/u/ui/widge/ScrollListView/pointToPosition(II)I
iload 3
isub
ireturn
.limit locals 4
.limit stack 3
.end method

.method private zoom(FF)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
fload 1
fload 2
fmul
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/setChatTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
return
.limit locals 3
.limit stack 3
.end method

.method protected onClick()Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)I
iconst_2
if_icmpne L0
L0:
aload 0
invokespecial com/product/android/business/manager/MotionEventManager/onClick()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onDoubleTouchTown()Z
aload 0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/setSourceComputeValue(F)V
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onLongClick(FF)Z
aload 0
fload 1
fload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/getPos(FF)I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
ifnull L0
iload 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
iload 3
iflt L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
iload 3
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/findViewByPostion(I)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
astore 4
aload 4
instanceof com/nd/android/u/ui/widge/ChatListItemView
ifeq L1
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L2
aload 4
checkcast android/view/View
getstatic com/nd/android/u/chat/R$id/llMyContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 4
L3:
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 80
if_icmpne L4
iconst_0
ireturn
L2:
aload 4
checkcast android/view/View
getstatic com/nd/android/u/chat/R$id/llOthersContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 4
goto L3
L1:
aload 4
checkcast android/view/View
astore 4
goto L3
L4:
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 5
new com/nd/android/u/ui/longClickMenu/LongClickTopWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 4
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow/<init>(Landroid/app/Activity;Landroid/view/View;Z)V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 8
.end method

.method protected onMove(FFFF)Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener/onDismissOtherFragment()V 0
L0:
aload 0
fload 1
fload 2
fload 3
fload 4
invokespecial com/product/android/business/manager/MotionEventManager/onMove(FFFF)Z
ireturn
.limit locals 5
.limit stack 5
.end method

.method protected onZoom(FF)Z
aload 0
fload 1
fload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/zoom(FF)V
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method
