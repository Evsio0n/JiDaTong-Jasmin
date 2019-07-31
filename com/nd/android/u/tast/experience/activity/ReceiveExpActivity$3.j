.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/experience/activity/ReceiveExpActivity/initData()V
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
.catch org/json/JSONException from L6 to L7 using L8
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 2
aconst_null
astore 1
L0:
aload 2
lconst_0
invokevirtual com/nd/android/u/tast/com/AjaxCom/getUserscore(J)Lorg/json/JSONObject;
astore 2
L1:
aload 2
astore 1
L9:
aload 1
ifnull L7
L6:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
sipush 200
if_icmpne L7
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 1
invokevirtual com/product/android/commonInterface/task/OapScore/setScoreData(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3$1
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3$1/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$3;)V
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/runOnUiThread(Ljava/lang/Runnable;)V
L7:
return
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L9
L3:
astore 2
aload 2
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L9
L4:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L9
L5:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L9
L8:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method
