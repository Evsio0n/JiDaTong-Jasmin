.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/MessageAdapter
.super android/widget/BaseAdapter

.field public 'displayTypingTip' Z

.field protected 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"

.field protected 'mContext' Landroid/app/Activity;

.field private 'needMerge' Z

.field private 'posList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Integer;>;"

.field private 'viewMap' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/controller/innerInterface/IChatListItem;Ljava/lang/Integer;>;"

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/needMerge Z
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/viewMap Ljava/util/Map;
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
return
.limit locals 2
.limit stack 3
.end method

.method public findNormalItem()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/needMerge Z
ifne L0
L1:
return
L0:
iconst_0
istore 2
iconst_0
istore 4
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
iconst_0
istore 1
L2:
iload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 5
iload 2
iconst_1
iadd
istore 2
iload 1
ifeq L3
iload 2
iconst_5
irem
ifne L4
L3:
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
istore 3
L5:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 4
goto L2
L4:
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isChild()Z 0
ifne L6
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
istore 3
goto L5
L6:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 6
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isChild()Z 0
ifeq L7
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/uidFrom J
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/uidFrom J
lcmp
ifeq L8
L7:
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
istore 3
goto L5
L8:
iload 4
istore 3
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCreateDate()J 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCreateDate()J 0
lsub
ldc2_w 300L
lcmp
ifle L5
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
istore 3
goto L5
.limit locals 7
.limit stack 4
.end method

.method public findViewByPostion(I)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aconst_null
astore 3
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/viewMap Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 4
L0:
aload 3
astore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
iload 1
if_icmpne L0
aload 2
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IChatListItem
astore 2
L1:
aload 2
areturn
.limit locals 5
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
ifne L1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
ifeq L0
iload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpne L0
new com/nd/android/u/ui/widge/ChatListItemView_TypingTip
dup
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
invokespecial com/nd/android/u/ui/widge/ChatListItemView_TypingTip/<init>(Landroid/content/Context;)V
areturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 3
aload 2
ifnonnull L1
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isChild()Z 0
ifeq L2
new com/nd/android/u/ui/widge/ChatListItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
invokespecial com/nd/android/u/ui/widge/ChatListItemView/<init>(Landroid/content/Context;)V
astore 2
L3:
aload 2
instanceof com/nd/android/u/ui/widge/ChatListItemView
ifeq L4
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/setMerger(Z)V
L4:
aload 2
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/viewMap Ljava/util/Map;
aload 2
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/needMerge Z
ifeq L5
aload 2
instanceof com/nd/android/u/ui/widge/ChatListItemView
ifeq L6
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L7
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/mergeMessage()V
L7:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
iload 1
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L8
iload 1
iconst_1
iadd
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/getCount()I
if_icmpne L9
L8:
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
bipush 8
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/hideOrShowBottom(I)V
L6:
aload 2
checkcast android/view/View
areturn
L2:
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
aload 3
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
astore 2
goto L3
L1:
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isChild()Z 0
ifeq L10
aload 2
instanceof com/nd/android/u/ui/widge/ChatListItemView
ifeq L11
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
astore 2
goto L3
L11:
new com/nd/android/u/ui/widge/ChatListItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
invokespecial com/nd/android/u/ui/widge/ChatListItemView/<init>(Landroid/content/Context;)V
astore 2
goto L3
L10:
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/mContext Landroid/app/Activity;
aload 3
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
astore 2
goto L3
L9:
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/hideOrShowBottom(I)V
goto L6
L5:
aload 2
instanceof com/nd/android/u/ui/widge/ChatListItemView
ifeq L6
aload 2
checkcast com/nd/android/u/ui/widge/ChatListItemView
bipush 8
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/hideOrShowBottom(I)V
goto L6
.limit locals 4
.limit stack 4
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setNeedMerge(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/needMerge Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/posList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method
