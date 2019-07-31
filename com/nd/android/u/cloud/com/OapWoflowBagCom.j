.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/OapWoflowBagCom
.super com/nd/android/u/contact/com/base/NewOapSupportCom

.field private static final 'APPLY_WOFLOW_BAG' Ljava/lang/String; = "gxtyx/advact/applyWOflowBag"

.field private static final 'JUDGE_GOT_WOFLOW_BAG' Ljava/lang/String; = "gxtyx/advact/judgeGotWOflowBag"

.field private static final 'JUDGE_OPEN_WOFLOW_BAG' Ljava/lang/String; = "gxtyx/advact/judgeOpenWOflowBag"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/NewOapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public applyWoflowBag(JLjava/lang/String;)V
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 6
aload 6
ldc "gxtyx/advact/applyWOflowBag"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aconst_null
astore 5
L0:
aload 7
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
aload 7
ldc "imei"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "unitID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/OapWoflowBagCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 7
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/postRetJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
iload 4
sipush 200
if_icmpeq L4
new com/common/android/utils/http/HttpException
dup
aload 3
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 4
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
astore 3
goto L1
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
astore 5
aload 5
astore 3
aload 5
ldc "timed out"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
ldc "\u8fde\u63a5\u670d\u52a1\u5668\u8d85\u65f6"
astore 3
L5:
new com/common/android/utils/http/HttpException
dup
aload 3
sipush 405
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
L4:
return
.limit locals 8
.limit stack 5
.end method

.method public judgeGotWoflowBag(J)Z
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 4
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "gxtyx/advact/judgeGotWOflowBag"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "/unitID/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/OapWoflowBagCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
astore 4
L3:
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
iload 3
sipush 200
if_icmpne L4
aload 4
ldc "count"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L5
iconst_1
ireturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
L5:
iconst_0
ireturn
L4:
new com/common/android/utils/http/HttpException
dup
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 3
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public judgeOpenWoflowBag()Z
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getSeniorSystemServerURL()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "gxtyx/advact/judgeOpenWOflowBag"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/OapWoflowBagCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/getRetJson(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
astore 2
L3:
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
iload 1
sipush 200
if_icmpne L4
aload 2
ldc "count"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L5
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
L5:
iconst_0
ireturn
L4:
new com/common/android/utils/http/HttpException
dup
aload 2
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 1
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 4
.limit stack 4
.end method
