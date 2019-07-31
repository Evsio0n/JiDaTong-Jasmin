.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;

.field private 'oapPassportCom' Lcom/nd/android/u/cloud/com/OapPassportCom;

.method static <clinit>()V
new com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl
dup
invokespecial com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/<init>()V
putstatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/instance Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
putfield com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/oapPassportCom Lcom/nd/android/u/cloud/com/OapPassportCom;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
getstatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/instance Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
ifnonnull L0
new com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl
dup
invokespecial com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/<init>()V
putstatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/instance Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
L0:
getstatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/instance Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
areturn
.limit locals 0
.limit stack 2
.end method

.method public checkSession()Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
ldc ""
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/oapPassportCom Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
iconst_1
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doCheck(Ljava/lang/String;ILcom/nd/rj/common/login/entity/ClientInfo;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public doChangeUser(Ljava/lang/String;J)V
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
lload 2
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doChangeUser(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
return
.limit locals 4
.limit stack 4
.end method

.method public doUserBind(Ljava/lang/String;I)Ljava/lang/Object;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapOrganizationCom()Lcom/nd/android/u/cloud/com/OapOrganizationCom;
aload 1
iload 2
invokevirtual com/nd/android/u/cloud/com/OapOrganizationCom/doUserBind(Ljava/lang/String;I)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public doUserBindApply(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapOrganizationCom()Lcom/nd/android/u/cloud/com/OapOrganizationCom;
iload 1
iload 2
aload 3
aload 4
aload 5
invokevirtual com/nd/android/u/cloud/com/OapOrganizationCom/doUserBindApply(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 6
.limit stack 6
.end method

.method public getAppByAppid(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
iload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapAppCom/getOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getQueryreplysms(Lcom/nd/android/u/cloud/bean/SmsReplyBean;Ljava/lang/String;)Lcom/nd/android/u/cloud/bean/SmsReplyBean;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
aload 1
aload 2
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getQueryreplysms(Lcom/nd/android/u/cloud/bean/SmsReplyBean;Ljava/lang/String;)Lcom/nd/android/u/cloud/bean/SmsReplyBean;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getQuerysms(Lcom/nd/android/u/contact/dataStructure/MessageInfo;Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
aload 1
aload 2
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getQuerysms(Lcom/nd/android/u/contact/dataStructure/MessageInfo;Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getQuerysmsdetail(Ljava/lang/String;II)Ljava/util/List;
.signature "(Ljava/lang/String;II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
aload 1
iload 2
iload 3
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getQuerysmsdetail(Ljava/lang/String;II)Ljava/util/List;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getQuerysmsreplys(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
aload 1
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getQuerysmsreplys(Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getSmsid(I[JILjava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
iload 1
aload 2
iload 3
aload 4
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getSmsid(I[JILjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method public getUap_sid(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
aload 2
iload 3
lload 4
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/getUap_sid(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
areturn
.limit locals 6
.limit stack 6
.end method

.method public queryCurrentUserIsAdmin(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/QueryCurrentUserIsAdmin(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sendDoLoginCodeByPawssWord(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
aload 2
iload 3
lload 4
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLogin(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
areturn
.limit locals 6
.limit stack 6
.end method

.method public sendDoLoginCodeByTicket(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
aload 2
iload 3
lload 4
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLoginByTicket(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/nd/android/u/cloud/bean/Passport;
areturn
.limit locals 6
.limit stack 6
.end method

.method public sendemail(I[JILjava/lang/String;Ljava/lang/String;)Z
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
iload 1
aload 2
iload 3
aload 4
aload 5
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/sendemail(I[JILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
pop
iconst_1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public sendim(I[JIILjava/lang/String;)Z
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
iload 1
aload 2
iload 3
iload 4
aload 5
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/sendim(I[JIILjava/lang/String;)Lorg/json/JSONObject;
pop
iconst_1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public sendsms(I[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
iload 1
aload 2
iload 3
aload 4
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/getSmsid(I[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method
