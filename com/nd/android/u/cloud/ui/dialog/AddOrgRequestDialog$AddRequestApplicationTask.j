.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddRequestApplicationTask inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask outer com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;

.method private <init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/<init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
L0:
invokestatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getInstance()Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$1000(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$1000(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getClassid()I
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$200(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$500(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/doUserBindApply(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/ResponseException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 6
.end method
