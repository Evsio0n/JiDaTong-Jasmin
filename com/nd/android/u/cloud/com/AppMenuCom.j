.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/AppMenuCom
.super java/lang/Object

.field public static final 'APP_MENU_LIST' Ljava/lang/String; = "/v2/api/unit_menus?time="

.field public static final 'APP_MENU_SERVER_URL' Ljava/lang/String;

.field private 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method static <clinit>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
putstatic com/nd/android/u/cloud/com/AppMenuCom/APP_MENU_SERVER_URL Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/android/u/cloud/com/AppMenuCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 1
.limit stack 3
.end method

.method private getMenuListJson(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
getstatic com/nd/android/u/cloud/com/AppMenuCom/APP_MENU_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "/v2/api/unit_menus?time="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/cloud/com/AppMenuCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getMenuList(J)Lcom/nd/android/u/cloud/bean/AppMenuList;
.throws com/common/android/utils/http/HttpException
aconst_null
astore 3
aload 0
lload 1
invokespecial com/nd/android/u/cloud/com/AppMenuCom/getMenuListJson(J)Lorg/json/JSONObject;
astore 4
aload 4
ifnull L0
new com/nd/android/u/cloud/bean/AppMenuList
dup
invokespecial com/nd/android/u/cloud/bean/AppMenuList/<init>()V
astore 3
aload 3
aload 4
invokevirtual com/nd/android/u/cloud/bean/AppMenuList/parseJsonObject(Lorg/json/JSONObject;)V
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method
