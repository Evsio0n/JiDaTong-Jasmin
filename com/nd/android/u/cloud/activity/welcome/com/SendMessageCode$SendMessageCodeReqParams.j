.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static SendMessageCodeReqParams inner com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams outer com/nd/android/u/cloud/activity/welcome/com/SendMessageCode

.field public static final 'TYPE_BIND_PHONE' I = 2


.field public static final 'TYPE_CHANGE_BIND_PHONE' I = 3


.field public 'mPhone' Ljava/lang/String;

.field public 'mType' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "phone"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mPhone Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mType I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mPhone Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mType I
iconst_2
if_icmpeq L1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mType I
iconst_3
if_icmpne L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
