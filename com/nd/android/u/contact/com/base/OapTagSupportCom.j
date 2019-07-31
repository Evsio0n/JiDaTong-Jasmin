.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapTagSupportCom
.super com/nd/android/u/contact/com/base/NewOapSupportCom

.field private static final 'T_CHANGE_TAGS' Ljava/lang/String; = "v2/api/usertag/changetags"

.field private static final 'T_GET_TAG_USERS' Ljava/lang/String; = "v2/api/usertag/gettagusers"

.field private static final 'T_GET_USER_TAGS' Ljava/lang/String; = "v2/api/usertag/getusertags"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/NewOapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final changeTags(Ljava/lang/String;)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "v2/api/usertag/changetags"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc "?tid="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapTagSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getTagUsers(III)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "v2/api/usertag/gettagusers"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "?tid="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 1
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
iload 2
ifeq L4
aload 4
ldc "&size="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L4:
aload 4
ldc "&pos="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 3
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapTagSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 3
.end method

.method public final getUserTags(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapLoveAndTagServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "v2/api/usertag/getusertags"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "?uid="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapTagSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method
