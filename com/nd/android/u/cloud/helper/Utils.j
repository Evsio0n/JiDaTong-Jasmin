.bytecode 50.0
.class public final synchronized com/nd/android/u/cloud/helper/Utils
.super java/lang/Object
.inner class static final inner com/nd/android/u/cloud/helper/Utils$1
.inner class static final inner com/nd/android/u/cloud/helper/Utils$2
.inner class static final inner com/nd/android/u/cloud/helper/Utils$3
.inner class public static abstract interface DoDialogListener inner com/nd/android/u/cloud/helper/Utils$DoDialogListener outer com/nd/android/u/cloud/helper/Utils

.field private static final 'ACTIVITY_GUIDE' Ljava/lang/String; = "activity_guide"

.field private static final 'HAS_BIND' Ljava/lang/String; = "has_bind"

.field private static final 'HAS_GUIDE' Ljava/lang/String; = "has_guide"

.field private static final 'REGEX_EMAIL' Ljava/lang/String; = "^[0-9a-zA-Z._-]+@(([0-9a-zA-Z]+)[.])+[0-9a-zA-Z]{2,}$"

.field private static final 'REGEX_MOBILE' Ljava/lang/String; = "^((13[0-9])|145|147|(15[^4,\\D])|(18[0-9]))\\d{8}$"

.field private static final 'REGEX_PASS' Ljava/lang/String; = "^[A-Za-z0-9]{7,12}$"

