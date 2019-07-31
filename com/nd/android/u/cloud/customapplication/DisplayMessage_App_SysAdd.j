.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'TYPE_SYS_ADD' I = 1


.field public 'btnText' Ljava/lang/String;

.field public 'count' I

.field public 'iconUrl' Ljava/lang/String;

.field public 'itemType' I

.field public 'type' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/type I
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/count I
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/btnText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/itemType I
return
.limit locals 1
.limit stack 2
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L10:
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 0
aload 3
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/bussinessId Ljava/lang/String;
aload 0
aload 3
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/appMsgType I
aload 0
aload 3
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/appType Ljava/lang/String;
aload 3
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
L1:
aload 5
ifnull L10
L3:
aload 5
ldc "content"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
aload 5
ldc "count"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/count I
aload 0
aload 5
ldc "type"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/type I
aload 0
aload 5
ldc "itemtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/itemType I
aload 0
aload 5
ldc "iconurl"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
ldc "ICONSIZE"
ldc "1"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/type I
iconst_1
if_icmpne L8
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
ldc "[#"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
L4:
aload 4
astore 3
iload 1
ifle L6
aload 4
astore 3
iload 2
iload 1
if_icmple L6
L5:
aload 4
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
iload 1
iload 2
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
L6:
aload 0
aload 3
ldc "#]"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/displayContent Ljava/lang/String;
aload 0
aload 5
ldc "btntxt"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/btnText Ljava/lang/String;
L7:
iconst_0
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/displayContent Ljava/lang/String;
iconst_0
ireturn
L8:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 0
aload 4
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/displayContent Ljava/lang/String;
L9:
iconst_0
ireturn
.limit locals 6
.limit stack 5
.end method
