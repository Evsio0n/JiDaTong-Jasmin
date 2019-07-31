.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/SquareSubItem$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/view/SquareSubItem/setPostData(Ljava/util/List;)V
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/SquareSubItem;

.method <init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/SquareSubItem$1/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$1/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
invokestatic com/nd/schoollife/ui/square/view/SquareSubItem/access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
ldc com/nd/schoollife/ui/square/activity/PostAndTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$1/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
invokestatic com/nd/schoollife/ui/square/view/SquareSubItem/access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
