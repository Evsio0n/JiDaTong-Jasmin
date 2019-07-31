.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom
.super com/nd/android/u/contact/com/base/NewOapSupportCom

.field private static final 'AGREE_JUNIOR_APPLY_URL' Ljava/lang/String; = "gxtyx/older/agreeApplyCoach"

.field private static final 'ALREADY_APPLY_COACH_URL' Ljava/lang/String; = "gxtyx/newer/judgeApplyCoach"

.field private static final 'ALREADY_BEAN_SENIOR_URL' Ljava/lang/String; = "gxtyx/older/judgeOlder"

.field private static final 'APPLY_SENIOR_URL' Ljava/lang/String; = "gxtyx/newer/applyCoach"

.field private static final 'CLEAR_JUNIOR_APPLY_URL' Ljava/lang/String; = "gxtyx/older/clearApplyCoach"

.field private static final 'EDIT_SENIOR_INFO_URL' Ljava/lang/String; = "gxtyx/older/updateOlderStudent"

.field private static final 'GET_CREATE_TIME_URL' Ljava/lang/String; = "/v2/api/org/userinfo"

.field private static final 'GET_ENROL_DATE' Ljava/lang/String; = "gxtyx/newer/getEnrolDate"

.field private static final 'GET_MY_JUNIOR_LIST_URL' Ljava/lang/String; = "gxtyx/older/viewCoachedNewerStudents"

.field private static final 'GET_MY_SENIOR_LIST_URL' Ljava/lang/String; = "gxtyx/newer/viewCoachedOlders"

.field private static final 'GET_NEW_JUNIOR_APPLY_LIST_URL' Ljava/lang/String; = "gxtyx/older/viewApplyNewerStudents"

.field private static final 'GET_NEW_SENIOR_LIST_URL' Ljava/lang/String; = "gxtyx/newer/viewCanApplyOlders"

.field private static final 'GET_SENIOR_DETAIL_URL' Ljava/lang/String; = "gxtyx/older/viewOlderDetail"

.field private static final 'NEW_JUNIOR_APPLY_COUNT_URL' Ljava/lang/String; = "gxtyx/older/applyCount"

.field private static final 'NEW_SENIOR_APPLY_URL' Ljava/lang/String; = "gxtyx/older/addOlderStudent"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/NewOapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private addPageParam(IILjava/lang/StringBuffer;)V
aload 3
ifnonnull L0
return
L0:
aload 3
ldc "/page_no/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 1
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
ldc "/page_size/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
return
.limit locals 4
.limit stack 2
.end method

.method private addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 1
ifnonnull L0
return
L0:
aload 1
ldc "/unitID/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public final agreeJuniorApplyBase(JJ)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gxtyx/older/agreeApplyCoach"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "older_uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "newer_uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 7
.limit stack 5
.end method

.method public final alreadyApplyCoachBase(JJ)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/newer/judgeApplyCoach"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "newer_uuid/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 3
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "/older_uuid/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 3
.end method

.method public final applySeniorBase(JJ)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/newer/applyCoach"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "newer_uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "older_uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 7
.limit stack 5
.end method

.method public final clearJuniorApplyBase(J)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gxtyx/older/clearApplyCoach"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "older_uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 5
.limit stack 5
.end method

.method public final editSeniorInfoBase(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L3
.catch org/json/JSONException from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L3
.catch org/json/JSONException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gxtyx/older/updateOlderStudent"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 6
ifnull L5
L4:
aload 8
ldc "headIcon"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 3
ifnull L7
L6:
aload 8
ldc "birthPlace"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
aload 4
ifnull L9
L8:
aload 8
ldc "grade"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L9:
aload 5
ifnull L11
L10:
aload 8
ldc "declares"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L11:
aload 8
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 7
aload 8
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L12:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L13:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L13
.limit locals 9
.limit stack 5
.end method

.method public final getEnrolDate()Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "gxtyx/newer/getEnrolDate"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 1
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
.limit locals 2
.limit stack 3
.end method

.method public final getMyJuniorListBase(JII)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/older/viewCoachedNewerStudents"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 0
iload 3
iload 4
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addPageParam(IILjava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public final getMySeniorCountBase(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "gxtyx/newer/viewCoachedOlders"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 3
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 0
iconst_1
iconst_2
aload 3
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addPageParam(IILjava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
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
.limit stack 4
.end method

.method public final getMySeniorListBase(JII)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/newer/viewCoachedOlders"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 0
iload 3
iload 4
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addPageParam(IILjava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public final getNewJuniorApplyCountBase(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "gxtyx/older/applyCount"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 3
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
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

.method public final getNewJuniorApplyListBase(JII)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/older/viewApplyNewerStudents"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 0
iload 3
iload 4
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addPageParam(IILjava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public final getNewSeniorListBase(JII)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/newer/viewCanApplyOlders"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
aload 0
iload 3
iload 4
aload 5
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addPageParam(IILjava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public final getSeniorDetailBase(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "gxtyx/older/viewOlderDetail"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 3
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
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

.method public final getStudentCreateTimeBase(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "/v2/api/org/userinfo"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "?uid="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "&columns=createtime,joindate&unit_id="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 4
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
L0:
aload 4
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
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
.limit locals 5
.limit stack 3
.end method

.method public final isAlreadyBeanSeniorBase(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "gxtyx/older/judgeOlder"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 0
aload 3
invokespecial com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/addUnitIdParam(Ljava/lang/StringBuffer;)V
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
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

.method public final newSeniorApplyBase(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gxtyx/older/addOlderStudent"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "uuid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "headIcon"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "birthPlace"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "grade"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "declares"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapSeniorSystemSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 7
aload 8
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 9
.limit stack 5
.end method
