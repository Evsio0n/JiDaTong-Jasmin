.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/SynOapApp
.super java/lang/Object
.inner class static final inner com/nd/android/u/contact/business/SynOapApp$1
.inner class static final inner com/nd/android/u/contact/business/SynOapApp$2
.inner class static final inner com/nd/android/u/contact/business/SynOapApp$3

.field private static final 'TAG' Ljava/lang/String; = "SynOapApp"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static compare(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
.signature "(Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;)Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 4
aload 0
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 5
iconst_0
istore 3
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 6
L2:
iload 3
istore 2
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 7
aload 5
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 7
getfield com/product/android/commonInterface/contact/OapApp/appid I
if_icmpne L2
aload 5
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 7
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iconst_1
istore 3
iload 3
istore 2
aload 5
getfield com/product/android/commonInterface/contact/OapApp/updatetime I
aload 7
getfield com/product/android/commonInterface/contact/OapApp/updatetime I
if_icmpeq L3
aload 5
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 5
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(Ljava/lang/String;)V
iload 3
istore 2
L3:
iload 2
ifne L0
aload 4
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 4
areturn
.limit locals 8
.limit stack 3
.end method

.method public static getAppInfoByDB()V
iconst_0
invokestatic com/nd/android/u/contact/business/SynOapApp/getAppInfoByDB(I)V
return
.limit locals 0
.limit stack 1
.end method

.method public static getAppInfoByDB(I)V
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsDisplay()Ljava/util/Vector; 0
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 1
L0:
iload 0
ifne L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppList(Ljava/util/Vector;)V
L2:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppAndTypeList(Ljava/util/Vector;)V
return
L1:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setCommonAppList(Ljava/util/Vector;)V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public static getApplistById(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 2
astore 1
aload 2
ifnonnull L0
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsAll()Ljava/util/Vector; 0
astore 1
L0:
aload 1
ifnull L1
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 2
iload 0
aload 2
getfield com/product/android/commonInterface/contact/OapApp/appid I
if_icmpne L2
aload 2
getfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L3
aload 2
getfield com/product/android/commonInterface/contact/OapApp/open_url Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L2
L3:
aload 3
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L1:
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/new_msg_notification I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapApp/setName(Ljava/lang/String;)V
aload 1
iconst_m1
invokevirtual com/product/android/commonInterface/contact/OapApp/setAppid(I)V
aload 3
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/menuicon?appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 3
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&unit_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 1
astore 3
aload 2
ifnull L1
aload 1
astore 3
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L1:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public static getMenuTypeIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/typeicon?code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 2
astore 0
aload 1
ifnull L0
aload 2
astore 0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L0:
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 3
iload 0
aload 3
getfield com/product/android/commonInterface/contact/OapApp/appid I
if_icmpne L0
aload 1
aload 3
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 3
areturn
L1:
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
iload 0
aload 1
invokeinterface com/nd/android/u/contact/dao/OapAppDao/findOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp; 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public static initAppInfo(J)Z
.throws com/common/android/utils/http/HttpException
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 3
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
lload 0
invokevirtual com/nd/android/u/contact/com/OapAppCom/getApplist(J)Ljava/util/Vector;
astore 6
iload 5
istore 2
aload 6
ifnull L0
iload 5
istore 2
aload 6
invokevirtual java/util/Vector/size()I
ifle L0
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsAll()Ljava/util/Vector; 0
astore 7
iload 4
istore 2
aload 7
ifnull L1
iload 4
istore 2
aload 7
invokevirtual java/util/Vector/size()I
ifle L1
aload 7
aload 6
invokestatic com/nd/android/u/contact/business/SynOapApp/compare(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
astore 8
aload 8
invokevirtual java/util/Vector/size()I
ifle L2
iconst_1
istore 3
L2:
aload 8
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 8
L3:
iload 3
istore 2
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 9
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
aload 9
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 9
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapAppDao/deleteOapApp(ILjava/lang/String;)Z 2
pop
goto L3
L1:
aload 6
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 8
L4:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 9
iload 2
istore 3
aload 7
ifnull L6
iload 2
istore 3
aload 7
invokevirtual java/util/Vector/size()I
ifle L6
aload 7
aload 9
invokevirtual java/util/Vector/contains(Ljava/lang/Object;)Z
ifne L7
iconst_1
istore 3
L6:
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapAppDao/insertOapApp(Lcom/product/android/commonInterface/contact/OapApp;)V 1
iload 3
istore 2
goto L4
L7:
iconst_0
istore 3
goto L6
L5:
new com/nd/android/u/contact/business/SynOapApp$1
dup
aload 6
invokespecial com/nd/android/u/contact/business/SynOapApp$1/<init>(Ljava/util/Vector;)V
invokevirtual com/nd/android/u/contact/business/SynOapApp$1/start()V
L0:
iload 2
ireturn
.limit locals 10
.limit stack 3
.end method

.method public static initAppType()Z
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getMenuTypeList()Ljava/util/List;
astore 0
aload 0
ifnull L0
ldc com/nd/android/u/contact/dao/OapAppTypeDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppTypeDao
invokeinterface com/nd/android/u/contact/dao/OapAppTypeDao/deleteOapAppType()Z 0
pop
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapAppType
astore 1
ldc com/nd/android/u/contact/dao/OapAppTypeDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppTypeDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapAppTypeDao/insertOapAppType(Lcom/nd/android/u/contact/dataStructure/OapAppType;)V 1
goto L1
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isExist(ILjava/lang/String;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
iload 0
getstatic com/product/android/business/config/Configuration/TASKAPPID I
if_icmpne L1
aload 1
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
L1:
iload 0
getstatic com/product/android/business/config/Configuration/SECRETLOVEAPPID I
if_icmpne L0
L2:
iconst_0
ireturn
L0:
iload 0
getstatic com/product/android/business/config/Configuration/LOTTER_SYSTEM_APPID I
if_icmpne L3
aload 1
getstatic com/product/android/business/config/Configuration/LOTTER_SYSTEM_APPCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_0
ireturn
L3:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
astore 3
aload 3
ifnull L4
aload 3
astore 2
aload 3
invokevirtual java/util/Vector/isEmpty()Z
ifeq L5
L4:
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsAll()Ljava/util/Vector; 0
astore 3
aload 3
astore 2
aload 3
ifnonnull L5
iconst_0
ireturn
L5:
aload 2
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 2
L6:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 3
iload 0
aload 3
getfield com/product/android/commonInterface/contact/OapApp/appid I
if_icmpne L6
aload 1
aload 3
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
iconst_1
ireturn
L7:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static isInstallApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
iconst_1
ireturn
L2:
aload 0
invokevirtual com/product/android/commonInterface/contact/OapApp/getPacket_name()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
ldc ""
astore 0
aload 2
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
iconst_0
istore 1
L3:
iload 1
aload 3
arraylength
if_icmpge L4
aload 3
iload 1
aaload
astore 4
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
astore 2
aload 4
ifnull L6
L5:
aload 4
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 0
astore 2
aload 4
iconst_0
aaload
ldc "pkg"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 4
iconst_1
aaload
astore 2
L6:
iload 1
iconst_1
iadd
istore 1
aload 2
astore 0
goto L3
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
invokestatic com/common/android/utils/PackageUtils/hasPackageName(Landroid/content/Context;Ljava/lang/String;)Z
ifeq L1
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public static jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L7 to L8 using L9
.catch org/json/JSONException from L10 to L11 using L2
iload 0
iconst_m1
if_icmpeq L12
aload 1
ifnull L12
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
L12:
return
L13:
iload 5
istore 7
iload 0
bipush 15
if_icmpne L14
iload 5
istore 7
ldc "2011"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L14
iconst_1
istore 7
L14:
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
aload 1
invokeinterface com/nd/android/u/contact/dao/OapAppDao/findOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp; 2
astore 1
aload 1
astore 9
aload 1
ifnonnull L15
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 9
L15:
iload 0
ldc_w 100003
if_icmpne L16
aload 9
getstatic com/product/android/business/config/Configuration/CHINAPARTNERID I
putfield com/product/android/commonInterface/contact/OapApp/appid I
aload 9
getstatic com/product/android/business/config/Configuration/CHINAPARTNERCODE Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 9
ldc "\u4e2d\u56fd\u5408\u4f19\u4eba"
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
aload 9
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/display I
aload 9
ldc "pkg=com.nd.crowdfunding"
putfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
aload 9
ldc "chinese_partner"
putfield com/product/android/commonInterface/contact/OapApp/product_code Ljava/lang/String;
aload 9
ldc "http://partner.99.com/upload/package/chinesepartner.apk"
putfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
L16:
iload 0
ldc_w 100004
if_icmpne L17
L17:
aload 9
invokevirtual com/product/android/commonInterface/contact/OapApp/getBuss_url()Ljava/lang/String;
astore 1
aload 2
ifnull L18
aload 1
ifnull L18
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L18
aload 1
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L18
aload 1
ldc "\\{SID\\}"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "\\{UID\\}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "\\{BUSSID\\}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 3
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 9
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
iload 7
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L18:
aload 9
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
astore 1
aload 1
ifnull L19
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L19
aload 1
ldc "\\{SID\\}"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "\\{UID\\}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 3
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 9
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
iload 7
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L19:
aload 9
invokevirtual com/product/android/commonInterface/contact/OapApp/getPacket_name()Ljava/lang/String;
astore 11
aload 11
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 14
ldc ""
astore 8
ldc ""
astore 1
ldc ""
astore 10
aload 11
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 15
iconst_0
istore 0
L20:
iload 0
aload 15
arraylength
if_icmpge L21
aload 15
iload 0
aaload
astore 16
ldc ""
aload 16
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L22
aload 10
astore 13
aload 8
astore 11
aload 1
astore 12
aload 16
ifnull L23
L22:
aload 16
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 16
aload 16
iconst_0
aaload
ldc "pkg"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L24
aload 16
iconst_1
aaload
astore 8
L24:
aload 16
iconst_0
aaload
ldc "view"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L25
aload 16
iconst_1
aaload
astore 1
L25:
aload 10
astore 13
aload 8
astore 11
aload 1
astore 12
aload 16
iconst_0
aaload
ldc "func"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L23
aload 16
iconst_1
aaload
astore 13
aload 1
astore 12
aload 8
astore 11
L23:
iload 0
iconst_1
iadd
istore 0
aload 13
astore 10
aload 11
astore 8
aload 12
astore 1
goto L20
L21:
aload 8
ldc "SELF"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L26
aload 1
ifnull L12
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L12
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
aload 3
aload 1
invokevirtual android/content/Intent/setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L26:
aload 3
aload 8
invokestatic com/common/android/utils/PackageUtils/hasPackageName(Landroid/content/Context;Ljava/lang/String;)Z
ifeq L27
L0:
aload 14
ldc "comm_src"
aload 3
getstatic com/nd/android/u/contact/R$string/app_name I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "func"
aload 10
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "username"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "sid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "oap_uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 14
ldc "uap_uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 2
ifnull L4
L3:
aload 14
ldc "bussid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 14
ldc "extra_param"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 8
ldc "com.momo.market"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIs_phone()I
iconst_1
if_icmpne L10
aload 14
ldc "mobile"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "mobile_is_valid"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 1
ifnull L28
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L28
aload 2
ldc "Android.intent.action.MAIN"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 6
new android/content/ComponentName
dup
aload 8
aload 1
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 9
L7:
aload 6
aload 9
sipush 128
invokevirtual android/content/pm/PackageManager/getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
pop
aload 2
aload 8
aload 1
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L8:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "callFrom91U"
aload 14
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 3
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L10:
aload 14
ldc "mobile"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 14
ldc "mobile_is_valid"
ldc "0"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L11:
goto L6
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
L9:
astore 1
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
aload 2
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
aload 8
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
aload 2
iconst_0
invokevirtual android/content/pm/PackageManager/queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
astore 1
aload 1
ifnull L8
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ResolveInfo
astore 1
aload 1
ifnull L8
aload 2
new android/content/ComponentName
dup
aload 1
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
aload 1
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/name Ljava/lang/String;
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L8
L28:
aload 2
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
aload 8
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 2
iconst_0
invokevirtual android/content/pm/PackageManager/queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
astore 1
aload 1
ifnull L8
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ResolveInfo
astore 1
aload 1
ifnull L8
aload 2
new android/content/ComponentName
dup
aload 1
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
aload 1
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/name Ljava/lang/String;
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L8
L27:
aload 9
aload 3
invokestatic com/nd/android/u/contact/business/SynOapApp/showLoadDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
return
.limit locals 17
.limit stack 5
.end method

.method public static jumpActivity(Landroid/content/Context;Landroid/os/Bundle;)V
aload 1
ldc "appid"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
aload 1
ldc "permcode"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "bussid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 1
ldc "extra_param"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
iload 2
aload 3
aload 4
aload 0
aload 1
ldc "returndesk"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
iconst_0
aload 5
invokestatic com/nd/android/u/contact/business/SynOapApp/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
return
.limit locals 6
.limit stack 7
.end method

.method public static jumpActivity(Lcom/product/android/commonInterface/contact/OapApp;Landroid/app/Activity;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L5
aload 0
ifnull L6
aload 1
ifnonnull L7
L6:
return
L7:
aload 0
invokevirtual com/product/android/commonInterface/contact/OapApp/getPacket_name()Ljava/lang/String;
astore 6
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
aload 6
ifnull L6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
ldc ""
astore 4
ldc ""
astore 3
ldc ""
astore 5
aload 6
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 10
iconst_0
istore 2
L8:
iload 2
aload 10
arraylength
if_icmpge L9
aload 10
iload 2
aaload
astore 11
ldc ""
aload 11
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
aload 5
astore 8
aload 4
astore 6
aload 3
astore 7
aload 11
ifnull L11
L10:
aload 11
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 11
aload 11
iconst_0
aaload
ldc "pkg"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L12
aload 11
iconst_1
aaload
astore 4
L12:
aload 11
iconst_0
aaload
ldc "view"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
aload 11
iconst_1
aaload
astore 3
L13:
aload 5
astore 8
aload 4
astore 6
aload 3
astore 7
aload 11
iconst_0
aaload
ldc "func"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
aload 11
iconst_1
aaload
astore 8
aload 3
astore 7
aload 4
astore 6
L11:
iload 2
iconst_1
iadd
istore 2
aload 8
astore 5
aload 6
astore 4
aload 7
astore 3
goto L8
L9:
aload 1
aload 4
invokestatic com/common/android/utils/PackageUtils/hasPackageName(Landroid/content/Context;Ljava/lang/String;)Z
ifeq L14
L0:
aload 9
ldc "comm_src"
aload 1
getstatic com/nd/android/u/contact/R$string/app_name I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "func"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "username"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "sid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "oap_uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 9
ldc "uap_uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 0
aload 3
ifnull L15
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L15
aload 0
ldc "Android.intent.action.MAIN"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 5
new android/content/ComponentName
dup
aload 4
aload 3
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 6
L3:
aload 5
aload 6
sipush 128
invokevirtual android/content/pm/PackageManager/getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
pop
aload 0
aload 4
aload 3
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L4:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "callFrom91U"
aload 9
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L5:
astore 3
aload 3
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
aload 0
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 4
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
aload 0
iconst_0
invokevirtual android/content/pm/PackageManager/queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
astore 3
aload 3
ifnull L4
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ResolveInfo
astore 3
aload 3
ifnull L4
aload 0
new android/content/ComponentName
dup
aload 3
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
aload 3
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/name Ljava/lang/String;
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L4
L15:
aload 0
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 4
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
iconst_0
invokevirtual android/content/pm/PackageManager/queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
astore 3
aload 3
ifnull L4
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ResolveInfo
astore 3
aload 3
ifnull L4
aload 0
new android/content/ComponentName
dup
aload 3
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
aload 3
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/name Ljava/lang/String;
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L4
L14:
aload 0
aload 1
invokestatic com/nd/android/u/contact/business/SynOapApp/showLoadDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
return
.limit locals 12
.limit stack 5
.end method

.method public static showLoadDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
return
L1:
aload 1
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
aload 1
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
new android/app/AlertDialog$Builder
dup
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/uninstall_app_download_now I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/business/SynOapApp$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/business/SynOapApp$2/<init>(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/business/SynOapApp$3
dup
invokespecial com/nd/android/u/contact/business/SynOapApp$3/<init>()V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 3
.limit stack 6
.end method
