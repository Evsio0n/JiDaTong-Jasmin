.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'OPT_RESULT_APPROVE' I = 1


.field public static final 'OPT_RESULT_DONE' I = 2


.field public static final 'OPT_RESULT_NONE' I = -1


.field public static final 'OPT_RESULT_REJECT' I = 0


.field public 'avatarUrl' Ljava/lang/String;

.field public 'business' Ljava/lang/String;

.field public 'communityGid' I

.field public 'communityName' Ljava/lang/String;

.field public 'communityid' I

.field public 'createTime' J

.field public 'displayContent' Ljava/lang/String;

.field public 'opretorRole' I

.field public 'optResult' I

.field public 'resultContent' Ljava/lang/String;

.field public 'resultValue' I

.field public 'userAvatarUrl' Ljava/lang/String;

.field public 'userName' Ljava/lang/String;

.field public 'userUid' J

.field public 'verifyInfo' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/opretorRole I
return
.limit locals 1
.limit stack 2
.end method

.method private initDefaultContent()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 2
ldc "LIFE_COMMUNITY_APPROVE"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
aload 2
ldc_w 2131493005
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userName Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityName Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
L1:
return
L0:
ldc "LIFE_COMMUNITY_CREATE_RESULT"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
ifne L3
aload 0
aload 2
ldc_w 2131493379
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityName Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultContent Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
return
L3:
aload 0
aload 2
ldc_w 2131493380
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityName Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
return
L2:
ldc "LIFE_COMMUNITY_APPLY_RESULT"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc ""
astore 1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/opretorRole I
iconst_2
if_icmpne L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
ldc_w 2131493313
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L5:
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
ifne L6
aload 0
aload 2
ldc_w 2131493325
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultContent Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
return
L4:
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/opretorRole I
iconst_3
if_icmpne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
ldc_w 2131493326
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L5
L6:
aload 0
aload 2
ldc_w 2131493323
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
return
.limit locals 3
.limit stack 6
.end method

.method private parseApplyerInfo(Lorg/xmlpull/v1/XmlPullParser;I)V
.throws java/io/IOException
.throws org/xmlpull/v1/XmlPullParserException
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L0:
iload 2
iconst_3
if_icmpne L1
aload 3
ldc "user"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
aload 3
ifnull L3
iload 2
iconst_3
if_icmpeq L3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 3
ldc "uid"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userUid J
L3:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L0
L4:
aload 3
ldc "name"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userName Ljava/lang/String;
goto L3
L5:
aload 3
ldc "avatar"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userAvatarUrl Ljava/lang/String;
goto L3
L6:
aload 3
ldc "role"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/opretorRole I
goto L3
L2:
return
.limit locals 4
.limit stack 3
.end method

.method private parserApplyJoinCommunity(Lorg/xmlpull/v1/XmlPullParser;)Z
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L7 to L8 using L2
.catch java/io/IOException from L7 to L8 using L3
.catch org/xmlpull/v1/XmlPullParserException from L9 to L10 using L2
.catch java/io/IOException from L9 to L10 using L3
.catch org/xmlpull/v1/XmlPullParserException from L11 to L12 using L2
.catch java/io/IOException from L11 to L12 using L3
.catch org/xmlpull/v1/XmlPullParserException from L13 to L14 using L2
.catch java/io/IOException from L13 to L14 using L3
.catch org/xmlpull/v1/XmlPullParserException from L15 to L16 using L2
.catch java/io/IOException from L15 to L16 using L3
.catch org/xmlpull/v1/XmlPullParserException from L17 to L18 using L2
.catch java/io/IOException from L17 to L18 using L3
.catch org/xmlpull/v1/XmlPullParserException from L19 to L20 using L2
.catch java/io/IOException from L19 to L20 using L3
.catch org/xmlpull/v1/XmlPullParserException from L21 to L22 using L2
.catch java/io/IOException from L21 to L22 using L3
.catch org/xmlpull/v1/XmlPullParserException from L23 to L24 using L2
.catch java/io/IOException from L23 to L24 using L3
.catch org/xmlpull/v1/XmlPullParserException from L25 to L26 using L2
.catch java/io/IOException from L25 to L26 using L3
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 4
L1:
iload 2
iconst_3
if_icmpne L5
L4:
aload 4
ldc "app"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L27
L5:
aload 4
ifnull L7
iload 2
iconst_3
if_icmpeq L7
L6:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 4
ldc "communityid"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L13
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
L7:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 3
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 5
L8:
iload 3
istore 2
aload 5
astore 4
L9:
aload 5
ldc "result"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
L10:
iload 3
istore 2
aload 5
astore 4
iload 3
iconst_2
if_icmpne L1
L11:
aload 0
aload 1
ldc "value"
invokestatic com/common/android/utils/XMLUtils/getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
L12:
iload 3
istore 2
aload 5
astore 4
goto L1
L2:
astore 1
aload 1
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
iconst_0
ireturn
L13:
aload 4
ldc "name"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L15
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityName Ljava/lang/String;
L14:
goto L7
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L15:
aload 4
ldc "ts"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L17
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/createTime J
L16:
goto L7
L17:
aload 4
ldc "avatar"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L19
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/avatarUrl Ljava/lang/String;
L18:
goto L7
L19:
aload 4
ldc "im_gid"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L21
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityGid I
L20:
goto L7
L21:
aload 4
ldc "verify_info"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L23
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/verifyInfo Ljava/lang/String;
L22:
goto L7
L23:
aload 4
ldc "user"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/parseApplyerInfo(Lorg/xmlpull/v1/XmlPullParser;I)V
L24:
goto L7
L25:
aload 4
ldc "result"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultContent Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultContent Ljava/lang/String;
ifnonnull L7
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultContent Ljava/lang/String;
L26:
goto L7
L27:
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method

.method public analyseXmlDetail(Lorg/xmlpull/v1/XmlPullParser;)Z
aload 0
aload 1
ldc ""
ldc "business"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/parserApplyJoinCommunity(Lorg/xmlpull/v1/XmlPullParser;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/convertToContentValues()Landroid/content/ContentValues;
astore 1
aload 1
ldc "reserve"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
aload 1
ldc_w 2131493333
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "reserve"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/parseFromCursor(Landroid/database/Cursor;)V
return
.limit locals 2
.limit stack 4
.end method

.method public prepareMessage()Z
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/analyseAppMessage(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)Z
pop
ldc "LIFE_COMMUNITY_QUIT_NOTIFY"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "LIFE_COMMUNITY_DELETE_NOTIFY"
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
aload 0
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/initDefaultContent()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/setDisPlayContent(Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public showContactPortrait(Landroid/widget/ImageView;)V
aload 1
ldc_w 2130838811
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method
