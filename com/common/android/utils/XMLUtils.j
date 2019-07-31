.bytecode 50.0
.class public synchronized com/common/android/utils/XMLUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_0
istore 2
aload 0
ldc ""
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
L0:
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/NumberFormatException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
