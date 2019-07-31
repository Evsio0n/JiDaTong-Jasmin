.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainAppActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/cloud/activity/MainAppActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/MainAppActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainAppActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainAppActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$000(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
iload 3
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 1
aload 1
ifnonnull L0
return
L0:
aload 1
getfield com/product/android/commonInterface/contact/OapApp/displayType Z
ifeq L1
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/MainAppListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "typecode"
aload 1
getfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "typename"
aload 1
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L1:
aload 1
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 1
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
iconst_1
iconst_0
aconst_null
invokestatic com/nd/android/u/contact/business/SynOapApp/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
return
.limit locals 6
.limit stack 7
.end method
