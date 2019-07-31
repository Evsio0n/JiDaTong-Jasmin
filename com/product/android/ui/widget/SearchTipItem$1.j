.bytecode 50.0
.class synchronized com/product/android/ui/widget/SearchTipItem$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/widget/SearchTipItem/initView()V
.inner class inner com/product/android/ui/widget/SearchTipItem$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/SearchTipItem;

.field final synthetic 'val$ctx' Landroid/content/Context;

.method <init>(Lcom/product/android/ui/widget/SearchTipItem;Landroid/content/Context;)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchTipItem$1/this$0 Lcom/product/android/ui/widget/SearchTipItem;
aload 0
aload 2
putfield com/product/android/ui/widget/SearchTipItem$1/val$ctx Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/product/android/ui/widget/SearchTipItem$1/val$ctx Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/product/android/ui/widget/SearchTipItem$1/val$ctx Landroid/content/Context;
ldc "\u6ca1\u6709\u53ef\u7528\u7f51\u7edc"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/SearchTipItem$1/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$000(Lcom/product/android/ui/widget/SearchTipItem;)Z
ifne L1
new com/product/android/ui/widget/SearchTipItem$SearchFromServer
dup
aload 0
getfield com/product/android/ui/widget/SearchTipItem$1/this$0 Lcom/product/android/ui/widget/SearchTipItem;
aconst_null
invokespecial com/product/android/ui/widget/SearchTipItem$SearchFromServer/<init>(Lcom/product/android/ui/widget/SearchTipItem;Lcom/product/android/ui/widget/SearchTipItem$1;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/product/android/ui/widget/SearchTipItem$1/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$100(Lcom/product/android/ui/widget/SearchTipItem;)Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;
invokeinterface com/product/android/ui/widget/SearchTipItem$OnGetSearchText/getSearchText()Ljava/lang/String; 0
aastore
invokevirtual com/product/android/ui/widget/SearchTipItem$SearchFromServer/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
