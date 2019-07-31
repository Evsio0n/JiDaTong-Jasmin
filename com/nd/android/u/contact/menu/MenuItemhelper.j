.bytecode 50.0
.class public synchronized com/nd/android/u/contact/menu/MenuItemhelper
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/menu/MenuItemhelper;

.field private 'menuItemMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;>;"

.method static <clinit>()V
new com/nd/android/u/contact/menu/MenuItemhelper
dup
invokespecial com/nd/android/u/contact/menu/MenuItemhelper/<init>()V
putstatic com/nd/android/u/contact/menu/MenuItemhelper/instance Lcom/nd/android/u/contact/menu/MenuItemhelper;
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
putfield com/nd/android/u/contact/menu/MenuItemhelper/menuItemMap Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/menu/MenuItemhelper;
getstatic com/nd/android/u/contact/menu/MenuItemhelper/instance Lcom/nd/android/u/contact/menu/MenuItemhelper;
ifnonnull L0
new com/nd/android/u/contact/menu/MenuItemhelper
dup
invokespecial com/nd/android/u/contact/menu/MenuItemhelper/<init>()V
putstatic com/nd/android/u/contact/menu/MenuItemhelper/instance Lcom/nd/android/u/contact/menu/MenuItemhelper;
L0:
getstatic com/nd/android/u/contact/menu/MenuItemhelper/instance Lcom/nd/android/u/contact/menu/MenuItemhelper;
areturn
.limit locals 0
.limit stack 2
.end method

.method private initMenuItemList(Landroid/content/Context;I)Ljava/util/List;
.signature "(Landroid/content/Context;I)Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"
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
.catch org/xmlpull/v1/XmlPullParserException from L14 to L15 using L16
.catch java/io/IOException from L14 to L15 using L17
.catch org/xmlpull/v1/XmlPullParserException from L18 to L19 using L16
.catch java/io/IOException from L18 to L19 using L17
.catch org/xmlpull/v1/XmlPullParserException from L20 to L21 using L10
.catch java/io/IOException from L20 to L21 using L11
aload 1
ifnonnull L22
aconst_null
areturn
L22:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
astore 10
aconst_null
astore 6
aconst_null
astore 5
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 9
aload 5
astore 7
aload 6
astore 8
L0:
aload 9
aload 10
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
L1:
aload 5
astore 7
aload 6
astore 8
L4:
aload 9
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 4
L5:
aconst_null
astore 6
aconst_null
astore 5
iconst_1
istore 3
goto L23
L24:
aload 5
astore 7
aload 5
astore 8
L6:
aload 9
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 4
L7:
goto L23
L8:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L9:
aload 7
astore 5
goto L24
L12:
aload 9
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "menuitem"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
new com/nd/android/u/contact/menu/MenuItem
dup
invokespecial com/nd/android/u/contact/menu/MenuItem/<init>()V
astore 6
L13:
iload 3
iconst_1
iadd
istore 4
L14:
aload 6
iload 3
invokevirtual com/nd/android/u/contact/menu/MenuItem/setId(I)V
aload 6
aload 9
aconst_null
ldc "title"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokevirtual com/nd/android/u/contact/menu/MenuItem/setTitle(Ljava/lang/String;)V
aload 6
aload 9
aconst_null
ldc "backgroup"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokevirtual com/nd/android/u/contact/menu/MenuItem/setBg(Ljava/lang/String;)V
aload 6
invokevirtual com/nd/android/u/contact/menu/MenuItem/getBg()Ljava/lang/String;
ifnull L18
ldc ""
aload 6
invokevirtual com/nd/android/u/contact/menu/MenuItem/getBg()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L18
aload 6
aload 0
aload 1
aload 6
invokevirtual com/nd/android/u/contact/menu/MenuItem/getBg()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/menu/MenuItemhelper/getResourceId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/menu/MenuItem/setRId(I)V
L15:
iload 4
istore 3
goto L24
L18:
aload 6
iconst_0
invokevirtual com/nd/android/u/contact/menu/MenuItem/setRId(I)V
L19:
iload 4
istore 3
goto L24
L26:
aload 6
ifnull L25
L20:
aload 9
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "menuitem"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L21:
aconst_null
astore 6
goto L24
L27:
aload 5
astore 1
L28:
aload 0
getfield com/nd/android/u/contact/menu/MenuItemhelper/menuItemMap Ljava/util/Map;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
areturn
L2:
astore 5
aload 7
astore 1
L29:
aload 5
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
goto L28
L3:
astore 5
aload 8
astore 1
L30:
aload 5
invokevirtual java/io/IOException/printStackTrace()V
goto L28
L11:
astore 6
aload 5
astore 1
aload 6
astore 5
goto L30
L17:
astore 6
aload 5
astore 1
aload 6
astore 5
goto L30
L10:
astore 6
aload 5
astore 1
aload 6
astore 5
goto L29
L16:
astore 6
aload 5
astore 1
aload 6
astore 5
goto L29
L23:
iload 4
iconst_1
if_icmpeq L27
iload 4
tableswitch 0
L8
L25
L12
L26
default : L25
L25:
goto L24
.limit locals 11
.limit stack 4
.end method

.method public getMenuItemList(Landroid/content/Context;I)Ljava/util/List;
.signature "(Landroid/content/Context;I)Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"
aload 0
getfield com/nd/android/u/contact/menu/MenuItemhelper/menuItemMap Ljava/util/Map;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/contact/menu/MenuItemhelper/menuItemMap Ljava/util/Map;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
areturn
L0:
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/contact/menu/MenuItemhelper/initMenuItemList(Landroid/content/Context;I)Ljava/util/List;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getResourceId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 2
ldc "drawable"
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aload 1
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 5
.end method
