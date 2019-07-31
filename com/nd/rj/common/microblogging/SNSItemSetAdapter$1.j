.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSItemSetAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSItemSetAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/rj/common/microblogging/SNSItemSetAdapter$1

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;

.method <init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/help/HttpTool/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
getstatic com/nd/rj/common/R$string/sns_cannot_disassociate I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokestatic com/nd/rj/common/microblogging/SNSItemSetAdapter/access$100(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L1
aload 1
checkcast com/nd/rj/common/microblogging/SNSItem
astore 1
new com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
aconst_null
invokespecial com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;Lcom/nd/rj/common/microblogging/SNSItemSetAdapter$1;)V
iconst_1
anewarray java/lang/Integer
dup
iconst_0
aload 1
getfield com/nd/rj/common/microblogging/SNSItem/Type I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L1:
aload 1
checkcast com/nd/rj/common/microblogging/SNSType
astore 1
new com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter$1/this$0 Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
aconst_null
invokespecial com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;Lcom/nd/rj/common/microblogging/SNSItemSetAdapter$1;)V
iconst_1
anewarray java/lang/Integer
dup
iconst_0
aload 1
getfield com/nd/rj/common/microblogging/SNSType/snstype I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
