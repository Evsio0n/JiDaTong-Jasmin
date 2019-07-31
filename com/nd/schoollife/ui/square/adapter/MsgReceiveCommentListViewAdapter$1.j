.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;

.field final synthetic 'val$userInfo' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1/val$userInfo Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$100(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$1/val$userInfo Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
