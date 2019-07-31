.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/view/WrapContentGridView$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/schoollife/ui/common/view/WrapContentGridView/bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
.inner class inner com/nd/schoollife/ui/common/view/WrapContentGridView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/view/WrapContentGridView;

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$imgs' [Ljava/lang/String;

.field final synthetic 'val$isHavePraise' Z

.method <init>(Lcom/nd/schoollife/ui/common/view/WrapContentGridView;Landroid/content/Context;[Ljava/lang/String;Z)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/this$0 Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$context Landroid/content/Context;
aload 0
aload 3
putfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$imgs [Ljava/lang/String;
aload 0
iload 4
putfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$isHavePraise Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/this$0 Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$context Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$imgs [Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/this$0 Lcom/nd/schoollife/ui/common/view/WrapContentGridView;
invokestatic com/nd/schoollife/ui/common/view/WrapContentGridView/access$000(Lcom/nd/schoollife/ui/common/view/WrapContentGridView;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iload 3
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView$1/val$isHavePraise Z
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/startTweetFlowImageActivity(Landroid/content/Context;[Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;IZ)V
return
.limit locals 6
.limit stack 6
.end method
