.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1
.super java/lang/Object
.implements com/nd/android/u/ui/widge/ScrollListView$OnRefreshListener
.enclosing method com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1/this$0 Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh()V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1/this$0 Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/refreshList()V
return
.limit locals 1
.limit stack 1
.end method
