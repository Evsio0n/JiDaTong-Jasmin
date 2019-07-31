.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/CustomAppCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/product/android/business/config/Configuration/MYAPPID I
new com/nd/android/u/cloud/customapplication/appCreator/CommunityMessageCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/appCreator/CommunityMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/product/android/business/config/Configuration/NEWAPPID I
new com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/product/android/business/config/Configuration/SECRETLOVEAPPID I
new com/nd/android/u/cloud/customapplication/appCreator/SecretLoveMessageCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/appCreator/SecretLoveMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/product/android/business/config/Configuration/TASKAPPID I
new com/nd/android/u/cloud/customapplication/appCreator/TaskMessageCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/appCreator/TaskMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
new com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iconst_m1
aload 0
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
return
.limit locals 1
.limit stack 4
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_App
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aconst_null
astore 3
iload 1
aload 2
invokestatic com/nd/android/u/contact/business/SynOapApp/isExist(ILjava/lang/String;)Z
ifeq L0
new com/nd/android/u/bean4xy/DisplayMessage_App
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
astore 3
L0:
aload 3
ifnull L1
aload 3
aload 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 3
iload 1
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
L1:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
new com/nd/android/u/ui/widge/ChatListItemView_App
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
