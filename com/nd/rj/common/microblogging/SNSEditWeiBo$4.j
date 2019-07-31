.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSEditWeiBo
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$4

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/help/HttpTool/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
getstatic com/nd/rj/common/R$string/sns_network_unavailable I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
if_icmple L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getResources()Landroid/content/res/Resources;
getstatic com/nd/rj/common/R$string/sns_content_too_long I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L1:
aload 1
invokevirtual java/lang/String/length()I
ifne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
getstatic com/nd/rj/common/R$string/sns_empty I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
new com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aconst_null
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Lcom/nd/rj/common/microblogging/SNSEditWeiBo$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$4/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/finish()V
return
.limit locals 2
.limit stack 5
.end method
