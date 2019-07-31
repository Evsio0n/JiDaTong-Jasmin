.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask outer com/nd/rj/common/microblogging/SNSItemSetAdapter

.field 'dialog' Landroid/app/ProgressDialog;

.field 'm_nType' I

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;

.method private <init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;Lcom/nd/rj/common/microblogging/SNSItemSetAdapter$1;)V
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
aload 0
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/unbind(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 1
invokevirtual java/lang/Integer/intValue()I
ifne L1
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$300(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveBindState(IZ)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$300(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/removeFollowState(I)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$300(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/m_nType I
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/removeUserNick(I)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter/ReshData()V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter/notifyDataSetChanged()V
return
L1:
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
getstatic com/nd/rj/common/R$string/sns_canceling I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 1
.limit stack 4
.end method
