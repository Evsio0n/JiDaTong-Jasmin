.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PostListItemView$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/PostListItemView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/PostListItemView$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PostListItemView;

.method <init>(Lcom/nd/schoollife/ui/post/view/PostListItemView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostListItemView$3/this$0 Lcom/nd/schoollife/ui/post/view/PostListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 1
aload 0
getfield com/nd/schoollife/ui/post/view/PostListItemView$3/this$0 Lcom/nd/schoollife/ui/post/view/PostListItemView;
aload 1
invokestatic com/nd/schoollife/ui/post/view/PostListItemView/access$100(Lcom/nd/schoollife/ui/post/view/PostListItemView;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
