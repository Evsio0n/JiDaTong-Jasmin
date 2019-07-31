.bytecode 50.0
.class public synchronized com/common/android/utils/http/HttpComExt
.super com/common/android/utils/http/HttpCom

.field private static final 'TAG' Ljava/lang/String; = "HttpComExt"

.field private final 'AUTHSTATUSCODE' I

.field private 'mIsNeedRelogin' Z

.method public <init>()V
aload 0
invokespecial com/common/android/utils/http/HttpCom/<init>()V
aload 0
sipush 401
putfield com/common/android/utils/http/HttpComExt/AUTHSTATUSCODE I
aload 0
iconst_1
putfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(I)V
aload 0
iload 1
invokespecial com/common/android/utils/http/HttpCom/<init>(I)V
aload 0
sipush 401
putfield com/common/android/utils/http/HttpComExt/AUTHSTATUSCODE I
aload 0
iconst_1
putfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/common/android/utils/http/HttpCom/<init>()V
aload 0
sipush 401
putfield com/common/android/utils/http/HttpComExt/AUTHSTATUSCODE I
aload 0
iconst_1
putfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Z)V
aload 0
iload 1
invokespecial com/common/android/utils/http/HttpCom/<init>(Z)V
aload 0
sipush 401
putfield com/common/android/utils/http/HttpComExt/AUTHSTATUSCODE I
aload 0
iconst_1
putfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private getSid()Ljava/lang/String;
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 0
aload 1
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "DELETE"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 0
aload 1
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 3
.limit stack 7
.end method

.method public get(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public getAndReloginIfNeed(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L3
aload 0
getfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
ifeq L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/clearSid()V 0
aload 0
invokespecial com/common/android/utils/http/HttpComExt/getSid()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 1
aload 2
aload 4
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
pop
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "GET"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
L3:
aload 3
athrow
.limit locals 5
.limit stack 7
.end method

.method protected getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 2
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 401
if_icmpne L5
aload 0
getfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
ifeq L5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/clearSid()V 0
L6:
aload 0
invokespecial com/common/android/utils/http/HttpComExt/getSid()Ljava/lang/String;
astore 6
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 6
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
aload 1
astore 5
aload 1
ifnull L1
aload 1
astore 5
aload 1
ldc "sid="
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc "sid="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 1
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
iload 4
iconst_m1
if_icmpeq L3
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
ldc "sid="
invokevirtual java/lang/String/length()I
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iload 4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L1:
aload 0
aload 0
getfield com/common/android/utils/http/HttpComExt/mIsNewPro Z
invokevirtual com/common/android/utils/http/HttpComExt/initHttpClient(Z)V
aload 0
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aload 5
areturn
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
ldc "sid="
invokevirtual java/lang/String/length()I
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L4:
goto L1
L2:
astore 1
aload 2
athrow
L5:
aload 2
athrow
.limit locals 7
.limit stack 5
.end method

.method public patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PATCH"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PATCH"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 0
aload 1
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 5
.limit stack 7
.end method

.method public post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 0
aload 1
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aconst_null
ldc "POST"
aload 2
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 6
.limit stack 7
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public postByMap(Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
.signature "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/common/android/utils/http/Response;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
ldc "POST"
aload 2
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 4
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "PUT"
aconst_null
aconst_null
aconst_null
invokevirtual com/common/android/utils/http/HttpBaseClient/httpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;Lorg/apache/http/client/CookieStore;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 7
.end method

.method public setHttpHeader()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public setIsNeedRelogin(Z)V
aload 0
iload 1
putfield com/common/android/utils/http/HttpComExt/mIsNeedRelogin Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSid(Ljava/lang/String;)V
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
invokevirtual com/common/android/utils/http/HttpBaseClient/setSid(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public updateImg(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/getSidAndReplceUrl(Ljava/lang/String;Lcom/common/android/utils/http/HttpException;)Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/http/HttpComExt/httpclient Lcom/common/android/utils/http/HttpBaseClient;
aload 1
aload 2
ldc "POST"
invokevirtual com/common/android/utils/http/HttpBaseClient/httpUpImageRequest(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 4
.end method
