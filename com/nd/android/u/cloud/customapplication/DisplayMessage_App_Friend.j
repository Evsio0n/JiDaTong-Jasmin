.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Friend
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public analyseXmlDetail(Lorg/xmlpull/v1/XmlPullParser;)Z
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
aload 1
ldc ""
ldc "business"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L11
aload 3
ldc "FRIEND_RECOMMAND"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
L11:
iconst_0
ireturn
L0:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L1:
iload 2
iconst_3
if_icmpne L5
L4:
aload 3
ldc "app"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L9
L5:
aload 3
ifnull L7
iload 2
iconst_3
if_icmpeq L7
L6:
aload 3
ldc "total"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Friend/total I
L7:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L8:
goto L1
L9:
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493169
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Friend/displayContent Ljava/lang/String;
L10:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public displayPortrait(Landroid/widget/ImageView;Z)V
aload 1
ldc_w 2130838433
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
aload 1
ldc_w 2131493170
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public prepareMessage()Z
aload 0
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/analyseAppMessage(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)Z
pop
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public showContactPortrait(Landroid/widget/ImageView;)V
aload 1
ldc_w 2130838433
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method
