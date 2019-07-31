.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask outer com/nd/rj/common/microblogging/SNSAuthorized

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSAuthorized;

.method private <init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;Lcom/nd/rj/common/microblogging/SNSAuthorized$1;)V
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$800(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$700(Lcom/nd/rj/common/microblogging/SNSAuthorized;)I
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/querybind(I)I
istore 2
iload 2
ifne L0
iconst_2
istore 2
L1:
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$100(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/os/Handler;
iload 2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iload 2
bipush -3
if_icmpne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$600(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveBindState(Z)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$800(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$700(Lcom/nd/rj/common/microblogging/SNSAuthorized;)I
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/GetBindUrl(I)Ljava/lang/String;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$202(Lcom/nd/rj/common/microblogging/SNSAuthorized;Ljava/lang/String;)Ljava/lang/String;
pop
iconst_0
istore 2
goto L1
L2:
iconst_4
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method
