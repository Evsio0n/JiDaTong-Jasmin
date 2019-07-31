.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/XmlMessageAnalyser
.super java/lang/Object
.inner class private BODY_FMT inner com/nd/android/u/publicNumber/ui/XmlMessageAnalyser$BODY_FMT outer com/nd/android/u/publicNumber/ui/XmlMessageAnalyser

.field private static final 'ALT' Ljava/lang/String; = "alt"

.field private static final 'APP' Ljava/lang/String; = "app"

.field private static final 'AUDIO' Ljava/lang/String; = "audio"

.field private static final 'BODY' Ljava/lang/String; = "body"

.field private static final 'BUSINESS' Ljava/lang/String; = "business"

.field private static final 'CHANGE' Ljava/lang/String; = "change"

.field private static final 'CONTENT' Ljava/lang/String; = "contents"

.field private static final 'DURA' Ljava/lang/String; = "dura"

.field private static final 'EVENT' Ljava/lang/String; = "event"

.field private static final 'EVENT_KEY' Ljava/lang/String; = "eventkey"

.field private static final 'FMT' Ljava/lang/String; = "fmt"

.field private static final 'HREF' Ljava/lang/String; = "href"

.field private static final 'ID' Ljava/lang/String; = "id"

.field private static final 'IMG' Ljava/lang/String; = "img"

.field private static final 'ITEM' Ljava/lang/String; = "item"

.field private static final 'MOOD' Ljava/lang/String; = "mood"

.field public static final 'MSG' Ljava/lang/String; = "msg"

.field private static final 'MULTIMEDIA' Ljava/lang/String; = "multimedia"

.field public static final 'PARA' Ljava/lang/String; = "para"

.field private static final 'PART' Ljava/lang/String; = "part"

.field public static final 'PICURL' Ljava/lang/String; = "picurl"

.field private static final 'PSP_EVENT' Ljava/lang/String; = "PSP_EVENT"

.field private static final 'RECEIVER' Ljava/lang/String; = "receiver"

.field private static final 'SENDER' Ljava/lang/String; = "sender"

.field public static final 'SFSHEADER_AUDIO' Ljava/lang/String; = "SFSA://"

.field public static final 'SFSHEADER_IMG' Ljava/lang/String; = "SFSP://"

.field public static final 'SFSHEADER_VIDEO' Ljava/lang/String; = "SFSV://"

.field public static final 'SFS_UID' Ljava/lang/String; = "&uid="

.field private static final 'SPAN' Ljava/lang/String; = "span"

.field private static final 'SRC' Ljava/lang/String; = "src"

.field public static final 'SUMMARY' Ljava/lang/String; = "summary"

.field private static final 'TIME' Ljava/lang/String; = "time"

.field public static final 'TITLE' Ljava/lang/String; = "title"

.field private static final 'TYPE' Ljava/lang/String; = "type"

.field private static final 'UTF8_HEAD' Ljava/lang/String; = "<?xml version='1.0' encoding='utf-8' ?>"

.field private static final 'VIDEO' Ljava/lang/String; = "video"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static analyseAppMessage(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)Z
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
.catch org/xmlpull/v1/XmlPullParserException from L10 to L11 using L2
.catch java/io/IOException from L10 to L11 using L3
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/displayContent Ljava/lang/String;
ifnull L0
L12:
iconst_1
ireturn
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 3
aload 3
new java/io/ByteArrayInputStream
dup
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/oriMessage Ljava/lang/String;
ldc "<br />"
ldc "\n"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 1
L1:
goto L13
L4:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 1
L5:
goto L13
L6:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ifnull L4
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 4
aload 4
ldc "body"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
aload 0
aload 3
ldc "appid"
invokestatic com/common/android/utils/XMLUtils/getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 0
aload 3
ldc ""
ldc "bussid"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/bussinessId Ljava/lang/String;
aload 0
aload 3
ldc ""
ldc "permcode"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
L7:
goto L4
L2:
astore 0
aload 0
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
iconst_0
ireturn
L8:
aload 4
ldc "app"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 3
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/analyseXmlDetail(Lorg/xmlpull/v1/XmlPullParser;)Z
ifne L4
L9:
iconst_0
ireturn
L10:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
L11:
iload 2
ifeq L4
goto L4
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L13:
iload 1
iconst_1
if_icmpeq L12
iload 1
tableswitch 0
L4
L4
L6
L10
default : L14
L14:
goto L4
.limit locals 5
.limit stack 6
.end method

