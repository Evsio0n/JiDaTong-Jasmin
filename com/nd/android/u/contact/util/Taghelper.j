.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/util/Taghelper
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "Taghelper"

.field private static 'instance' Lcom/nd/android/u/contact/util/Taghelper;

.field private 'mcomments' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mgroupNames' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mtagMaps' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;>;"

.method static <clinit>()V
new com/nd/android/u/contact/util/Taghelper
dup
invokespecial com/nd/android/u/contact/util/Taghelper/<init>()V
putstatic com/nd/android/u/contact/util/Taghelper/instance Lcom/nd/android/u/contact/util/Taghelper;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/contact/util/Taghelper/initTagDataByXml()Ljava/util/List;
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/util/Taghelper;
getstatic com/nd/android/u/contact/util/Taghelper/instance Lcom/nd/android/u/contact/util/Taghelper;
ifnonnull L0
new com/nd/android/u/contact/util/Taghelper
dup
invokespecial com/nd/android/u/contact/util/Taghelper/<init>()V
putstatic com/nd/android/u/contact/util/Taghelper/instance Lcom/nd/android/u/contact/util/Taghelper;
L0:
getstatic com/nd/android/u/contact/util/Taghelper/instance Lcom/nd/android/u/contact/util/Taghelper;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getComment(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public getComments()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupName(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public getGroupNames()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTagMaps()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;>;"
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initTagDataByXml()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/TagInfo;>;"
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L10
.catch java/io/IOException from L8 to L9 using L11
.catch org/xmlpull/v1/XmlPullParserException from L12 to L13 using L10
.catch java/io/IOException from L12 to L13 using L11
.catch org/xmlpull/v1/XmlPullParserException from L13 to L14 using L15
.catch java/io/IOException from L13 to L14 using L16
.catch org/xmlpull/v1/XmlPullParserException from L14 to L17 using L15
.catch java/io/IOException from L14 to L17 using L16
.catch org/xmlpull/v1/XmlPullParserException from L18 to L19 using L15
.catch java/io/IOException from L18 to L19 using L16
.catch org/xmlpull/v1/XmlPullParserException from L20 to L21 using L10
.catch java/io/IOException from L20 to L21 using L11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$raw/tags I
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
astore 7
aconst_null
astore 3
aconst_null
astore 2
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 6
aload 2
astore 5
aload 3
astore 4
L0:
aload 6
aload 7
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
L1:
aload 2
astore 5
aload 3
astore 4
L4:
aload 6
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 1
L5:
aconst_null
astore 3
aconst_null
astore 2
goto L22
L23:
aload 2
astore 5
aload 2
astore 4
L6:
aload 6
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 1
L7:
goto L22
L8:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L9:
aload 4
astore 2
goto L23
L12:
aload 6
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "tagitem"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L24
new com/product/android/commonInterface/contact/TagInfo
dup
invokespecial com/product/android/commonInterface/contact/TagInfo/<init>()V
astore 3
L13:
aload 6
aconst_null
ldc "tid"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 4
aload 4
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L14
aload 3
new java/lang/Integer
dup
aload 4
invokespecial java/lang/Integer/<init>(Ljava/lang/String;)V
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/product/android/commonInterface/contact/TagInfo/setTagid(I)V
L14:
aload 3
aload 6
aconst_null
ldc "tagname"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokevirtual com/product/android/commonInterface/contact/TagInfo/setTagname(Ljava/lang/String;)V
aload 3
aload 6
aconst_null
ldc "groupname"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokevirtual com/product/android/commonInterface/contact/TagInfo/setGroupname(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
aload 3
invokevirtual com/product/android/commonInterface/contact/TagInfo/getGroupname()Ljava/lang/String;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L18
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
aload 3
invokevirtual com/product/android/commonInterface/contact/TagInfo/getGroupname()Ljava/lang/String;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L17:
goto L25
L18:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
aload 3
invokevirtual com/product/android/commonInterface/contact/TagInfo/getGroupname()Ljava/lang/String;
aload 4
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
aload 3
invokevirtual com/product/android/commonInterface/contact/TagInfo/getGroupname()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
aload 6
aconst_null
ldc "comment"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L19:
goto L25
L15:
astore 3
aload 2
astore 4
aload 3
astore 2
L26:
aload 2
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
aload 4
areturn
L27:
aload 3
ifnull L24
L20:
aload 6
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "smiley"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L24
aload 2
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L21:
aconst_null
astore 3
goto L23
L28:
aload 2
areturn
L3:
astore 2
L29:
aload 2
invokevirtual java/io/IOException/printStackTrace()V
aload 5
areturn
L11:
astore 3
aload 2
astore 5
aload 3
astore 2
goto L29
L16:
astore 3
aload 2
astore 5
aload 3
astore 2
goto L29
L2:
astore 2
goto L26
L10:
astore 3
aload 2
astore 4
aload 3
astore 2
goto L26
L22:
iload 1
iconst_1
if_icmpeq L28
iload 1
tableswitch 0
L8
L24
L12
L27
default : L24
L24:
goto L23
L25:
goto L23
.limit locals 8
.limit stack 4
.end method

.method public setComments(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/util/Taghelper/mcomments Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setGroupNames(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/util/Taghelper/mgroupNames Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setTagMaps(Ljava/util/HashMap;)V
.signature "(Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/util/Taghelper/mtagMaps Ljava/util/HashMap;
return
.limit locals 2
.limit stack 2
.end method
