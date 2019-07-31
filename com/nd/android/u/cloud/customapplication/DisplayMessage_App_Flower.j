.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'FLOWER_DATA_TYPE_ACKNOWLEDGE' I = 1


.field public static final 'FLOWER_DATA_TYPE_AWARD' I = 2


.field public 'flowerDataExp' I

.field public 'flowerDataPoint' I

.field public 'flowerDataType' I

.field public 'flowerDataUid' J

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getDataFromJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "content"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/displayContent Ljava/lang/String;
aload 0
aload 1
ldc "type"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
aload 0
aload 1
ldc "uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
i2l
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataUid J
aload 0
aload 1
ldc "point"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataPoint I
aload 0
aload 1
ldc "exp"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataExp I
return
.limit locals 2
.limit stack 3
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L10:
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/appType Ljava/lang/String;
aload 1
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L3:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/oriMessage Ljava/lang/String;
astore 1
L4:
aload 1
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
L5:
aload 3
astore 2
aload 3
ifnonnull L7
L6:
aload 1
ldc "\\\\"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L7:
aload 2
ifnull L10
L8:
aload 0
aload 2
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/getDataFromJson(Lorg/json/JSONObject;)V
L9:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/displayContent Ljava/lang/String;
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public specialProccessOnReceive()V
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
iconst_2
if_icmpne L0
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 20
putfield android/os/Message/what I
aload 1
aload 0
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_3
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
