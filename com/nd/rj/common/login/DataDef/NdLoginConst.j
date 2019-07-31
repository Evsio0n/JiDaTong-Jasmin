.bytecode 50.0
.class public synchronized com/nd/rj/common/login/DataDef/NdLoginConst
.super java/lang/Object

.field public static final 'CAN_SWITCH_USER' Ljava/lang/String; = "CAN_SWITCH_USER"

.field public static final 'CLAUSE' Ljava/lang/String; = "https://reg.99.com/WebStaticPage/xieyi.html"

.field public static final 'FROM' Ljava/lang/String; = "FROM"

.field public static final 'LOCAL_SWITCH_USER' Ljava/lang/String; = "LOCAL_SWITCH_USER"

.field public static final 'LOGIN_TYPE' Ljava/lang/String; = "LOGIN_TYPE"

.field public static final 'LOGIN_TYPE_ND' I = 2


.field public static final 'LOGIN_TYPE_OAP' I = 1


.field public static final 'LOGIN_TYPE_UAP' I = 0


.field public static final 'MOBILE_TYPE' Ljava/lang/String; = "4"

.field public static final 'MODULUS' Ljava/lang/String; = "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"

.field public static final 'PASSWORD' Ljava/lang/String; = "PASSWORD"

.field public static final 'PUBEXP' Ljava/lang/String; = "10001"

.field public static final 'REGIST' I = 100


.field public static final 'REGIST_MOBILE' I = 101


.field public static final 'REGIST_MOBILE_SEND_CODE' I = 102


.field public static final 'URL_FORGET_MAIL' Ljava/lang/String; = "https://reguap.99.com/uaplogin/forget/email?appid=213&style=teens&returnurl=https://reguap.99.com/uaplogin/ucenter"

.field public static final 'URL_FORGET_PHONE' Ljava/lang/String; = "https://reguap.99.com/uaplogin/forget/phone?appid=213&style=teens&returnurl=https://reguap.99.com/uaplogin/ucenter"

.field public static final 'USER' Ljava/lang/String; = "USER"

.field public static final 'USERNAME' Ljava/lang/String; = "USERNAME"

.field private static 'curUser' Lcom/product/android/business/bean/UserInfo;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getUserInfo(I)Lcom/product/android/business/bean/UserInfo;
getstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
ifnonnull L0
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetLastUserInfo()Lcom/product/android/business/bean/UserInfo;
putstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
L0:
getstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getUserInfo(ILandroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
getstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
ifnonnull L0
iload 0
invokestatic com/nd/rj/common/login/NdLoginplatform/getInstance(I)Lcom/nd/rj/common/login/NdLoginplatform;
aload 1
invokevirtual com/nd/rj/common/login/NdLoginplatform/getLastUserInfo(Landroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
putstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
L0:
getstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static setUserInfo(Lcom/product/android/business/bean/UserInfo;)V
aload 0
putstatic com/nd/rj/common/login/DataDef/NdLoginConst/curUser Lcom/product/android/business/bean/UserInfo;
aload 0
ifnull L0
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 0
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
