.bytecode 50.0
.class synchronized com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private DeptClickListener inner com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener outer com/nd/android/u/contact/ui/adapter/MultiTreeAdapter

.field private 'node' Lcom/nd/android/u/contact/ui/bean/OrgNode;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;

.method public <init>(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;Lcom/nd/android/u/contact/ui/bean/OrgNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/this$0 Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/node Lcom/nd/android/u/contact/ui/bean/OrgNode;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
ldc "com.nd.android.u.cloud.ui.dialog.PhotoScreenDialog"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "unitid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "departid"
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/node Lcom/nd/android/u/contact/ui/bean/OrgNode;
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
l2i
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "nodename"
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/node Lcom/nd/android/u/contact/ui/bean/OrgNode;
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/this$0 Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokestatic com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/access$100(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;)Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/this$0 Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokestatic com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/access$100(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;)Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 3
.limit stack 4
.end method
