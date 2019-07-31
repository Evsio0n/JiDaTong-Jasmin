.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 1
aload 1
ifnull L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "generalid"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "name"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "count_key"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "description_key"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "auth_key"
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
invokevirtual android/support/v4/app/FragmentActivity/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 7
.limit stack 4
.end method
