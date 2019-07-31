.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/SubscribePostListItemView$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/SubscribePostListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
.inner class inner com/nd/schoollife/ui/post/view/SubscribePostListItemView$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/SubscribePostListItemView;

.method <init>(Lcom/nd/schoollife/ui/post/view/SubscribePostListItemView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/SubscribePostListItemView$5/this$0 Lcom/nd/schoollife/ui/post/view/SubscribePostListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/view/SubscribePostListItemView$5/this$0 Lcom/nd/schoollife/ui/post/view/SubscribePostListItemView;
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokestatic com/nd/schoollife/ui/post/view/SubscribePostListItemView/access$100(Lcom/nd/schoollife/ui/post/view/SubscribePostListItemView;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
