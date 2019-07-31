.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainAppListActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/cloud/activity/MainAppListActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/MainAppListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainAppListActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainAppListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppListActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppListActivity/access$000(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
iload 3
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 1
aload 1
ifnonnull L0
return
L0:
aload 1
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 1
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MainAppListActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppListActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)Landroid/content/Context;
iconst_1
iconst_0
aconst_null
invokestatic com/nd/android/u/contact/business/SynOapApp/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
return
.limit locals 6
.limit stack 7
.end method
