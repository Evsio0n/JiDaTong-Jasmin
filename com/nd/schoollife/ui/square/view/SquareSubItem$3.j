.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/SquareSubItem$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/view/SquareSubItem/setPostData(Ljava/util/List;)V
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/SquareSubItem;

.field final synthetic 'val$uBean' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/SquareSubItem$3/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/view/SquareSubItem$3/val$uBean Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$3/this$0 Lcom/nd/schoollife/ui/square/view/SquareSubItem;
invokestatic com/nd/schoollife/ui/square/view/SquareSubItem/access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem$3/val$uBean Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
