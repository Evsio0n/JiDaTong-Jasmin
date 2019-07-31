.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/PublicNumberMain
.super java/lang/Object

.field private static 'mGroupInterface' Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getGroupInerface()Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;
getstatic com/nd/android/u/publicNumber/PublicNumberMain/mGroupInterface Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static init()V
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/PUBLIC_NUMBER_URL Ljava/lang/String;
putstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_5
new com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb
dup
invokespecial com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/registDbCreator(ILcom/nd/android/u/controller/outInterface/IDbCreator;)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
new com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb
dup
invokespecial com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/registDbCreator(ILcom/nd/android/u/controller/outInterface/IDbCreator;)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 102
new com/nd/android/u/publicNumber/business/db/PublicNumberMenuDb
dup
invokespecial com/nd/android/u/publicNumber/business/db/PublicNumberMenuDb/<init>()V
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/registDbCreator(ILcom/nd/android/u/controller/outInterface/IDbCreator;)V
getstatic ims/outInterface/MessageParserFactory/INSTANCE Lims/outInterface/MessageParserFactory;
ldc com/nd/android/u/publicNumber/controller/PublicNumberMessageParser$PublicNumberParseCmd
new com/nd/android/u/publicNumber/controller/PublicNumberMessageParser
dup
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberMessageParser/<init>()V
invokevirtual ims/outInterface/MessageParserFactory/registMessageParser(Ljava/lang/Class;Lims/outInterface/IMessageParserInterface;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_5
new com/nd/android/u/publicNumber/ui/PublicNumberContactCreator
dup
invokespecial com/nd/android/u/publicNumber/ui/PublicNumberContactCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/ContactFactory/registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
new com/nd/android/u/publicNumber/ui/PublicNumberMessageCreator
dup
invokespecial com/nd/android/u/publicNumber/ui/PublicNumberMessageCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/MessageFactory/registMessageCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/INSTANCE Lcom/nd/android/u/controller/factory/DataSupplierFactory;
iconst_5
new com/nd/android/u/publicNumber/ui/PublicNumberDataSupplierCreator
dup
invokespecial com/nd/android/u/publicNumber/ui/PublicNumberDataSupplierCreator/<init>()V
invokevirtual com/nd/android/u/controller/factory/DataSupplierFactory/registDataSupplier(ILcom/nd/android/u/controller/outInterface/IDataSupplierCreator;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 13
new com/nd/android/u/publicNumber/publicNumberInterfaceImpl/PublicNumberCommonInterImpl
dup
invokespecial com/nd/android/u/publicNumber/publicNumberInterfaceImpl/PublicNumberCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
iconst_5
new com/nd/android/u/publicNumber/controller/PublicNumberLoginManager
dup
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberLoginManager/<init>()V
invokevirtual com/nd/android/u/controller/factory/GroupFactory/registGroupsupplier(ILcom/nd/android/u/controller/innerInterface/IGroupSupplier;)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
ldc com/nd/android/u/publicNumber/controller/PublicNumberMessageParser$PublicNumberParseCmd
iconst_5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
iconst_1
putstatic com/product/android/business/config/Configuration/ISEXITPSP Z
return
.limit locals 0
.limit stack 4
.end method

.method public static setGroupInterface(Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;)V
aload 0
putstatic com/nd/android/u/publicNumber/PublicNumberMain/mGroupInterface Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;
return
.limit locals 1
.limit stack 1
.end method
