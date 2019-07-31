.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/appCreator/TaskMessageCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getTaskApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
aload 1
getstatic com/product/android/business/config/Configuration/PAIHANGCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/<init>()V
areturn
L0:
aload 1
getstatic com/product/android/business/config/Configuration/FLOWERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/<init>()V
areturn
L1:
aload 1
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/<init>()V
areturn
L2:
aload 1
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/<init>()V
areturn
L3:
aload 1
getstatic com/product/android/business/config/Configuration/SYSADD_LOTTER_GIFT_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/<init>()V
areturn
L4:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
aload 1
instanceof com/nd/android/u/bean4xy/DisplayMessage_App
ifeq L0
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_App
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
astore 1
aload 1
getstatic com/product/android/business/config/Configuration/PAIHANGCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_App
areturn
L1:
aload 1
getstatic com/product/android/business/config/Configuration/FLOWERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc com/nd/android/u/cloud/customapplication/activity/ChatActivity_Flower
areturn
L2:
aload 1
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
areturn
L3:
aload 1
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
ldc com/nd/android/u/cloud/customapplication/activity/ChatActivity_Lottory
areturn
L4:
aload 1
getstatic com/product/android/business/config/Configuration/SYSADD_LOTTER_GIFT_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_App
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 2
invokespecial com/nd/android/u/cloud/customapplication/appCreator/TaskMessageCreator/getTaskApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
astore 3
aload 3
ifnull L0
aload 3
aload 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 3
iload 1
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
L0:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aconst_null
astore 4
aload 2
instanceof com/nd/android/u/bean4xy/DisplayMessage_App
ifeq L0
aload 2
checkcast com/nd/android/u/bean4xy/DisplayMessage_App
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
astore 4
aload 4
getstatic com/product/android/business/config/Configuration/PAIHANGCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/<init>(Landroid/content/Context;)V
astore 1
L2:
aload 1
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
aload 1
astore 4
L0:
aload 4
areturn
L1:
aload 4
getstatic com/product/android/business/config/Configuration/FLOWERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/<init>(Landroid/content/Context;)V
astore 1
goto L2
L3:
aload 4
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
new com/nd/android/u/ui/widge/ChatListItemView_App
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/<init>(Landroid/content/Context;)V
astore 1
goto L2
L4:
aload 4
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
new com/nd/android/u/ui/widge/ChatListItemView_App
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/<init>(Landroid/content/Context;)V
astore 1
goto L2
L5:
aload 4
getstatic com/product/android/business/config/Configuration/SYSADD_LOTTER_GIFT_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/<init>(Landroid/content/Context;)V
astore 1
goto L2
L6:
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method
