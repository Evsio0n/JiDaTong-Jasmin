.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/OapPassportCom
.super com/nd/android/u/cloud/com/base/OapPassportSupportCom

.field private static final 'TAG' Ljava/lang/String; = "OapPassportCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/com/base/OapPassportSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public QueryCurrentUserIsAdmin(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
aload 1
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 0
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doQueryCurrentUser()Lorg/json/JSONObject;
astore 3
aload 1
astore 2
aload 3
ifnull L1
aload 1
aload 3
ldc "isadmin"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/business/login/BindUser/setIsadmin(I)V
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new com/nd/android/u/cloud/bean/Passport
dup
aload 1
aload 2
invokespecial com/nd/android/u/cloud/bean/Passport/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 6
bipush 16
bipush 64
invokestatic com/common/android/utils/BlowfishUtils/getBlowFish(II)Ljava/lang/String;
astore 7
aload 6
aload 7
invokevirtual com/nd/android/u/cloud/bean/Passport/setBlowfish(Ljava/lang/String;)V
aload 6
aload 0
aload 1
aload 2
aload 7
iconst_m1
iload 3
lload 4
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLcom/nd/rj/common/login/entity/ClientInfo;)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/cloud/bean/Passport/setLoginJson(Lorg/json/JSONObject;)V
aload 6
areturn
.limit locals 8
.limit stack 10
.end method

.method public doLoginByTicket(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new com/nd/android/u/cloud/bean/Passport
dup
invokespecial com/nd/android/u/cloud/bean/Passport/<init>()V
astore 6
aload 6
aload 1
invokevirtual com/nd/android/u/cloud/bean/Passport/setBlowfish(Ljava/lang/String;)V
aload 6
aload 2
invokevirtual com/nd/android/u/cloud/bean/Passport/setTicket(Ljava/lang/String;)V
aload 6
aload 0
aload 1
aload 2
iconst_m1
iload 3
lload 4
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLogin(Ljava/lang/String;Ljava/lang/String;IIJLcom/nd/rj/common/login/entity/ClientInfo;)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/cloud/bean/Passport/setLoginJson(Lorg/json/JSONObject;)V
aload 6
areturn
.limit locals 7
.limit stack 9
.end method

.method public getUap_sid(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 6
aload 0
aload 1
aload 2
iconst_m1
iload 3
lload 4
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLogin(Ljava/lang/String;Ljava/lang/String;IIJLcom/nd/rj/common/login/entity/ClientInfo;)Lorg/json/JSONObject;
astore 2
aload 6
astore 1
aload 2
ifnull L0
aload 2
ldc "uap_sid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 7
.limit stack 8
.end method
