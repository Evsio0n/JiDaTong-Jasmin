.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.field public static final 'COMMUNITYCODE' Ljava/lang/String; = "1113"

.field public static final 'FRIEND_RECOMMAND' Ljava/lang/String; = "1112"

.field public static final 'NEW_FANS' Ljava/lang/String; = "5060"

.field public static final 'TEAMCODE' Ljava/lang/String; = "5061"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getMyApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
aload 1
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/<init>()V
areturn
L0:
aload 1
getstatic com/product/android/business/config/Configuration/GIFTGIVERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayBless
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayBless/<init>()V
areturn
L1:
aload 1
ldc "1112"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Friend
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Friend/<init>()V
areturn
L2:
aload 1
ldc "5060"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/<init>()V
areturn
L3:
aload 1
ldc "1113"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/<init>()V
areturn
L4:
aload 1
ldc "5061"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/<init>()V
areturn
L5:
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
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity
areturn
L1:
aload 1
getstatic com/product/android/business/config/Configuration/GIFTGIVERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
areturn
L2:
aload 1
ldc "1112"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
ldc com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity
areturn
L3:
aload 1
ldc "5061"
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
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/getMyApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
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
aload 2
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team
ifeq L0
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/<init>(Landroid/content/Context;)V
areturn
L0:
new com/nd/android/u/ui/widge/ChatListItemView_App
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
