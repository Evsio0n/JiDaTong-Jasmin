.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/SquareSubItem$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/view/SquareSubItem/setCommunityData(Ljava/util/List;)V
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/SquareSubItem;

.method <init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/SquareSubItem$5/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$5/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
invokestatic com/nd/schoollife/ui/square/view/SquareSubItem/access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$5/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
invokestatic com/nd/schoollife/ui/square/view/SquareSubItem/access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunitySquareActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method
