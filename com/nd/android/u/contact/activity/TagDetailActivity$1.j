.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagDetailActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/TagDetailActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/TagDetailActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagDetailActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TagDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagDetailActivity;
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/TagInfo
astore 1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "tag"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 2
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagDetailActivity;
ldc com/nd/android/u/contact/activity/PersonalityTagActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagDetailActivity;
aload 2
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 3
.end method
