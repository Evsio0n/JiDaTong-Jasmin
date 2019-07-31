.bytecode 50.0
.class public synchronized com/nd/android/u/chatUtil/ChatXmlUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static transient getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 2
ifnull L10
aload 2
arraylength
ifne L0
L10:
aconst_null
astore 0
L11:
aload 0
areturn
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 5
aload 5
new java/io/ByteArrayInputStream
dup
aload 0
invokevirtual java/lang/String/getBytes()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 5
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
L1:
goto L12
L4:
aload 5
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 3
L5:
goto L12
L6:
aload 5
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 2
arraylength
istore 4
aload 2
arraylength
anewarray java/lang/String
astore 1
L7:
iconst_0
istore 3
L13:
aload 1
astore 0
iload 3
iload 4
if_icmpge L11
L8:
aload 1
iload 3
aload 5
ldc ""
aload 2
iload 3
aaload
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
aastore
L9:
iload 3
iconst_1
iadd
istore 3
goto L13
L2:
astore 0
aload 0
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
goto L14
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L14
L12:
iload 3
iconst_1
if_icmpne L15
L14:
aconst_null
areturn
L15:
iload 3
tableswitch 0
L4
L4
L6
default : L16
L16:
goto L4
.limit locals 6
.limit stack 6
.end method

.method public static getValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L8:
aconst_null
areturn
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 3
aload 3
new java/io/ByteArrayInputStream
dup
aload 0
invokevirtual java/lang/String/getBytes()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 2
L1:
goto L9
L4:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
L5:
goto L9
L6:
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 3
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
astore 0
L7:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
aconst_null
areturn
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L9:
iload 2
iconst_1
if_icmpeq L8
iload 2
tableswitch 0
L4
L4
L6
default : L10
L10:
goto L4
.limit locals 4
.limit stack 4
.end method
