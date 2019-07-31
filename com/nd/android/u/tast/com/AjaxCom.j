.bytecode 50.0
.class public synchronized com/nd/android/u/tast/com/AjaxCom
.super java/lang/Object

.field private static final 'GETITEMLIST' Ljava/lang/String; = "/ajax/score/getitemlist"

.field private static final 'GETTODAYSTATUS' Ljava/lang/String; = "/ajax/sign/gettodaystatus"

.field private static final 'GET_MY_RECEIVED_EXP' Ljava/lang/String; = "/ajax/tasks/reward"

.field private static final 'GET_PERSONAL_TASK_STATUS' Ljava/lang/String; = "/ajax/tasks/personal"

.field private static final 'GET_SHOW_OFF' Ljava/lang/String; = "/ajax/tasks/finish"

.field private static final 'GET_TODAY_TASK' Ljava/lang/String; = "/ajax/tasks"

.field private static final 'INITWIZARDRECEIVESCORE' Ljava/lang/String; = "/ajax/score/initwizard"

.field public static final 'LOGINCHECKSID' Ljava/lang/String; = "/login/checksid"

.field private static final 'POST_TASK_NEW_STATUS' Ljava/lang/String; = "/ajax/tasks/edit"

.field private static final 'SCOTRGETACTIONLIST' Ljava/lang/String; = "/ajax/score/getactionlist"

.field private static final 'SCOTRGETSCORT' Ljava/lang/String; = "/ajax/sign/usersign"

.field private static final 'SCOTRGETSIGNLIST' Ljava/lang/String; = "/ajax/sign/getsignlist"

.field private static final 'SCOTRRECEIVESCORE' Ljava/lang/String; = "/ajax/score/receivescore"

.field private static final 'SCOTRUSERSCORT' Ljava/lang/String; = "/ajax/score/info"

.field private 'mSid' Ljava/lang/String;

.field private 'oaApi' Lcom/nd/android/u/tast/com/HttpComExtOA;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/tast/com/HttpComExtOA
dup
invokespecial com/nd/android/u/tast/com/HttpComExtOA/<init>()V
putfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public getActionlist()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/score/getactionlist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "DYF"
ldc " getActionlist 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getGetItemList()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/score/getitemlist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "DYF"
ldc "getGetItemList 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getInitwizardScore()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/score/initwizard"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 1
aconst_null
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getMyReceivedAward()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/tasks/reward"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "AjaxCom getShowOff"
ldc "getTodayTask 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getPersonnalTaskSummary()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/tasks/personal"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "AjaxCom getShowOff"
ldc "getTodayTask 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getReceivescore(Ljava/lang/String;I)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/score/receivescore"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "itemcode"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 2
ifeq L4
L3:
aload 5
ldc "actionid"
iload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L4:
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 4
aload 5
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
astore 1
aload 3
ifnull L5
aload 3
astore 1
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L5
ldc "DYF"
ldc " getReceivescore 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 6
aload 3
astore 1
aload 6
ifnull L5
aload 3
astore 1
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L5
aload 0
aload 6
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 4
aload 5
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L5:
aload 1
areturn
L2:
astore 1
ldc "AjaxCom"
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
.limit locals 7
.limit stack 3
.end method

.method public getShowOff()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/tasks/finish"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "AjaxCom getShowOff"
ldc "getTodayTask 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getSignlist(II)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/sign/getsignlist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%d-%02d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "signmonth"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 5
aload 6
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
aload 4
astore 3
aload 4
ifnull L3
aload 4
astore 3
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L3
ldc "DYF"
ldc " getSignlist 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 7
aload 4
astore 3
aload 7
ifnull L3
aload 4
astore 3
ldc ""
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
aload 7
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 5
aload 6
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L3:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 6
.end method

.method public getTodayStatus()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/sign/gettodaystatus"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
aconst_null
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "DYF"
ldc "\u4e2a\u4eba\u4e3b\u9875 getTodayStatus 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
aconst_null
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTodayTask()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/tasks"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
astore 1
aload 2
ifnull L0
aload 2
astore 1
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L0
ldc "AjaxCom getTodayTask"
ldc "getTodayTask 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 4
aload 2
astore 1
aload 4
ifnull L0
aload 2
astore 1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 4
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L0:
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getUserscore(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/score/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 4
astore 3
lload 1
lconst_0
lcmp
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L0:
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 5
aload 5
astore 4
aload 5
ifnull L1
aload 5
astore 4
aload 5
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 401
if_icmpne L1
ldc "DYF"
ldc "\u4e2a\u4eba\u4e3b\u9875 getUserscore 401\u91cd\u767b\u9646"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/reLoginGetSid()Ljava/lang/String;
astore 6
aload 5
astore 4
aload 6
ifnull L1
aload 5
astore 4
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
aload 6
putfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/mSid Ljava/lang/String;
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 3
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
L1:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method

.method public getscore()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/sign/usersign"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 1
aconst_null
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getscoreTotalscore()I
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
aload 0
invokevirtual com/nd/android/u/tast/com/AjaxCom/getscore()Lorg/json/JSONObject;
astore 2
aload 2
ifnonnull L3
iconst_m1
ireturn
L3:
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 403
if_icmpne L0
iconst_m1
ireturn
L0:
aload 2
ldc "score"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "totalscore"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public postTaskNewStatus(JI)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/ajax/tasks/edit"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "itemid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 5
ldc "isnew"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/tast/com/AjaxCom/oaApi Lcom/nd/android/u/tast/com/HttpComExtOA;
aload 4
aload 5
invokevirtual com/nd/android/u/tast/com/HttpComExtOA/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 7
.limit stack 4
.end method