.method public static analysePublicNumberMessage(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
.catch org/xmlpull/v1/XmlPullParserException from L10 to L11 using L2
.catch java/io/IOException from L10 to L11 using L3
.catch org/xmlpull/v1/XmlPullParserException from L12 to L13 using L2
.catch java/io/IOException from L12 to L13 using L3
.catch org/xmlpull/v1/XmlPullParserException from L14 to L15 using L2
.catch java/io/IOException from L14 to L15 using L3
.catch org/xmlpull/v1/XmlPullParserException from L16 to L17 using L2
.catch java/io/IOException from L16 to L17 using L3
.catch org/xmlpull/v1/XmlPullParserException from L18 to L19 using L2
.catch java/io/IOException from L18 to L19 using L3
.catch org/xmlpull/v1/XmlPullParserException from L19 to L20 using L2
.catch java/io/IOException from L19 to L20 using L3
.catch org/xmlpull/v1/XmlPullParserException from L21 to L22 using L2
.catch java/io/IOException from L21 to L22 using L3
.catch org/xmlpull/v1/XmlPullParserException from L23 to L24 using L2
.catch java/io/IOException from L23 to L24 using L3
.catch org/xmlpull/v1/XmlPullParserException from L25 to L26 using L2
.catch java/io/IOException from L25 to L26 using L3
.catch org/xmlpull/v1/XmlPullParserException from L27 to L28 using L2
.catch java/io/IOException from L27 to L28 using L3
.catch org/xmlpull/v1/XmlPullParserException from L29 to L30 using L2
.catch java/io/IOException from L29 to L30 using L3
.catch org/xmlpull/v1/XmlPullParserException from L31 to L32 using L2
.catch java/io/IOException from L31 to L32 using L3
.catch org/xmlpull/v1/XmlPullParserException from L33 to L34 using L2
.catch java/io/IOException from L33 to L34 using L3
.catch org/xmlpull/v1/XmlPullParserException from L34 to L35 using L2
.catch java/io/IOException from L34 to L35 using L3
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
ifnull L0
L36:
return
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 3
aload 3
new java/io/ByteArrayInputStream
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/oriMessage Ljava/lang/String;
ldc "<br />"
ldc "\n"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 1
L1:
goto L37
L4:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 1
L5:
goto L37
L6:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 4
L7:
aload 4
ifnull L4
L8:
aload 4
ldc "sender"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L10
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/uidFrom J
lconst_0
lcmp
ifne L4
aload 0
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/uidFrom J
L9:
goto L4
L2:
astore 0
aload 0
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
return
L10:
aload 4
ldc "receiver"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L12
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/uidTo J
lconst_0
lcmp
ifne L4
aload 0
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/uidTo J
L11:
goto L4
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
return
L12:
aload 4
ldc "time"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L14
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createDate J
lconst_0
lcmp
ifne L4
aload 0
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createDate J
L13:
goto L4
L14:
aload 4
ldc "id"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L16
aload 0
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/innerId J
L15:
goto L4
L16:
aload 4
ldc "type"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L18
aload 0
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
L17:
goto L4
L18:
aload 4
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
tableswitch 0
L19
L19
L29
L21
L38
L31
L27
L25
L23
default : L38
L19:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseTextMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L20:
goto L4
L21:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseAudioMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L22:
goto L4
L23:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseModifyMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L24:
goto L4
L25:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseMultimediaMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L26:
goto L4
L27:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseEventMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L28:
goto L4
L29:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parsePictureMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L30:
goto L4
L31:
aload 3
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseComplexMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
L32:
goto L4
L33:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L34
L34:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
L35:
iload 2
ifeq L4
return
L37:
iload 1
iconst_1
if_icmpeq L36
iload 1
tableswitch 0
L4
L4
L6
L33
default : L39
L39:
goto L4
L38:
goto L4
.limit locals 5
.limit stack 6
.end method

.method public static createAudioMessage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 5
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
L0:
aload 5
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 5
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 5
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 5
ldc "time"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic ims/IMSdk/computeServertime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "type"
ldc "3"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "body"
ldc "fmt"
ldc "1"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SFSA://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 5
ldc "audio"
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "src"
aastore
dup
iconst_1
ldc "dura"
aastore
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
aastore
dup
iconst_1
aload 6
aastore
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
aload 5
ldc ""
ldc "audio"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 5
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 5
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 5
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L1:
aload 2
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L1
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 7
.limit stack 7
.end method

.method public static createEventMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 3
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
L0:
aload 3
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 3
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 3
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 3
ldc "time"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic ims/IMSdk/computeServertime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "type"
ldc "6"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "body"
ldc "fmt"
ldc "3"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "app"
ldc "business"
ldc "PSP_EVENT"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "event"
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "eventkey"
aload 1
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc ""
ldc "app"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 3
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 3
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 3
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L1:
aload 2
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L1
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 5
.end method

.method public static createImgMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 2
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 1
L0:
aload 2
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 2
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 2
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
ldc "time"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic ims/IMSdk/computeServertime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "type"
ldc "2"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "body"
ldc "fmt"
ldc "0"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "img"
ldc "src"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SFSP://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc ""
ldc "img"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L1:
aload 1
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L1
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 5
.end method

.method public static createTextMessage(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
.signature "(Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/lang/String;)Ljava/lang/String;"
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/lang/IllegalArgumentException from L5 to L6 using L2
.catch java/lang/IllegalStateException from L5 to L6 using L3
.catch java/io/IOException from L5 to L6 using L4
.catch java/lang/IllegalArgumentException from L6 to L7 using L2
.catch java/lang/IllegalStateException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch java/lang/IllegalArgumentException from L7 to L8 using L2
.catch java/lang/IllegalStateException from L7 to L8 using L3
.catch java/io/IOException from L7 to L8 using L4
.catch java/lang/IllegalArgumentException from L9 to L10 using L2
.catch java/lang/IllegalStateException from L9 to L10 using L3
.catch java/io/IOException from L9 to L10 using L4
.catch java/lang/IllegalArgumentException from L11 to L12 using L2
.catch java/lang/IllegalStateException from L11 to L12 using L3
.catch java/io/IOException from L11 to L12 using L4
.catch java/lang/IllegalArgumentException from L13 to L14 using L2
.catch java/lang/IllegalStateException from L13 to L14 using L3
.catch java/io/IOException from L13 to L14 using L4
.catch java/lang/IllegalArgumentException from L15 to L16 using L2
.catch java/lang/IllegalStateException from L15 to L16 using L3
.catch java/io/IOException from L15 to L16 using L4
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 4
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 1
L0:
aload 4
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 4
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 4
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 4
ldc "time"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "type"
ldc "1"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "body"
ldc "fmt"
ldc "0"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
ifnull L6
L5:
aload 0
invokevirtual java/util/ArrayList/size()I
ifne L17
L6:
aload 4
ldc "span"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
L7:
aload 4
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 4
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 4
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L8:
aload 1
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L17:
iconst_0
istore 2
L9:
aload 0
invokevirtual java/util/ArrayList/size()I
istore 3
L10:
iload 2
iload 3
if_icmpge L7
L11:
aload 0
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 5
aload 5
instanceof java/lang/String
ifeq L13
aload 4
ldc "span"
aload 5
checkcast java/lang/String
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
L12:
goto L18
L13:
aload 5
instanceof com/common/android/utils/smiley/Smiley
ifeq L15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
checkcast com/common/android/utils/smiley/Smiley
getfield com/common/android/utils/smiley/Smiley/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 4
ldc "mood"
ldc "type"
ldc "s"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 4
aload 5
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
aload 4
ldc ""
ldc "mood"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
L14:
goto L18
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L8
L15:
aload 4
ldc "span"
aload 5
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
L16:
goto L18
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L8
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L8
L18:
iload 2
iconst_1
iadd
istore 2
goto L10
.limit locals 6
.limit stack 7
.end method

.method public static createVideoMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
invokestatic android/util/Xml/newSerializer()Lorg/xmlpull/v1/XmlSerializer;
astore 6
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
L0:
aload 6
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/Writer;)V 1
aload 6
ldc "utf-8"
aconst_null
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 6
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 6
ldc "time"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic ims/IMSdk/computeServertime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "type"
ldc "2"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "body"
ldc "fmt"
ldc "1"
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SFSA://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 6
ldc "video"
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "src"
aastore
dup
iconst_1
ldc "dura"
aastore
dup
iconst_2
ldc "img"
aastore
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
aastore
dup
iconst_1
aload 7
aastore
dup
iconst_2
aload 3
aastore
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
aload 6
ldc ""
ldc "video"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 6
ldc ""
ldc "body"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 6
ldc ""
ldc "msg"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 6
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
L1:
aload 2
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/getString(Ljava/io/StringWriter;)Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L1
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 7
.end method

.method private static getString(Ljava/io/StringWriter;)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
areturn
L0:
aload 0
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
ldc "<?xml version='1.0' encoding='utf-8' ?>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static injectAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 0
ldc ""
aload 2
aload 3
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
return
.limit locals 4
.limit stack 4
.end method

.method private static injectAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
iconst_0
istore 4
aload 2
arraylength
istore 5
L0:
iload 4
iload 5
if_icmpge L1
aload 0
ldc ""
aload 2
iload 4
aaload
aload 3
iload 4
aaload
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
return
.limit locals 6
.limit stack 5
.end method

.method private static injectTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 2
.limit stack 3
.end method

.method private static injectText(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 0
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 1
pop
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 3
.limit stack 3
.end method

.method private static parseAudioMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 3
ldc "audio"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
aload 1
aload 0
ldc ""
ldc "src"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
aload 1
aload 0
ldc ""
ldc "dura"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/duration I
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L2:
return
.limit locals 4
.limit stack 4
.end method

.method private static parseComplexMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_complex I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "contents"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 3
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/<init>()V
astore 3
aload 3
aload 0
ldc ""
ldc "href"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/href Ljava/lang/String;
aload 0
aload 3
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/parseComplexMsgItem(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;)V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L2:
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L4
aload 1
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
L4:
return
.limit locals 4
.limit stack 4
.end method

.method private static parseComplexMsgItem(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 3
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 5
iload 3
istore 2
aload 5
astore 4
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeCount()I 0
ifle L0
aload 1
aload 0
aconst_null
ldc "para"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/thirdAppTag Ljava/lang/String;
aload 5
astore 4
iload 3
istore 2
L0:
iload 2
iconst_3
if_icmpne L1
aload 4
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 4
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 4
ldc "title"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 4
goto L0
L4:
aload 4
ldc "picurl"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/picurl Ljava/lang/String;
goto L3
L5:
aload 4
ldc "summary"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/summary Ljava/lang/String;
goto L3
L2:
return
.limit locals 6
.limit stack 4
.end method

.method private static parseEventMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 3
ldc "app"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
ldc ""
ldc "business"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
ldc "PSP_EVENT"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L4:
iload 2
iconst_3
if_icmpne L5
aload 3
ldc "app"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
L5:
aload 3
ifnull L6
iload 2
iconst_3
if_icmpeq L6
aload 3
ldc "event"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/eventName Ljava/lang/String;
L6:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L4
L7:
aload 3
ldc "eventkey"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/eventKey Ljava/lang/String;
goto L6
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L2:
return
.limit locals 4
.limit stack 3
.end method

.method private static parseModifyMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L3:
iload 2
iconst_3
if_icmpne L4
aload 3
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L5
L4:
aload 3
ifnull L6
iload 2
iconst_3
if_icmpeq L6
aload 3
ldc "app"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
aload 0
ldc ""
ldc "business"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
ldc "PSP_CHANGE"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L7:
iload 2
iconst_3
if_icmpne L8
aload 3
ldc "app"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
L8:
aload 3
ifnull L1
iload 2
iconst_3
if_icmpeq L1
aload 3
ldc "change"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aconst_null
ldc "part"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
L0:
aload 1
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/pspChagePart I
L1:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L7
L2:
astore 3
aload 1
iconst_0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/pspChagePart I
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L6:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L3
L5:
return
.limit locals 4
.limit stack 3
.end method

.method private static parseMultimediaMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aconst_null
astore 9
aconst_null
astore 6
aconst_null
astore 10
iconst_0
istore 3
aconst_null
astore 7
aconst_null
astore 8
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 4
L0:
iload 4
iconst_1
if_icmpeq L1
aload 9
astore 11
iload 3
istore 2
aload 10
astore 5
aload 7
astore 12
aload 6
astore 13
aload 8
astore 14
iload 4
iconst_2
if_icmpne L2
ldc "multimedia"
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
iconst_0
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
astore 11
aload 8
astore 14
aload 6
astore 13
aload 7
astore 12
aload 10
astore 5
iload 3
istore 2
L2:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 4
aload 11
astore 9
iload 2
istore 3
aload 5
astore 10
aload 12
astore 7
aload 13
astore 6
aload 14
astore 8
goto L0
L3:
ldc "title"
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
astore 13
aload 9
astore 11
iload 3
istore 2
aload 10
astore 5
aload 7
astore 12
aload 8
astore 14
goto L2
L4:
ldc "video"
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 0
iconst_0
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
astore 5
aload 0
iconst_1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 2
aload 0
iconst_2
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
astore 14
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_vidio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
aload 9
astore 11
aload 7
astore 12
aload 6
astore 13
goto L2
L5:
ldc "audio"
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
aload 0
iconst_0
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
astore 5
aload 0
iconst_1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(I)Ljava/lang/String; 1
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 2
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
aload 9
astore 11
aload 7
astore 12
aload 6
astore 13
aload 8
astore 14
goto L2
L6:
aload 9
astore 11
iload 3
istore 2
aload 10
astore 5
aload 7
astore 12
aload 6
astore 13
aload 8
astore 14
ldc "summary"
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
astore 12
aload 9
astore 11
iload 3
istore 2
aload 10
astore 5
aload 6
astore 13
aload 8
astore 14
goto L2
L1:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
new com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/<init>()V
astore 0
aload 0
aload 9
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/setmHref(Ljava/lang/String;)V
aload 0
aload 6
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/setmTitle(Ljava/lang/String;)V
aload 0
aload 10
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/setmMultimediaUrl(Ljava/lang/String;)V
aload 0
iload 3
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/setmMultimediaDuration(I)V
aload 0
aload 7
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/setmSummary(Ljava/lang/String;)V
aload 1
aload 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
L8:
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmTitle()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L9
aload 1
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmTitle()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
L9:
return
L7:
new com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/<init>()V
astore 0
aload 0
aload 9
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmHref(Ljava/lang/String;)V
aload 0
aload 6
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmTitle(Ljava/lang/String;)V
aload 0
aload 10
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmMultimediaUrl(Ljava/lang/String;)V
aload 0
iload 3
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmMultimediaDuration(I)V
aload 0
aload 7
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmSummary(Ljava/lang/String;)V
aload 0
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/setmVideoScreenshotUrl(Ljava/lang/String;)V
aload 1
aload 0
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
goto L8
.limit locals 15
.limit stack 3
.end method

.method private static parsePictureMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 3
ldc "img"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_img I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
aload 1
aload 0
ldc ""
ldc "src"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
aload 0
ldc ""
ldc "alt"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L2:
return
.limit locals 4
.limit stack 4
.end method

.method private static parseTextMsg(Lorg/xmlpull/v1/XmlPullParser;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "body"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 3
ldc "span"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
astore 3
aload 3
ifnull L3
aload 6
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L4:
aload 3
ldc "mood"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 0
ldc ""
ldc "type"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 4
aload 4
astore 3
aload 4
ifnonnull L6
ldc ""
astore 3
L6:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 3
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
aload 3
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/isCatID(I)Z
ifeq L7
new com/nd/android/u/controller/bean/ImageMessage
dup
invokespecial com/nd/android/u/controller/bean/ImageMessage/<init>()V
astore 4
aload 4
iconst_0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setPosition(I)V
aload 4
sipush 257
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setType(I)V
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/ImageMessage/setImgurl(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/length()I
ifle L8
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L8:
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
iconst_2
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
aload 5
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L7:
aload 6
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L5:
aload 3
ldc "br"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 6
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L2:
aload 5
invokevirtual java/lang/StringBuilder/length()I
ifle L9
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L9:
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmple L10
aload 1
bipush 81
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/messageContentType I
L10:
aload 1
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/displayContent Ljava/lang/String;
return
.limit locals 7
.limit stack 3
.end method
