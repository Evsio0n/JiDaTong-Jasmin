.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/ChatCommonUtils
.super java/lang/Object

.field private static final 'FMGSTART' Ljava/lang/String; = "<fmt>"

.field private static final 'FMTEND' Ljava/lang/String; = "<fmt>"

.field private static final 'IMGEND' Ljava/lang/String; = "<img>"

.field private static final 'IMGSTART' Ljava/lang/String; = "<img>"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
aload 0
ifnull L4
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L4:
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L3:
astore 0
aload 0
invokevirtual java/lang/RuntimeException/printStackTrace()V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method private static analyseContent(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
aload 0
bipush 13
bipush 10
invokevirtual java/lang/String/replace(CC)Ljava/lang/String;
astore 6
aload 6
ldc "&<fmt>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 6
ldc "<fmt>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 6
astore 0
iload 1
iconst_m1
if_icmple L9
aload 6
astore 0
iload 2
iload 1
if_icmple L9
aload 6
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L9:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_img I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 8
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 0
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
if_icmple L10
aload 0
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
areturn
L10:
aload 0
ldc "&<img>"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 0
ldc "<img>&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 1
iconst_m1
if_icmple L11
iload 2
iconst_m1
if_icmple L11
aload 0
ldc "&<img>"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
aload 6
arraylength
iconst_1
if_icmpgt L12
aload 0
areturn
L12:
aload 6
iconst_0
aaload
astore 10
aload 6
iconst_1
aaload
ldc "\\*"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 11
aload 11
arraylength
istore 3
iload 3
iconst_1
if_icmpgt L13
aload 0
areturn
L13:
iconst_0
istore 2
iconst_1
istore 1
L14:
iload 1
iload 3
if_icmpge L15
aload 11
iload 1
aaload
astore 7
aload 7
astore 6
iload 1
iload 3
iconst_1
isub
if_icmpne L16
aload 7
ldc "<img>&"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 6
L16:
aload 6
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
aload 6
arraylength
iconst_1
if_icmpgt L0
aload 0
areturn
L0:
aload 6
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
aload 6
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
L1:
iload 5
ifeq L4
L3:
aload 9
aload 10
iload 2
iload 5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iload 5
iconst_1
iadd
istore 2
iload 4
sipush 257
if_icmpne L7
L5:
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
iconst_2
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
goto L17
L7:
aload 9
aload 8
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L8:
goto L17
L2:
astore 6
aload 0
areturn
L15:
iload 2
aload 10
invokevirtual java/lang/String/length()I
if_icmpge L18
aload 9
aload 10
iload 2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L18:
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L11:
aload 0
areturn
L17:
iload 1
iconst_1
iadd
istore 1
goto L14
.limit locals 12
.limit stack 4
.end method

.method public static analyseOldMessage(Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
areturn
L0:
iload 1
bipush 101
if_icmpne L1
new com/product/android/commonInterface/chat/ErpInfo
dup
invokespecial com/product/android/commonInterface/chat/ErpInfo/<init>()V
astore 2
aload 2
aload 0
invokevirtual com/product/android/commonInterface/chat/ErpInfo/parseFromJson(Ljava/lang/String;)V
aload 2
getfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
areturn
L1:
iload 1
lookupswitch
0 : L2
3 : L3
80 : L4
20480 : L3
20481 : L4
default : L5
L5:
aload 0
areturn
L2:
aload 0
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyseContent(Ljava/lang/String;)Ljava/lang/String;
areturn
L3:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L4:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static changeToSpan(Landroid/content/Context;Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;
new android/text/SpannableStringBuilder
dup
invokespecial android/text/SpannableStringBuilder/<init>()V
astore 7
aload 7
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual android/text/SpannableStringBuilder/append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
pop
getstatic com/nd/android/u/allCommonUtils/UrlUtils/ALL_PATTERN_URL Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 8
L0:
aload 8
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 8
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 8
invokevirtual java/util/regex/Matcher/end()I
istore 4
aload 1
iload 3
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 9
new android/text/SpannableString
dup
aload 9
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 6
aload 9
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isUrl(Ljava/lang/String;)Z
ifeq L2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 6
aload 9
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getHtml(Landroid/text/SpannableString;Ljava/lang/String;Z)Landroid/text/SpannableString;
astore 5
aload 5
new android/text/style/ForegroundColorSpan
dup
ldc_w -15633455
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L3:
aload 7
iload 3
iload 4
aload 5
invokevirtual android/text/SpannableStringBuilder/replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
pop
goto L0
L2:
aload 6
astore 5
aload 9
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isPhone(Ljava/lang/String;)Z
ifeq L3
aload 9
invokevirtual java/lang/String/length()I
bipush 10
if_icmpne L4
aload 9
ldc "-"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpne L4
aload 9
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isTelPhone(Ljava/lang/String;)Z
ifeq L5
aload 6
new com/nd/android/u/ui/msg_num_click/NumClickableSpan
dup
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone
dup
aload 0
aload 9
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokespecial com/nd/android/u/ui/msg_num_click/NumClickableSpan/<init>(Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
new android/text/style/ForegroundColorSpan
dup
ldc_w -15633455
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
astore 5
goto L3
L5:
aload 6
new com/nd/android/u/ui/msg_num_click/NumClickableSpan
dup
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone
dup
aload 0
aload 9
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokespecial com/nd/android/u/ui/msg_num_click/NumClickableSpan/<init>(Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
new android/text/style/ForegroundColorSpan
dup
ldc_w -15633455
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
astore 5
goto L3
L4:
aload 6
new com/nd/android/u/ui/msg_num_click/NumClickableSpan
dup
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone
dup
aload 0
aload 9
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokespecial com/nd/android/u/ui/msg_num_click/NumClickableSpan/<init>(Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
new android/text/style/ForegroundColorSpan
dup
ldc_w -15633455
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 9
invokevirtual java/lang/String/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 6
astore 5
goto L3
L1:
aload 7
areturn
.limit locals 10
.limit stack 7
.end method

.method public static getMetrics()Landroid/util/DisplayMetrics;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/MSG_AUDIO I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 4
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
iload 1
bipush 16
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 3
aload 0
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L0
L1:
aload 3
areturn
L0:
aload 0
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
invokestatic ims/utils/CommUtil/getCategoryFromGenerateId(Ljava/lang/String;)I
istore 1
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iload 1
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 0
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
astore 2
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iload 1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L1
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 1
iload 1
iconst_3
if_icmpeq L2
iload 1
sipush 20480
if_icmpne L1
L2:
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
ifne L1
aload 3
new android/text/style/ForegroundColorSpan
dup
ldc_w -65536
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 3
invokevirtual android/text/SpannableString/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 3
areturn
.limit locals 5
.limit stack 5
.end method
