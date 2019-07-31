.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/AppMessageFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/AppMessageFactory;>;"

.field public static final 'APP_CARD' Ljava/lang/String; = "APP_CARD"

.field public static final 'APP_CARD_ID' I = -2


.field public static final 'DEFAULT' I = -1


.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/AppMessageFactory;

.field public static final 'EXTRA_CODE' Ljava/lang/String; = "_APPCARD"

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/AppMessageFactory;

.field private 'mAppCreatorMap' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/outInterface/IMessageCreator;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/AppMessageFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/AppMessageFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aastore
putstatic com/nd/android/u/controller/factory/AppMessageFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/AppMessageFactory;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
return
.limit locals 3
.limit stack 3
.end method

.method private analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
aload 1
ifnull L4
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L4:
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method private getAppCardMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
bipush -2
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 3
aload 3
ifnonnull L0
aconst_null
astore 3
L1:
aload 3
areturn
L0:
aload 3
iload 1
aload 2
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 2
astore 4
aload 4
astore 3
aload 4
ifnull L1
aload 4
astore 3
aload 4
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L1
aload 4
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/isPromptAppMessage(ILjava/lang/String;)Z
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isReceiveMessage Z
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method private isPromptAppMessage(ILjava/lang/String;)Z
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 3
aload 5
invokestatic com/nd/android/u/allCommonUtils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/nd/android/u/allCommonUtils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
lload 3
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/nd/android/u/allCommonUtils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ireturn
.limit locals 6
.limit stack 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/AppMessageFactory;
ldc com/nd/android/u/controller/factory/AppMessageFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/AppMessageFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/AppMessageFactory;
getstatic com/nd/android/u/controller/factory/AppMessageFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/AppMessageFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/AppMessageFactory
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public createAppMessage(Ljava/lang/String;JIIJJ)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "empty app data:uidFrom="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L0:
iload 5
tableswitch 100
L1
L2
default : L3
L3:
aconst_null
areturn
L1:
aload 0
aload 1
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 12
aload 12
astore 11
aload 12
ifnonnull L4
aload 0
aload 1
ldc "\\\\"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 12
aload 12
astore 11
aload 12
ifnonnull L4
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "error app json data:uidFrom="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",data="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L4:
aload 0
aload 11
ldc "appid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
aload 11
ldc "permcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 11
L5:
aload 11
ifnull L6
aload 11
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L7
aload 11
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isReceiveMessage Z
ifne L7
aconst_null
areturn
L2:
aload 1
ldc "body"
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "appid"
aastore
dup
iconst_1
ldc "permcode"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 11
aload 11
ifnull L8
aload 11
arraylength
iconst_2
if_icmpge L9
L8:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "error app xml data:uidFrom="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",data="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L9:
aload 11
iconst_0
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 10
aload 11
iconst_1
aaload
astore 12
aload 1
ldc "app"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "business"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 13
aconst_null
astore 11
aload 13
ifnull L10
aload 13
arraylength
ifne L11
L10:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "error app xml data:uidFrom="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",msgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",data="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L12:
aload 11
ifnull L13
aload 11
ldc "APP_CARD"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L13
aload 0
iload 10
aload 12
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/getAppCardMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 11
goto L5
L11:
aload 13
iconst_0
aaload
astore 11
goto L12
L13:
aload 0
iload 10
aload 12
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 11
goto L5
L7:
aload 11
lload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
aload 11
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 11
iload 4
i2l
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 11
iload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 11
lload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMultiId(J)V 2
aload 11
lload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 11
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 11
areturn
L6:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "unknow app:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 11
areturn
.limit locals 14
.limit stack 6
.end method

.method public createGroupxmlMessage(Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 1
ldc "body"
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "appid"
aastore
dup
iconst_1
ldc "permcode"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 9
aload 9
ifnull L1
aload 9
arraylength
iconst_2
if_icmpge L2
L1:
aconst_null
areturn
L2:
aload 9
iconst_0
aaload
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 8
aload 9
iconst_1
aaload
astore 9
aload 1
ldc "app"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "business"
aastore
invokestatic com/nd/android/u/chatUtil/ChatXmlUtils/getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
astore 10
aload 10
ifnull L3
aload 10
arraylength
ifeq L3
aload 10
iconst_0
aaload
astore 10
L3:
aload 0
iload 8
aload 9
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 9
aload 9
ifnull L4
aload 9
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L5
aload 9
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isReceiveMessage Z
ifne L5
aconst_null
areturn
L5:
aload 9
lload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 9
iload 4
i2l
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 9
iload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
aload 2
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
iload 3
putfield ims/bean/NDMessage/groupType I
aload 9
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 9
areturn
L4:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "unknow app:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 9
areturn
.limit locals 11
.limit stack 6
.end method

.method public getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 2
ldc "_APPCARD"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/getAppCardMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 3
L1:
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 4
aload 4
astore 3
aload 4
ifnonnull L2
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iconst_m1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 4
aload 4
astore 3
aload 4
ifnonnull L2
aconst_null
areturn
L2:
aload 3
iload 1
aload 2
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 2
astore 4
aload 4
astore 3
aload 4
ifnull L1
aload 4
astore 3
aload 4
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L1
aload 4
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/isPromptAppMessage(ILjava/lang/String;)Z
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/isReceiveMessage Z
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
aload 1
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
istore 2
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
ldc "_APPCARD"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
bipush -2
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 3
aload 3
ifnull L1
aload 3
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class; 1
areturn
L1:
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iload 2
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class; 1
areturn
L2:
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iconst_m1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 3
aload 3
ifnull L0
aload 3
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class; 1
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public getGroupAppMessage(Ljava/lang/String;IJIILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 7
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 9
aload 9
astore 8
aload 9
ifnonnull L0
aload 0
aload 7
ldc "\\\\"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/controller/factory/AppMessageFactory/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 9
aload 9
astore 8
aload 9
ifnonnull L0
aconst_null
areturn
L0:
aload 0
aload 8
ldc "appid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
aload 8
ldc "permcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 8
aload 8
ifnonnull L1
aconst_null
areturn
L1:
aload 8
aload 7
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
aload 8
lload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMsgId(J)V 2
aload 8
iload 6
i2l
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCreateDate(J)V 2
aload 8
iload 5
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setMessageContentType(I)V 1
aload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
aload 1
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 8
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
iload 2
putfield ims/bean/NDMessage/groupType I
aload 8
areturn
.limit locals 10
.limit stack 4
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
instanceof com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
ifeq L0
aload 2
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appId I
istore 3
aload 2
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/appCode Ljava/lang/String;
ldc "_APPCARD"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
bipush -2
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 4
aload 4
ifnull L1
aload 4
aload 1
aload 2
iconst_0
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem; 3
areturn
L1:
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iload 3
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 5
aload 5
astore 4
aload 5
ifnonnull L2
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iconst_m1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 5
aload 5
astore 4
aload 5
ifnonnull L2
aconst_null
areturn
L2:
aload 4
aload 1
aload 2
iconst_0
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem; 3
areturn
L0:
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public registAppCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnonnull L0
aload 0
getfield com/nd/android/u/controller/factory/AppMessageFactory/mAppCreatorMap Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
