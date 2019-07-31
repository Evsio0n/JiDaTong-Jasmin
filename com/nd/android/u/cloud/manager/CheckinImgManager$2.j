.bytecode 50.0
.class synchronized com/nd/android/u/cloud/manager/CheckinImgManager$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/manager/CheckinImgManager/checkAndShow()V
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/manager/CheckinImgManager;

.method <init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
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
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 4
aconst_null
astore 3
iconst_m1
istore 2
L0:
aload 4
invokevirtual com/nd/android/u/tast/com/AjaxCom/getTodayStatus()Lorg/json/JSONObject;
astore 4
L1:
aload 4
astore 3
L6:
iload 2
istore 1
aload 3
ifnull L7
iload 2
istore 1
aload 3
ldc "status"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 3
ldc "status"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
L7:
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$000(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Landroid/app/Activity;
new com/nd/android/u/cloud/manager/CheckinImgManager$2$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/manager/CheckinImgManager$2$1/<init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;I)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L6
L3:
astore 4
aload 4
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L6
L4:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L6
L5:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L6
.limit locals 5
.limit stack 5
.end method
