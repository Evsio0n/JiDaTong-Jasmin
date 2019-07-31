.bytecode 50.0
.class public final synchronized enum com/nd/android/u/ChatEntry
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/ChatEntry;>;"
.inner class inner com/nd/android/u/ChatEntry$1

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/ChatEntry;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/ChatEntry;

.field public 'chatCallOtherModel_UI' Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;

.field public 'chatOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
new com/nd/android/u/ChatEntry
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/ChatEntry/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
iconst_1
anewarray com/nd/android/u/ChatEntry
dup
iconst_0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
aastore
putstatic com/nd/android/u/ChatEntry/$VALUES [Lcom/nd/android/u/ChatEntry;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aconst_null
putfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/SdkParaSupplier
dup
invokespecial com/nd/android/u/imSdk/SdkParaSupplier/<init>()V
putfield ims/IMSdkEntry/sdkDataSupplier Lims/outInterface/ISdkParaSupplier;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/CommonNotifyImpl
dup
invokespecial com/nd/android/u/imSdk/CommonNotifyImpl/<init>()V
putfield ims/IMSdkEntry/commonNotify Lims/outInterface/ICommonNotify;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/PersonMessageReceiver
dup
invokespecial com/nd/android/u/imSdk/PersonMessageReceiver/<init>()V
putfield ims/IMSdkEntry/personMsgNotify Lims/outInterface/IPersonMessageNotify;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/GroupFeedbackReceiver
dup
invokespecial com/nd/android/u/imSdk/GroupFeedbackReceiver/<init>()V
putfield ims/IMSdkEntry/groupFeedbackNotify Lims/outInterface/IGroupFeedbackNotify;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/GroupMessageReceiver
dup
invokespecial com/nd/android/u/imSdk/GroupMessageReceiver/<init>()V
putfield ims/IMSdkEntry/groupMsgNotify Lims/outInterface/IGroupMsgNotify;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
new com/nd/android/u/imSdk/GroupSystemMsgReceiver
dup
invokespecial com/nd/android/u/imSdk/GroupSystemMsgReceiver/<init>()V
putfield ims/IMSdkEntry/groupSystemMsgNotify Lims/outInterface/IGroupSystemMsgNotify;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
putfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
iconst_0
putfield ims/IMSdkEntry/isVerifySDK Z
return
.limit locals 3
.limit stack 3
.end method

.method private registChatBottomFunction()V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_Smiley
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_Smiley/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_Photo
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_Photo/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_Camera
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_Camera/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_Geolocation
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_Geolocation/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_File
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_File/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
new com/nd/android/u/ui/chatBottomFunction/BottomFunction_Shake
dup
invokespecial com/nd/android/u/ui/chatBottomFunction/BottomFunction_Shake/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
return
.limit locals 1
.limit stack 3
.end method

.method private registContactCreator()V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_0
new com/nd/android/u/ui/contactCreator/PersonContactCreator
dup
invokespecial com/nd/android/u/ui/contactCreator/PersonContactCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactFactory/registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_1
new com/nd/android/u/ui/contactCreator/GroupContactCreator
dup
invokespecial com/nd/android/u/ui/contactCreator/GroupContactCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactFactory/registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_3
new com/nd/android/u/ui/contactCreator/AppContactCreator
dup
invokespecial com/nd/android/u/ui/contactCreator/AppContactCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactFactory/registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_2
new com/nd/android/u/ui/contactCreator/SystemContactCreator
dup
invokespecial com/nd/android/u/ui/contactCreator/SystemContactCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactFactory/registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
return
.limit locals 1
.limit stack 4
.end method

.method private registLongclickMenu()V
getstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/contact/ContactLongClickMenu_Del
dup
invokespecial com/nd/android/u/ui/longClickMenu/contact/ContactLongClickMenu_Del/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactLongClickMenuFactory/addMessageMenuItem(Lcom/nd/android/u/controller/innerInterface/IContactLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchLoudspeaker
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchLoudspeaker/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemDelete
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemDelete/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend
dup
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
return
.limit locals 1
.limit stack 3
.end method

.method private registMessageCreator()V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_0
new com/nd/android/u/ui/messageCreator/PersonMessageCreator
dup
invokespecial com/nd/android/u/ui/messageCreator/PersonMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageFactory/registMessageCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_2
new com/nd/android/u/ui/messageCreator/SystemMessageCreator
dup
invokespecial com/nd/android/u/ui/messageCreator/SystemMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageFactory/registMessageCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_1
new com/nd/android/u/ui/messageCreator/GroupMessageCreator
dup
invokespecial com/nd/android/u/ui/messageCreator/GroupMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageFactory/registMessageCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
return
.limit locals 1
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/ChatEntry;
ldc com/nd/android/u/ChatEntry
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/ChatEntry
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/ChatEntry;
getstatic com/nd/android/u/ChatEntry/$VALUES [Lcom/nd/android/u/ChatEntry;
invokevirtual [Lcom/nd/android/u/ChatEntry;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/ChatEntry;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clearChatRelative()V
new java/lang/Thread
dup
new com/nd/android/u/ChatEntry$1
dup
aload 0
invokespecial com/nd/android/u/ChatEntry$1/<init>(Lcom/nd/android/u/ChatEntry;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/cancelNotify()V
return
.limit locals 1
.limit stack 5
.end method

.method public closeChatDb()V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/clear()V
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/business/db/UDatabase/close()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public exitSystemIMS(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/ChatEntry/clearChatRelative()V
aload 0
invokevirtual com/nd/android/u/ChatEntry/closeChatDb()V
invokestatic com/product/android/business/login/LoginFlag/saveEXITEnumType()V
invokestatic ims/IMSdk/logoutIMS()V
return
.limit locals 2
.limit stack 1
.end method

.method public init(Landroid/content/Context;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
aload 1
invokevirtual ims/IMSdkEntry/init(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/ChatEntry/initResMapper()V
getstatic ims/outInterface/MessageParserFactory/INSTANCE Lims/outInterface/MessageParserFactory;
invokevirtual ims/outInterface/MessageParserFactory/registDefault()V
aload 0
invokespecial com/nd/android/u/ChatEntry/registMessageCreator()V
aload 0
invokespecial com/nd/android/u/ChatEntry/registChatBottomFunction()V
aload 0
invokespecial com/nd/android/u/ChatEntry/registLongclickMenu()V
aload 0
invokespecial com/nd/android/u/ChatEntry/registContactCreator()V
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/registDefault()V
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_3
new com/nd/android/u/business4nd/UploadGroupFileCreator
dup
invokespecial com/nd/android/u/business4nd/UploadGroupFileCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/registShareFileInterface(ILcom/nd/android/u/controller/outInterface/IShareFileCreator;)V
getstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
iconst_0
new com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier
dup
invokespecial com/nd/android/u/controller/groupSupplier/DefaultGroupSupplier/<init>()V
invokevirtual com/nd/android/u/controller/factory/GroupFactory/registGroupsupplier(ILcom/nd/android/u/controller/innerInterface/IGroupSupplier;)V
getstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
bipush 20
new com/nd/android/u/controller/groupSupplier/UnitGroupSupplier
dup
invokespecial com/nd/android/u/controller/groupSupplier/UnitGroupSupplier/<init>()V
invokevirtual com/nd/android/u/controller/factory/GroupFactory/registGroupsupplier(ILcom/nd/android/u/controller/innerInterface/IGroupSupplier;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
new com/nd/android/u/ui/messageUtils/StringMessageAnalyser
dup
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/<init>()V
putfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
ldc ims/cmd/PersonCmd
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
ldc ims/cmd/GroupCmd
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
ldc com/nd/android/u/ui/activity/message_chat/PopMessageActivity
putfield com/nd/android/u/controller/ChatConfiguration/popMessageActivity Ljava/lang/Class;
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/INSTANCE Lcom/nd/android/u/controller/factory/DataSupplierFactory;
iconst_0
new com/nd/android/u/controller4xy/XYPeronDataSupplierCreator
dup
invokespecial com/nd/android/u/controller4xy/XYPeronDataSupplierCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/DataSupplierFactory/registDataSupplier(ILcom/nd/android/u/controller/outInterface/IDataSupplierCreator;)V
return
.limit locals 2
.limit stack 4
.end method

.method public initResMapper()V
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$drawable/uu_1 I
putfield com/nd/android/u/controller/ResMapper/NOTI_ICON I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$raw/breeding I
putfield com/nd/android/u/controller/ResMapper/NOTI_BREEDING I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/notify_remain I
putfield com/nd/android/u/controller/ResMapper/NOTI_REMAIN_MSG I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/chat_audio I
putfield com/nd/android/u/controller/ResMapper/MSG_AUDIO I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/chat_img I
putfield com/nd/android/u/controller/ResMapper/MSG_IMG I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/chat_vidio I
putfield com/nd/android/u/controller/ResMapper/MSG_VIDEO I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/chat_file I
putfield com/nd/android/u/controller/ResMapper/MSG_FILE I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/app_msg I
putfield com/nd/android/u/controller/ResMapper/MSG_APP I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/broadcase I
putfield com/nd/android/u/controller/ResMapper/MSG_BROADCAST I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/system_msg I
putfield com/nd/android/u/controller/ResMapper/MSG_SYSTEM I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/app_name I
putfield com/nd/android/u/controller/ResMapper/APP_NAME I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/chat_resending I
putfield com/nd/android/u/controller/ResMapper/OP_RESEND I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/cancel I
putfield com/nd/android/u/controller/ResMapper/OP_CANCEL I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/clientservicefile I
putfield com/nd/android/u/controller/ResMapper/OP_PC_RECEIVED_FILE I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/group_dissolved I
putfield com/nd/android/u/controller/ResMapper/GROUP_DISMISS I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/manager_move_u_out I
putfield com/nd/android/u/controller/ResMapper/GROUP_KICKED I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/member_quit I
putfield com/nd/android/u/controller/ResMapper/GROUP_MEMBER_QUIT I
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/chat/R$string/self_quit I
putfield com/nd/android/u/controller/ResMapper/GROUP_SELF_QUIT I
return
.limit locals 1
.limit stack 2
.end method

.method public loginIMS()V
invokestatic ims/IMSdk/loginIMS()V
return
.limit locals 1
.limit stack 0
.end method

.method public logoutIMS()V
invokestatic ims/IMSdk/logoutIMS()V
return
.limit locals 1
.limit stack 0
.end method
