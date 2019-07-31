.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public GetInfoTask inner com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask outer com/nd/android/u/contact/activity/HiddenLoveManageActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected final transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L5
aload 1
iconst_0
aaload
ldc "onlyNum"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
istore 2
L0:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
aconst_null
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getHiddenLoveMeCount(Ljava/util/ArrayList;)I
invokestatic com/nd/android/u/contact/activity/HiddenLoveManageActivity/access$002(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;I)I
pop
L1:
iload 2
ifne L4
L3:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
invokestatic com/nd/android/u/contact/activity/HiddenLoveManageActivity/access$100(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getMyHiddenLoveInfo(Ljava/util/ArrayList;)Lorg/json/JSONObject;
pop
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 3
.limit stack 3
.end method
