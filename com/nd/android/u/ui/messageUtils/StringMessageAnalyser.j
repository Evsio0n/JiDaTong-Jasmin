.bytecode 50.0
.class public synchronized com/nd/android/u/ui/messageUtils/StringMessageAnalyser
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageAnalyser

.field private final 'FMGSTART' Ljava/lang/String;

.field private final 'FMTEND' Ljava/lang/String;

.field private final 'IMGEND' Ljava/lang/String;

.field private final 'IMGSTART' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "<fmt>"
putfield com/nd/android/u/ui/messageUtils/StringMessageAnalyser/FMGSTART Ljava/lang/String;
aload 0
ldc "<fmt>"
putfield com/nd/android/u/ui/messageUtils/StringMessageAnalyser/FMTEND Ljava/lang/String;
aload 0
ldc "<img>"
putfield com/nd/android/u/ui/messageUtils/StringMessageAnalyser/IMGSTART Ljava/lang/String;
aload 0
ldc "<img>"
putfield com/nd/android/u/ui/messageUtils/StringMessageAnalyser/IMGEND Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private addStringToList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/StringBuffer;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/lang/String;Ljava/lang/StringBuffer;)V"
aload 3
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/util/ArrayList/size()I
istore 4
iload 4
ifne L0
aload 1
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
L0:
aload 1
iload 4
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 3
aload 3
instanceof java/lang/String
ifeq L1
aload 1
iload 4
iconst_1
isub
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
return
L1:
aload 1
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 5
.limit stack 4
.end method

.method private analyseText(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
aload 2
bipush 13
bipush 10
invokevirtual java/lang/String/replace(CC)Ljava/lang/String;
astore 9
aload 9
ldc "&<fmt>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 9
ldc "<fmt>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
aload 9
astore 2
iload 3
iconst_m1
if_icmple L16
aload 9
astore 2
iload 4
iload 3
if_icmple L16
aload 9
iconst_0
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L16:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_img I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 11
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 12
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 13
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L17
aload 0
aload 1
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L17:
aload 2
ldc "&<img>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 2
ldc "<img>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
iload 3
iconst_m1
if_icmple L18
iload 4
iconst_m1
if_icmple L18
aload 2
ldc "&<img>"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 9
aload 9
arraylength
iconst_1
if_icmpgt L19
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L19:
aload 9
iconst_0
aaload
astore 14
aload 9
iconst_1
aaload
ldc "\\*"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 15
aload 15
arraylength
istore 5
iload 5
iconst_1
if_icmpgt L20
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L20:
iconst_0
istore 4
iconst_1
istore 3
L21:
iload 3
iload 5
if_icmpge L22
aload 15
iload 3
aaload
astore 10
aload 10
astore 9
iload 3
iload 5
iconst_1
isub
if_icmpne L23
aload 10
ldc "<img>&"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 9
L23:
aload 9
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 9
aload 9
arraylength
iconst_1
if_icmpgt L0
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L0:
aload 9
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 6
aload 9
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 7
L1:
iload 7
ifeq L4
iload 4
iload 7
if_icmpge L4
L3:
aload 0
aload 13
aload 14
iload 4
iload 7
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
aload 12
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/addStringToList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/StringBuffer;)V
L4:
iload 7
iconst_1
iadd
istore 4
iload 6
sipush 257
if_icmpne L11
L5:
aload 9
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 8
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 8
invokevirtual com/common/android/utils/smiley/Smileyhelper/isCatID(I)Z
ifeq L9
new com/nd/android/u/controller/bean/ImageMessage
dup
invokespecial com/nd/android/u/controller/bean/ImageMessage/<init>()V
astore 10
aload 12
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
iconst_2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 10
iload 7
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setPosition(I)V
aload 10
iload 6
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setType(I)V
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
aload 13
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 13
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L7
aload 1
iconst_2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
L6:
goto L24
L7:
aload 1
bipush 81
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
L8:
goto L24
L2:
astore 9
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L9:
aload 0
aload 13
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
iconst_2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 12
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/addStringToList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/StringBuffer;)V
L10:
goto L24
L11:
new com/nd/android/u/controller/bean/ImageMessage
dup
invokespecial com/nd/android/u/controller/bean/ImageMessage/<init>()V
astore 10
aload 10
aload 9
iconst_2
aaload
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
iconst_2
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 9
iconst_2
aaload
ldc ""
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 9
aload 10
iload 7
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setPosition(I)V
aload 10
iload 6
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setType(I)V
aload 10
aload 11
putfield com/nd/android/u/controller/bean/ImageMessage/text Ljava/lang/String;
aload 12
aload 11
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 13
invokevirtual java/util/ArrayList/size()I
ifle L14
aload 1
bipush 81
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
aload 1
aconst_null
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
L12:
aload 13
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L13:
goto L24
L14:
aload 1
iconst_2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
aload 1
aload 9
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
L15:
goto L12
L22:
iload 4
aload 14
invokevirtual java/lang/String/length()I
if_icmpge L25
aload 0
aload 13
aload 14
iload 4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
aload 12
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/addStringToList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/StringBuffer;)V
L25:
aload 1
aload 12
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
aload 13
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmple L26
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
iconst_2
if_icmpne L26
aload 1
bipush 81
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
L26:
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
aload 13
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
return
L18:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L24:
iload 3
iconst_1
iadd
istore 3
goto L21
.limit locals 16
.limit stack 5
.end method