.field private static final 'SHOW_WELCOME' Ljava/lang/String; = "show_welcome"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static CheckIsEmail(Ljava/lang/String;)Z
ldc "^[0-9a-zA-Z._-]+@(([0-9a-zA-Z]+)[.])+[0-9a-zA-Z]{2,}$"
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/matches(Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static CheckIsMobileNum(Ljava/lang/String;)Z
ldc "^((13[0-9])|145|147|(15[^4,\\D])|(18[0-9]))\\d{8}$"
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/matches(Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static CkeckPass(Ljava/lang/String;)Z
ldc "^[A-Za-z0-9]{7,12}$"
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/matches(Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static GetFileBytes(Ljava/lang/String;)[B
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L5 to L6 using L7
.catch java/io/IOException from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch java/io/FileNotFoundException from L10 to L11 using L7
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/io/FileNotFoundException from L12 to L13 using L7
.catch java/io/IOException from L12 to L13 using L8
.catch all from L12 to L13 using L9
.catch java/io/FileNotFoundException from L14 to L15 using L7
.catch java/io/IOException from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch java/lang/Exception from L16 to L17 using L18
.catch all from L19 to L20 using L4
.catch java/lang/Exception from L21 to L22 using L23
.catch all from L24 to L25 using L4
.catch java/lang/Exception from L26 to L27 using L28
.catch java/lang/Exception from L29 to L30 using L31
aconst_null
astore 8
aconst_null
astore 6
aconst_null
astore 9
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 4
aconst_null
astore 5
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 6
astore 4
aload 9
astore 5
L5:
aload 0
invokevirtual java/io/FileInputStream/available()I
istore 3
L6:
iconst_0
istore 1
aload 6
astore 4
aload 9
astore 5
L10:
iload 3
newarray byte
astore 6
L11:
iload 1
iload 3
if_icmpge L32
iload 3
iload 1
isub
sipush 1024
if_icmplt L33
aload 6
astore 4
aload 6
astore 5
L12:
aload 0
aload 6
iload 1
sipush 1024
invokevirtual java/io/FileInputStream/read([BII)I
istore 2
L13:
goto L34
L33:
aload 6
astore 4
aload 6
astore 5
L14:
aload 0
aload 6
iload 1
iload 3
iload 1
isub
invokevirtual java/io/FileInputStream/read([BII)I
istore 2
L15:
goto L34
L32:
aload 0
ifnull L17
L16:
aload 0
invokevirtual java/io/FileInputStream/close()V
L17:
aload 6
areturn
L18:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aload 6
areturn
L2:
astore 6
aload 7
astore 0
L35:
aload 5
astore 4
L19:
aload 6
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L20:
aload 0
astore 6
aload 5
ifnull L17
L21:
aload 5
invokevirtual java/io/FileInputStream/close()V
L22:
aload 0
areturn
L23:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
areturn
L3:
astore 6
aload 10
astore 5
aload 8
astore 0
L36:
aload 5
astore 4
L24:
aload 6
invokevirtual java/io/IOException/printStackTrace()V
L25:
aload 0
astore 6
aload 5
ifnull L17
L26:
aload 5
invokevirtual java/io/FileInputStream/close()V
L27:
aload 0
areturn
L28:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
areturn
L4:
astore 0
L37:
aload 4
ifnull L30
L29:
aload 4
invokevirtual java/io/FileInputStream/close()V
L30:
aload 0
athrow
L31:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
goto L30
L9:
astore 5
aload 0
astore 4
aload 5
astore 0
goto L37
L8:
astore 6
aload 0
astore 5
aload 4
astore 0
goto L36
L7:
astore 6
aload 0
astore 4
aload 5
astore 0
aload 4
astore 5
goto L35
L34:
iload 1
iload 2
iadd
istore 1
goto L11
.limit locals 11
.limit stack 5
.end method

.method public static IsActivityGuided(Landroid/content/Context;Ljava/lang/String;)Z
aload 0
ifnull L0
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "activity_guide"
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
ldc "\\|"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L0
aload 1
aload 0
iload 2
aaload
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
iconst_1
ireturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 3
.end method

.method private static byteToHex([B)Ljava/lang/String;
new java/util/Formatter
dup
invokespecial java/util/Formatter/<init>()V
astore 3
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
ldc "%02x"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
iload 1
baload
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
aastore
invokevirtual java/util/Formatter/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 3
invokevirtual java/util/Formatter/toString()Ljava/lang/String;
astore 0
aload 3
invokevirtual java/util/Formatter/close()V
aload 0
areturn
.limit locals 4
.limit stack 7
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;)V
aload 0
aload 1
new com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam
dup
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_UPGRADE_APPID I
getstatic com/product/android/business/config/Configuration/MYPRODUCT Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Utils/getVersionCode(Landroid/content/Context;)I
ldc ""
ldc "http://oa99.jmu.edu.cn/v2/app"
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/<init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/checkUpgrade(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
return
.limit locals 2
.limit stack 10
.end method

.method public static clearAccountInfo(Landroid/content/Context;)V
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
iconst_0
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/setCount(I)V
invokestatic com/product/android/business/login/LoginFlag/saveDEFAULTEnumType()V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/clearData()V
invokestatic com/nd/android/u/cloud/helper/Utils/switchUserPreprocess()V
return
.limit locals 1
.limit stack 2
.end method

.method private static clearChatRelative()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/clearChatRelative()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/closeChatDb()V
return
.limit locals 0
.limit stack 1
.end method

.method private static clearMeRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static clearMoreRelative()V
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/clear()V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/clearAppVariable()V
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/stopAlarm()V
return
.limit locals 0
.limit stack 1
.end method

.method private static clearOtherRelative()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/clearGroupsList()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/clear()V
invokestatic com/nd/android/u/cloud/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/cloud/cache/ClassRelationCache;
invokevirtual com/nd/android/u/cloud/cache/ClassRelationCache/clear()V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual com/nd/android/u/contact/db/NDDatabase/close()V
L0:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/clearUnitVariable()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/clearUnitVariable()V
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/clearScoreData()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/reInitValue()V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
invokevirtual com/product/android/business/manager/DataUpdateManager/clearJson()V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/clearCommonVariable()V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method private static clearSnsRelative(Landroid/content/Context;)V
aload 0
aconst_null
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
iconst_0
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/closeDB()V
return
.limit locals 1
.limit stack 2
.end method

.method private static clearWaterFallRelative()V
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/clearGroupCache()V 0
return
.limit locals 0
.limit stack 2
.end method

.method public static getBlowfish(Landroid/content/Context;)Ljava/lang/String;
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 1
aload 1
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 0
L0:
aload 0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static getGuideKey(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "has_guide"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 95
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method private static getHasBindPhoneKey(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "has_bind"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 95
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/openDatabase(Landroid/content/Context;)V
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aload 0
iconst_1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getFullName(Ljava/lang/String;Z)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static hasBindPhone(Landroid/content/Context;J)Z
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
lload 1
invokestatic com/nd/android/u/cloud/helper/Utils/getHasBindPhoneKey(J)Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static hasGuide(Landroid/content/Context;J)Z
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
lload 1
invokestatic com/nd/android/u/cloud/helper/Utils/getGuideKey(J)Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static hasShowWelcome(Landroid/content/Context;)Z
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "show_welcome"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static hasUnit(Landroid/content/Context;Lcom/product/android/business/login/IGetUserInfo;Z)Z
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
i2l
lstore 3
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lstore 5
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
lstore 7
lload 3
lconst_0
lcmp
ifeq L0
lload 5
lconst_0
lcmp
ifne L1
L0:
iload 2
ifeq L2
lload 7
lconst_0
lcmp
ifne L3
aload 0
lload 5
invokestatic com/nd/rj/common/login/LoginInterfaceManager/delOapUserByOapUid(Landroid/content/Context;J)Z
pop
L4:
aload 0
ldc_w 2131494558
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
L2:
iconst_0
ireturn
L3:
aload 0
lload 7
invokestatic com/nd/rj/common/login/LoginInterfaceManager/delOapUserByUapUid(Landroid/content/Context;J)Z
pop
goto L4
L1:
iconst_1
ireturn
.limit locals 9
.limit stack 4
.end method

.method public static lunchMainFriendActivity(Landroid/content/Context;)V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "id"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static lunchMainLifeActivity(Landroid/content/Context;)V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "id"
iconst_2
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private static matches(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L4 to L5 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
aload 0
invokevirtual java/security/MessageDigest/digest([B)[B
astore 0
L1:
iconst_0
istore 1
L3:
iload 1
aload 0
arraylength
if_icmpge L6
aload 0
iload 1
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
astore 3
aload 3
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L4
aload 2
bipush 48
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
L4:
aload 2
aload 3
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L6:
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 2
.end method

.method private static preloadChatRelative()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
bipush 100
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/loadFromDB(I)V
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
return
.limit locals 0
.limit stack 3
.end method

.method private static preloadMeRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preloadMoreRelative()V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "unit_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L0
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "group_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L1
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
iconst_3
if_icmpeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L1
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L1:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "friend_list_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L2
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_3
if_icmpeq L2
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainFriendRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainFriendRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L2:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "app_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L3
new java/lang/Thread
dup
new com/nd/android/u/cloud/helper/Utils$3
dup
invokespecial com/nd/android/u/cloud/helper/Utils$3/<init>()V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L3:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "flower_msg_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L4
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/business/backgroundRable/UpdateFlowerMsgRable
dup
invokespecial com/nd/android/u/cloud/business/backgroundRable/UpdateFlowerMsgRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L4:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_blacklist_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L5
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/UpdateBlackListRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/UpdateBlackListRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_blacklist_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
L5:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_followlist_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L6
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/business/backgroundRable/UpdateFollowingListRable
dup
invokespecial com/nd/android/u/cloud/business/backgroundRable/UpdateFollowingListRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_followlist_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
L6:
return
.limit locals 0
.limit stack 6
.end method

.method private static preloadOtherRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preloadSnsRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preloadWaterFallRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method public static preloadWhenSuccessfulLogin()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadChatRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadMeRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadSnsRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadWaterFallRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadMoreRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadOtherRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preprocessChatRelative()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/clearChatRelative()V
return
.limit locals 0
.limit stack 1
.end method

.method private static preprocessMeRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preprocessMoreRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preprocessOtherRelative()V
invokestatic com/nd/android/u/cloud/LoginManager/doLoginOut()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preprocessSnsRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method private static preprocessWaterFallRelative()V
return
.limit locals 0
.limit stack 0
.end method

.method public static setActivityIsGuided(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ifnull L0
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
L0:
return
L1:
new java/lang/StringBuffer
dup
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "activity_guide"
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
ldc "|"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
astore 1
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "activity_guide"
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static setBindPhoneFlag(Landroid/content/Context;ZJ)V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
lload 2
invokestatic com/nd/android/u/cloud/helper/Utils/getHasBindPhoneKey(J)Ljava/lang/String;
iload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
.limit locals 4
.limit stack 3
.end method

.method public static setGuideFlag(Landroid/content/Context;ZJ)V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
lload 2
invokestatic com/nd/android/u/cloud/helper/Utils/getGuideKey(J)Ljava/lang/String;
iload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
.limit locals 4
.limit stack 3
.end method

.method public static setHasShowWelcome(Landroid/content/Context;Z)V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "show_welcome"
iload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
L0:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
aload 1
invokevirtual java/security/MessageDigest/reset()V
aload 1
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
invokestatic com/nd/android/u/cloud/helper/Utils/byteToHex([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L3:
astore 0
ldc ""
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
aload 0
aload 1
aload 2
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492884
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 3
invokestatic com/nd/android/u/cloud/helper/Utils/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 2
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
ldc_w 2131492869
new com/nd/android/u/cloud/helper/Utils$1
dup
aload 4
invokespecial com/nd/android/u/cloud/helper/Utils$1/<init>(Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 3
new com/nd/android/u/cloud/helper/Utils$2
dup
aload 4
invokespecial com/nd/android/u/cloud/helper/Utils$2/<init>(Lcom/nd/android/u/cloud/helper/Utils$DoDialogListener;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 5
.limit stack 5
.end method

.method public static startIMSRelative()V
invokestatic com/product/android/business/login/LoginFlag/saveLOGINEnumType()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
return
.limit locals 0
.limit stack 1
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
L0:
new java/math/BigInteger
dup
iconst_1
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
aload 0
invokevirtual java/security/MessageDigest/digest([B)[B
invokespecial java/math/BigInteger/<init>(I[B)V
bipush 16
invokevirtual java/math/BigInteger/toString(I)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 5
.end method

.method public static switchUserClearData(Landroid/content/Context;)V
invokestatic com/nd/android/u/cloud/helper/Utils/clearChatRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/clearMeRelative()V
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/clearSnsRelative(Landroid/content/Context;)V
invokestatic com/nd/android/u/cloud/helper/Utils/clearWaterFallRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/clearMoreRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/clearOtherRelative()V
return
.limit locals 1
.limit stack 1
.end method

.method public static switchUserPreprocess()V
invokestatic com/common/android/utils/concurrent/NdExecutors/quit()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessChatRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessMeRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessSnsRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessWaterFallRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessMoreRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preprocessOtherRelative()V
return
.limit locals 0
.limit stack 0
.end method
