.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'LOTTERY_TYPE_NEW' I = 1


.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L10 to L11 using L2
.catch org/json/JSONException from L12 to L13 using L2
.catch org/json/JSONException from L14 to L15 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 0
aload 2
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/bussinessId Ljava/lang/String;
aload 0
aload 2
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/appMsgType I
aload 0
aload 2
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/appType Ljava/lang/String;
aload 2
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L1:
aload 3
astore 2
L3:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
astore 2
L4:
aload 2
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
L5:
aload 3
ifnull L14
L6:
aload 3
ldc "type"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmpne L8
aload 3
ldc "count"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
ldc_w 2131494213
invokevirtual com/nd/android/u/cloud/OapApplication/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/displayContent Ljava/lang/String;
L7:
goto L15
L8:
aload 3
ldc "uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/uidTo J
lcmp
ifne L12
aload 3
ldc "rank"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
ldc_w 2131558436
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 2
iload 1
aload 2
arraylength
if_icmpgt L16
L9:
iload 1
ifle L16
aload 2
iload 1
aaload
astore 2
L10:
aload 3
ldc "prize_name"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
ldc_w 2131494214
invokevirtual com/nd/android/u/cloud/OapApplication/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/displayContent Ljava/lang/String;
L11:
goto L15
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/displayContent Ljava/lang/String;
goto L15
L16:
aload 2
iconst_0
aaload
astore 2
goto L10
L12:
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/displayContent Ljava/lang/String;
L13:
goto L15
L14:
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Lottory/displayContent Ljava/lang/String;
L15:
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method
