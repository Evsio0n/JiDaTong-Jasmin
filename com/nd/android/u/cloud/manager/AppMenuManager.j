.bytecode 50.0
.class public final synchronized com/nd/android/u/cloud/manager/AppMenuManager
.super java/lang/Object

.field public static final 'KEY_APPMENU_DATA' Ljava/lang/String; = "appmenu_data"

.field public static final 'KEY_APPMENU_UPDATETIME' Ljava/lang/String; = "appmenu_updatetime"

.field private static 'mPreferenceHelper' Lcom/product/android/utils/SharedPreferenceHelper;

.method static <clinit>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
putstatic com/nd/android/u/cloud/manager/AppMenuManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAppMenu(J)Lcom/product/android/commonInterface/main/AppMenu;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L7
.catch all from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L7
.catch all from L8 to L9 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L7
.catch all from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L7
.catch all from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L7
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L16 to L17 using L2
ldc com/nd/android/u/cloud/manager/AppMenuManager
monitorenter
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 4
lload 4
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenuListFromLocal(J)Lcom/nd/android/u/cloud/bean/AppMenuList;
astore 7
lload 4
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/isNeedUpdate(J)Z
ifne L3
aload 7
lload 0
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenuFromList(Lcom/nd/android/u/cloud/bean/AppMenuList;J)Lcom/product/android/commonInterface/main/AppMenu;
astore 6
L1:
ldc com/nd/android/u/cloud/manager/AppMenuManager
monitorexit
aload 6
areturn
L3:
new com/nd/android/u/cloud/com/AppMenuCom
dup
invokespecial com/nd/android/u/cloud/com/AppMenuCom/<init>()V
astore 6
L4:
aload 7
ifnonnull L13
lconst_0
lstore 2
L5:
aload 6
lload 2
invokevirtual com/nd/android/u/cloud/com/AppMenuCom/getMenuList(J)Lcom/nd/android/u/cloud/bean/AppMenuList;
astore 6
L6:
aload 6
ifnull L16
L8:
lload 4
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/saveUpdateTime(J)V
L9:
lload 2
lconst_0
lcmp
ifeq L11
L10:
lload 2
aload 6
getfield com/nd/android/u/cloud/bean/AppMenuList/updateTime J
lcmp
ifeq L16
L11:
getstatic com/nd/android/u/cloud/manager/AppMenuManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "appmenu_data"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/nd/android/u/cloud/bean/AppMenuList/toJsonObject()Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
aload 6
lload 0
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenuFromList(Lcom/nd/android/u/cloud/bean/AppMenuList;J)Lcom/product/android/commonInterface/main/AppMenu;
astore 6
L12:
goto L1
L13:
aload 7
getfield com/nd/android/u/cloud/bean/AppMenuList/updateTime J
lstore 2
L14:
goto L5
L7:
astore 6
L15:
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L16:
aload 7
lload 0
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenuFromList(Lcom/nd/android/u/cloud/bean/AppMenuList;J)Lcom/product/android/commonInterface/main/AppMenu;
astore 6
L17:
goto L1
L2:
astore 6
ldc com/nd/android/u/cloud/manager/AppMenuManager
monitorexit
aload 6
athrow
.limit locals 8
.limit stack 4
.end method

.method private static getAppMenuFromList(Lcom/nd/android/u/cloud/bean/AppMenuList;J)Lcom/product/android/commonInterface/main/AppMenu;
lload 1
lconst_0
lcmp
ifeq L0
aload 0
ifnull L0
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aconst_null
astore 5
L2:
aload 5
areturn
L1:
iconst_0
istore 3
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
L3:
iload 3
iload 4
if_icmpge L4
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/main/AppMenu
astore 6
aload 6
astore 5
lload 1
aload 6
invokevirtual com/product/android/commonInterface/main/AppMenu/getAppid()J
lcmp
ifeq L2
iload 3
iconst_1
iadd
istore 3
goto L3
L4:
aconst_null
areturn
.limit locals 7
.limit stack 4
.end method

.method private static getAppMenuListFromLocal(J)Lcom/nd/android/u/cloud/bean/AppMenuList;
getstatic com/nd/android/u/cloud/manager/AppMenuManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "appmenu_data"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
new com/nd/android/u/cloud/bean/AppMenuList
dup
invokespecial com/nd/android/u/cloud/bean/AppMenuList/<init>()V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/cloud/bean/AppMenuList/parseJsonObject(Ljava/lang/String;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method private static isNeedUpdate(J)Z
getstatic com/nd/android/u/cloud/manager/AppMenuManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "appmenu_updatetime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 0
lload 0
lconst_0
lcmp
ifne L0
L1:
iconst_1
ireturn
L0:
invokestatic java/lang/System/currentTimeMillis()J
lload 0
lsub
ldc2_w 86400000L
lcmp
ifge L1
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method private static saveUpdateTime(J)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
getstatic com/nd/android/u/cloud/manager/AppMenuManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "appmenu_updatetime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
return
.limit locals 4
.limit stack 4
.end method
