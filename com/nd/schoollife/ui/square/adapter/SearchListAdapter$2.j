.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/SearchListAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindTeamData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;I)V
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
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
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/access$000(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/square/activity/SquareSearchMoreActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "type"
bipush 8
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "key"
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/access$100(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/access$000(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
