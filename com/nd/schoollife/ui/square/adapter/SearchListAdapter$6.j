.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/SearchListAdapter$6
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindPostData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;I)V
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$6

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;

.field final synthetic 'val$userInfo' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$6/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$6/val$userInfo Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$6/this$0 Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/access$000(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$6/val$userInfo Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
