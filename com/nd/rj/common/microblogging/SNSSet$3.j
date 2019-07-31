.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSSet$3
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/rj/common/microblogging/SNSSet
.inner class inner com/nd/rj/common/microblogging/SNSSet$3

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSSet;

.method <init>(Lcom/nd/rj/common/microblogging/SNSSet;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/help/HttpTool/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
ldc "\u6ca1\u6709\u53ef\u7528\u7684\u7f51\u7edc\uff0c\u65e0\u6cd5\u8fdb\u884c\u8bbe\u7f6e!"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$200(Lcom/nd/rj/common/microblogging/SNSSet;)I
ifne L1
new android/content/Intent
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
ldc com/nd/rj/common/microblogging/SNSAuthorized
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$000(Lcom/nd/rj/common/microblogging/SNSSet;)Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
iload 3
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter/getItem(I)Ljava/lang/Object;
astore 2
aload 2
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L2
aload 2
checkcast com/nd/rj/common/microblogging/SNSItem
astore 2
aload 1
ldc "SNS_TYPE"
aload 2
getfield com/nd/rj/common/microblogging/SNSItem/Type I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "SNS_TYPE_NAME"
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
aload 2
getfield com/nd/rj/common/microblogging/SNSItem/nameRes I
invokevirtual com/nd/rj/common/microblogging/SNSSet/getString(I)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L3:
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$3/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
aload 1
sipush 1002
invokevirtual com/nd/rj/common/microblogging/SNSSet/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
aload 2
checkcast com/nd/rj/common/microblogging/SNSType
astore 2
aload 1
ldc "SNS_TYPE"
aload 2
getfield com/nd/rj/common/microblogging/SNSType/snstype I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "SNS_TYPE_NAME"
aload 2
getfield com/nd/rj/common/microblogging/SNSType/snsname Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L3
.limit locals 6
.limit stack 4
.end method
