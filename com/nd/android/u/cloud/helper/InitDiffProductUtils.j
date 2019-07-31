.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/InitDiffProductUtils
.super java/lang/Object
.inner class ConfigConst inner com/nd/android/u/cloud/helper/InitDiffProductUtils$ConfigConst outer com/nd/android/u/cloud/helper/InitDiffProductUtils

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getVersionResume(Landroid/content/Context;)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;)Ljava/util/ArrayList<Ljava/lang/String;>;"
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L1 to L4 using L2
.catch java/io/IOException from L1 to L4 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_VERSION_HISTORY Ljava/lang/String;
astore 3
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 1
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 3
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 0
aload 1
aload 0
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
L1:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
iconst_1
if_icmpeq L8
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
tableswitch 2
L6
default : L10
L4:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
L5:
goto L1
L2:
astore 0
aload 0
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
L11:
aconst_null
areturn
L6:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
ldc "\\n"
ldc "\n"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L7:
goto L4
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L11
L8:
aload 0
invokevirtual java/io/InputStream/close()V
L9:
aload 2
areturn
L10:
goto L4
.limit locals 4
.limit stack 4
.end method

.method public static initConfigContent(Landroid/content/Context;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch java/lang/IllegalAccessException from L6 to L7 using L8
.catch java/lang/IllegalArgumentException from L6 to L7 using L9
.catch org/json/JSONException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch java/lang/IllegalAccessException from L10 to L11 using L8
.catch java/lang/IllegalArgumentException from L10 to L11 using L9
.catch org/json/JSONException from L10 to L11 using L2
.catch java/io/IOException from L10 to L11 using L3
.catch java/lang/IllegalAccessException from L12 to L13 using L8
.catch java/lang/IllegalArgumentException from L12 to L13 using L9
.catch org/json/JSONException from L12 to L13 using L2
.catch java/io/IOException from L12 to L13 using L3
.catch java/lang/IllegalAccessException from L13 to L14 using L8
.catch java/lang/IllegalArgumentException from L13 to L14 using L9
.catch org/json/JSONException from L13 to L14 using L2
.catch java/io/IOException from L13 to L14 using L3
.catch org/json/JSONException from L15 to L16 using L2
.catch java/io/IOException from L15 to L16 using L3
.catch org/json/JSONException from L16 to L17 using L2
.catch java/io/IOException from L16 to L17 using L3
.catch org/json/JSONException from L18 to L19 using L2
.catch java/io/IOException from L18 to L19 using L3
.catch org/json/JSONException from L20 to L21 using L2
.catch java/io/IOException from L20 to L21 using L3
.catch org/json/JSONException from L22 to L23 using L2
.catch java/io/IOException from L22 to L23 using L3
.catch java/lang/IllegalAccessException from L24 to L25 using L8
.catch java/lang/IllegalArgumentException from L24 to L25 using L9
.catch org/json/JSONException from L24 to L25 using L2
.catch java/io/IOException from L24 to L25 using L3
.catch java/lang/IllegalAccessException from L25 to L26 using L8
.catch java/lang/IllegalArgumentException from L25 to L26 using L9
.catch org/json/JSONException from L25 to L26 using L2
.catch java/io/IOException from L25 to L26 using L3
.catch org/json/JSONException from L27 to L28 using L2
.catch java/io/IOException from L27 to L28 using L3
.catch java/lang/IllegalAccessException from L29 to L30 using L8
.catch java/lang/IllegalArgumentException from L29 to L30 using L9
.catch org/json/JSONException from L29 to L30 using L2
.catch java/io/IOException from L29 to L30 using L3
.catch java/lang/IllegalAccessException from L30 to L31 using L8
.catch java/lang/IllegalArgumentException from L30 to L31 using L9
.catch org/json/JSONException from L30 to L31 using L2
.catch java/io/IOException from L30 to L31 using L3
.catch java/lang/IllegalAccessException from L32 to L33 using L8
.catch java/lang/IllegalArgumentException from L32 to L33 using L9
.catch org/json/JSONException from L32 to L33 using L2
.catch java/io/IOException from L32 to L33 using L3
iconst_1
istore 4
L0:
aload 0
ldc "appStrConfig"
ldc "UTF-8"
invokestatic com/nd/android/u/cloud/helper/InitDiffProductUtils/readFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L23
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 0
ifnull L23
L4:
ldc com/nd/android/u/cloud/XYExtentConfig
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 5
L5:
aload 5
ifnull L16
L6:
aload 5
arraylength
istore 2
L7:
iconst_0
istore 1
L34:
iload 1
iload 2
if_icmpge L16
aload 5
iload 1
aaload
astore 6
L10:
aload 6
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 7
aload 6
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
astore 8
aload 8
ldc java/lang/String
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L12
aload 6
ldc com/nd/android/u/cloud/XYExtentConfig
aload 0
aload 7
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L11:
goto L35
L12:
aload 8
ldc java/lang/Integer
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L13
aload 8
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "int"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L24
L13:
aload 6
ldc com/nd/android/u/cloud/XYExtentConfig
aload 0
aload 7
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L14:
goto L35
L8:
astore 5
L15:
aload 5
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
L16:
aload 0
ldc "WEIBO_CLOUND_ID"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
aload 0
ldc "WEIBO_APP_KEY"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/WEIBO_APP_KEY Ljava/lang/String;
aload 0
ldc "WEIBO_APP_SECRET"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/WEIBO_APP_SECRET Ljava/lang/String;
aload 0
ldc "WEIBO_SERVER_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/TWEET_SERVER_URL Ljava/lang/String;
aload 0
ldc "WEIBO_FLOWER_SERVER_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/FLOWER_SERVER_URL Ljava/lang/String;
aload 0
ldc "WEIBO_ALBUMAPPNAME"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
aload 0
ldc "ALBUM_SERVER_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/ALBUM_SERVICE_URL Ljava/lang/String;
aload 0
ldc "MAIN_DEFAULT_UNITID"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
aload 0
ldc "MAIN_DOWNLOAD_PATH"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/DOWNLOAD_PATH Ljava/lang/String;
aload 0
ldc "MAIN_LOGIN_API_SERVICE_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/LOGIN_API_SERVICE_URL Ljava/lang/String;
aload 0
ldc "MAIN_OA_SERVER"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/OASERVICEURL Ljava/lang/String;
aload 0
ldc "MAIN_OAP_APPID"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putstatic com/product/android/business/config/Configuration/OAP_APPID I
aload 0
ldc "MAIN_OAP_SERVER"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/OAPSERVICEURL Ljava/lang/String;
aload 0
ldc "MAIN_OAP_SERVER_HTTPS"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/OAPSERVICEURL_HTTPS Ljava/lang/String;
aload 0
ldc "MAIN_PATH"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/PATH Ljava/lang/String;
aload 0
ldc "MAIN_SUGGESTPRODID"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/SUGGESTPRODID Ljava/lang/String;
aload 0
ldc "MAIN_SUGGESTPRODNAME"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/SUGGESTPRODNAME Ljava/lang/String;
aload 0
ldc "MAIN_UPGRADE_PRODUCT"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/MYPRODUCT Ljava/lang/String;
aload 0
ldc "MAIN_UPGRADE_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/OFFICIALWEBSITE_URL Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_LBS_IP"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/ChatConfiguration/LBS_IP Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_LBS_IP_PORT"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/controller/ChatConfiguration/LBS_IP_PORT I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_LBS_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/ChatConfiguration/LBS_URL Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_LBS_PORT"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/controller/ChatConfiguration/LBS_PORT I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_SHARE_FILE_SERVICE_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/ChatConfiguration/SHARE_FILE_SERVICE_URL Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aload 0
ldc "CHAT_PUBLIC_NUMBER_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/ChatConfiguration/PUBLIC_NUMBER_URL Ljava/lang/String;
aload 0
ldc "CHAT_ACTION_KEEPALIVE"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/ACTION_KEEPALIVE Ljava/lang/String;
aload 0
ldc "CONTACT_SENIOR_APPID"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
aload 0
ldc "SENIOR_SYSTEM_SERVER_URL"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putstatic com/product/android/business/config/Configuration/SENIOR_SYSTEM_SERVER_URL Ljava/lang/String;
aload 0
ldc "NEED_SCHOOL_NEWS_HOMEPAGE"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L36
L17:
iconst_1
istore 3
L18:
iload 3
putstatic com/product/android/business/config/Configuration/NEED_SCHOOL_NEWS_HOMEPAGE Z
aload 0
ldc "CONTACT_NEED_NEW_JUNIOR"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L37
L19:
iconst_1
istore 3
L20:
iload 3
putstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
aload 0
ldc "NEED_UNICOMFLOW"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L38
L21:
iload 4
istore 3
L22:
iload 3
putstatic com/product/android/business/config/Configuration/NEED_UNICOMFLOW Z
L23:
return
L24:
aload 8
ldc java/lang/Long
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L25
aload 8
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "long"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L29
L25:
aload 6
ldc com/nd/android/u/cloud/XYExtentConfig
aload 0
aload 7
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L26:
goto L35
L9:
astore 5
L27:
aload 5
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
L28:
goto L16
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
return
L29:
aload 8
ldc java/lang/Boolean
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L30
aload 8
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "boolean"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L35
L30:
aload 0
aload 7
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L39
L31:
iconst_1
istore 3
L32:
aload 6
ldc com/nd/android/u/cloud/XYExtentConfig
iload 3
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L33:
goto L35
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
return
L39:
iconst_0
istore 3
goto L32
L36:
iconst_0
istore 3
goto L18
L37:
iconst_0
istore 3
goto L20
L38:
iconst_0
istore 3
goto L22
L35:
iload 1
iconst_1
iadd
istore 1
goto L34
.limit locals 9
.limit stack 4
.end method

.method private static readFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/io/IOException
aload 0
ifnull L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aconst_null
areturn
L1:
aload 0
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 0
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
aload 0
invokevirtual java/io/InputStream/available()I
newarray byte
astore 3
aload 0
aload 3
invokevirtual java/io/InputStream/read([B)I
pop
aload 3
aload 2
invokestatic org/apache/http/util/EncodingUtils/getString([BLjava/lang/String;)Ljava/lang/String;
astore 2
aload 1
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 0
invokevirtual java/io/InputStream/close()V
aload 2
areturn
.limit locals 4
.limit stack 2
.end method
