.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage
.inner class public static ComplexInfo inner com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo outer com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public

.field public 'complexInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;>;"

.field public 'eventKey' Ljava/lang/String;

.field public 'eventName' Ljava/lang/String;

.field public 'innerId' J

.field public 'mMultimediaInfo' Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;

.field public 'pspChagePart' I

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
iconst_5
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageType I
aload 0
bipush 40
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupType I
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageType I
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
.limit locals 2
.limit stack 3
.end method

.method private analyseSmiley(Ljava/lang/String;)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;)Ljava/util/ArrayList<Ljava/lang/Object;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
aload 2
invokestatic com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fileterFirstImage(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
astore 1
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
aload 2
invokestatic com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fileterFirstImage(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
astore 1
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private createOriMessage()V
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
tableswitch 0
L1
L0
L2
L3
default : L0
L0:
return
L1:
aload 0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/analyseSmiley(Ljava/lang/String;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createTextMessage(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
return
L3:
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fileName Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/duration I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createAudioMessage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L4
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L4
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 257
if_icmpne L4
aload 0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/analyseSmiley(Ljava/lang/String;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createTextMessage(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
return
L4:
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createImgMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method private deleteRecentContact()V
new com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setId(Ljava/lang/String;)V
new com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/<init>(Ljava/lang/String;)V
astore 4
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L0
aload 3
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 3
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastContactTime(J)V
aload 3
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgContentType(I)V
aload 3
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgId(Ljava/lang/String;)V
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
istore 2
iload 2
istore 1
iload 2
tableswitch 3
L1
L2
L3
L1
L3
L2
default : L4
L4:
iload 2
istore 1
L3:
aload 3
iload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgState(I)V
aload 3
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isObjectValid()Z
ifeq L5
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/replaceItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L5:
return
L1:
iconst_1
istore 1
goto L3
L2:
iconst_2
istore 1
goto L3
L0:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 3
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 5
.limit stack 5
.end method

.method private static fileterFirstImage(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
.signature "(Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;)Ljava/lang/String;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ldc "&<img>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 0
ldc "<img>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
iload 2
iflt L3
iload 3
iload 2
if_icmple L3
iload 3
ldc "<img>&"
invokevirtual java/lang/String/length()I
iadd
istore 3
aload 0
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
aload 0
iload 2
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 4
ldc "&<img>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "<img>&"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 5
L0:
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 5
aload 5
iload 2
putfield com/common/android/utils/smiley/Smiley/id I
aload 1
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
aload 0
iload 3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L2:
astore 5
aload 1
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L3:
aload 1
aload 0
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aconst_null
areturn
.limit locals 6
.limit stack 3
.end method

.method private insertRecentContact()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/uidFrom J
lcmp
ifeq L0
iconst_1
istore 1
L1:
new com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createDate J
ldc2_w 1000L
lmul
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastContactTime(J)V
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
ifnonnull L2
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_error_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
L2:
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgContent(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgState(I)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgContentType(I)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/msgId J
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setLastMsgServerId(J)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setId(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/isAck I
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setmAckType(I)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/parentType I
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/setParent(I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
iload 1
bipush 100
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/updateList(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;ZI)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 5
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
iload 1
ifeq L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
L0:
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 2
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 4
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createOriMessage()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/convertToContentValues()Landroid/content/ContentValues;
astore 1
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "extraflag"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "local_mulptid"
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "grouptype"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "filename"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fileName Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "filesize"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "filepath"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "fkey"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fKey Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "wseq"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/wseq I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "acktype"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/ackType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "url"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "reserve"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/thumbnailPath Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "donwload"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/downloadSize J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "total"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "duration"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/duration I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "mulptid"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/multiId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public displayPortrait(Landroid/widget/ImageView;Z)V
iload 2
ifeq L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
return
L0:
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 1
iconst_0
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
return
.limit locals 3
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
instanceof com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
ifne L1
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/msgId J
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/msgId J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/msgId J
lconst_0
lcmp
ifeq L2
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
ifnull L3
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
ifnull L3
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getFile()Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
ifnonnull L7
aload 0
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/getFile()Ljava/io/File;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
L7:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
ifnonnull L8
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
istore 1
L1:
iload 1
tableswitch 7
L3
default : L8
L8:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
areturn
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getType()I
ifne L5
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getResource(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
L4:
goto L8
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L8
L5:
aload 0
aload 0
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getResource(I)Ljava/lang/String;
ldc ""
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultVideoFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mDownloadFile Ljava/io/File;
L6:
goto L8
.limit locals 3
.limit stack 4
.end method

.method public getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResource(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
ifnonnull L0
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/getResource(I)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmMultimediaUrl()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/appendSidUidToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public getThumbnailUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isChild()Z
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
ifnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isValidMessage(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
ifeq L0
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected onDownloadFail(ILjava/lang/String;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/onDownloadFail(ILjava/lang/String;)V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
bipush 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/setExtraflagAndNotify(I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onDownloadProgress(JJ)V
aload 0
bipush 6
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
lconst_0
lcmp
ifne L0
lload 3
lconst_0
lcmp
ifle L0
aload 0
lload 3
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/saveToDb()V
L0:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "download onProgress:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
lconst_0
lcmp
ifle L1
ldc2_w 100L
lload 1
lmul
l2f
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
l2f
fdiv
fstore 5
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
new java/text/DecimalFormat
dup
ldc "#"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 5
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/progressString Ljava/lang/String;
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
bipush 9
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 6
.limit stack 5
.end method

.method protected onDownloadSuccess(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onSuccess:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
bipush 7
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/setExtraflagAndNotify(I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onUploadFail(ILjava/lang/String;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/onUploadFail(ILjava/lang/String;)V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
iconst_4
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/setExtraflagAndNotify(I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onUploadProgress(JJ)V
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload onProgressed:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
lconst_0
lcmp
ifne L0
aload 0
lload 3
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
lconst_0
lcmp
ifle L1
ldc2_w 100L
lload 1
lmul
l2f
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
l2f
fdiv
fstore 6
fload 6
fstore 5
fload 6
ldc_w 99.0F
fcmpl
iflt L2
ldc_w 99.0F
fstore 5
L2:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
new java/text/DecimalFormat
dup
ldc "#"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 5
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/progressString Ljava/lang/String;
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
bipush 9
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 7
.limit stack 5
.end method

.method protected onUploadSuccess(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fKey Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
tableswitch 2
L0
L1
default : L2
L2:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onSuccess:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fKey Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/remove(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/sendMessage()V 0
return
L1:
aload 0
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/duration I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createAudioMessage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
goto L2
L0:
aload 0
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createImgMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
goto L2
.limit locals 2
.limit stack 4
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
aload 0
aload 1
aload 1
ldc "extraflag"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
aload 0
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "grouptype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupType I
aload 0
aload 1
aload 1
ldc "filename"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fileName Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "filesize"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/localFileSize J
aload 0
aload 1
aload 1
ldc "filepath"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/filePath Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "fkey"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/fKey Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "wseq"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/wseq I
aload 0
aload 1
aload 1
ldc "acktype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/ackType I
aload 0
aload 1
aload 1
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "reserve"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/thumbnailPath Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "donwload"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/downloadSize J
aload 0
aload 1
aload 1
ldc "total"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/totalSize J
aload 0
aload 1
aload 1
ldc "duration"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/duration I
aload 0
aload 1
aload 1
ldc "mulptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/multiId J
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/prepareMessage()Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public prepareMessage()Z
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/analysePublicNumberMessage(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
iconst_4
if_icmpeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
bipush 7
if_icmpne L1
L0:
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
bipush 8
if_icmpne L2
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "public number info changed:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/pspChagePart I
tableswitch 1
L3
L3
L3
L4
default : L5
L5:
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/pspChagePart I
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
iconst_1
ireturn
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfoFromServer(Ljava/lang/String;)V
goto L5
L4:
new com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L5
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMenuFromServer(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)Z
pop
goto L5
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
iconst_3
if_icmpne L6
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
iconst_4
if_icmpne L6
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/public_number_dismissed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 1
aload 1
ifnull L7
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
iconst_4
if_icmpeq L7
aload 1
iconst_4
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
aload 1
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "status"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
aload 1
aconst_null
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfoFromServer(Ljava/lang/String;)V
L7:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public send(Z)V
aload 0
ldc_w 65142
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/IMSCmd I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
bipush 6
if_icmpne L0
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/isSaveToDb Z
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/sendMessage()V 0
return
L0:
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage/send(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTypeId(Ljava/lang/Object;)V
aload 1
instanceof java/lang/String
ifeq L0
aload 0
aload 1
checkcast java/lang/String
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
L1:
return
L0:
aload 1
instanceof java/lang/Long
ifeq L1
aload 0
aload 1
checkcast java/lang/Long
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public showNotify()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 0
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/noNeedNotify(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L0
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
getstatic com/nd/android/u/chat/R$string/public_number I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 5
aload 3
astore 2
aload 5
ifnull L1
aload 3
astore 2
aload 5
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 5
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
astore 2
L1:
aload 4
getstatic com/nd/android/u/chat/R$string/public_number_notify I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 5
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getAllUnreadMsgCount()I
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/notify_remain I
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 6
new android/content/Intent
dup
ldc "com.nd.android.action.ChatActivity_Public"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 7
aload 7
aload 4
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 4
ldc "name"
aload 2
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 3
aload 6
aload 5
aload 7
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
astore 2
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 2
aload 0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;)V
return
.limit locals 8
.limit stack 6
.end method

.method public updateRecentContactItem(I)V
iload 1
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L2:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/deleteRecentContact()V
return
L1:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/extraflag I
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/msgStateChanged(Ljava/lang/String;I)V
return
L0:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/insertRecentContact()V
return
L3:
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageType I
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 3
.end method