.method private packString(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
aload 1
ldc "<img>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L0
aload 1
ldc "&<img>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L0
aload 1
ldc "&<img>"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
aload 6
arraylength
istore 5
iload 5
iconst_1
if_icmpgt L1
aload 2
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L2:
return
L1:
iconst_0
istore 4
L3:
iload 4
iload 5
if_icmpge L2
aload 6
iload 4
aaload
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
ldc "<img>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L5
aload 1
ldc "<img>&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 1
arraylength
iconst_1
if_icmple L6
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 257
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iload 4
iconst_1
iadd
istore 4
goto L3
L6:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 257
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc " "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L5:
aload 2
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L0:
aload 2
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 7
.limit stack 4
.end method

.method private setDefaultData(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
aload 1
aload 2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public analyseMessage(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/groupType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L2
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
ldc "DB30DF15-01F5-4464-B701-3026D7A24581"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
aload 2
invokevirtual java/lang/String/length()I
iconst_1
if_icmple L3
aload 1
aload 3
iconst_0
aaload
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
L3:
aload 1
aload 2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 2
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
lookupswitch
0 : L4
2 : L4
3 : L5
4 : L6
80 : L7
81 : L4
195 : L4
10003 : L1
10004 : L1
10005 : L1
10009 : L1
20001 : L1
20002 : L1
20003 : L1
20004 : L1
20480 : L5
20481 : L7
default : L8
L8:
aload 1
aload 2
getstatic com/nd/android/u/chat/R$string/chat_error_msg I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
aload 1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
L4:
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/analyseText(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;)V
return
L7:
aload 1
aload 2
getstatic com/nd/android/u/chat/R$string/chat_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
aload 1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
L5:
aload 1
aload 2
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
aload 1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
L6:
aload 1
aload 2
getstatic com/nd/android/u/chat/R$string/chat_vidio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
aload 1
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method public createDate(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String;
new java/util/Date
dup
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
ldc2_w 1000L
lmul
lconst_1
lmul
invokespecial java/util/Date/<init>(J)V
iconst_3
invokestatic com/nd/android/u/chatUiUtils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public packMsg(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
ldc "&<img>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getDisplayDatas()Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
aload 0
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
aload 4
aload 5
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/packString(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
L1:
aload 5
ldc "<img>&"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/nd/android/u/controller/bean/FontFormat/getString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
iconst_0
istore 2
aload 6
invokevirtual java/util/ArrayList/size()I
istore 3
L2:
iload 2
iload 3
if_icmpge L1
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof java/lang/String
ifeq L3
aload 0
aload 1
checkcast java/lang/String
aload 4
aload 5
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/packString(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 1
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L5:
aload 1
instanceof android/text/SpannableString
ifeq L4
aload 0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 4
aload 5
invokespecial com/nd/android/u/ui/messageUtils/StringMessageAnalyser/packString(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
goto L4
.limit locals 7
.limit stack 4
.end method
