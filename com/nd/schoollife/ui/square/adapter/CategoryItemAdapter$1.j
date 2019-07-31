.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;

.field final synthetic 'val$info' Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/this$0 Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/val$info Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/this$0 Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/access$000(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/square/activity/TeamCategoryActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "category_id"
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/val$info Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "category_name"
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/val$info Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/this$0 Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/access$000(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
