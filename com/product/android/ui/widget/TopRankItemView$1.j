.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/widget/TopRankItemView/init()V
.inner class inner com/product/android/ui/widget/TopRankItemView$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankItemView;

.method <init>(Lcom/product/android/ui/widget/TopRankItemView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankItemView$1/this$0 Lcom/product/android/ui/widget/TopRankItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/product/android/ui/widget/TopRankItemView$1/this$0 Lcom/product/android/ui/widget/TopRankItemView;
invokestatic com/product/android/ui/widget/TopRankItemView/access$000(Lcom/product/android/ui/widget/TopRankItemView;)Lcom/product/android/commonInterface/BaseCommonStruct;
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
getfield com/product/android/ui/widget/TopRankItemView$1/this$0 Lcom/product/android/ui/widget/TopRankItemView;
invokestatic com/product/android/ui/widget/TopRankItemView/access$000(Lcom/product/android/ui/widget/TopRankItemView;)Lcom/product/android/commonInterface/BaseCommonStruct;
aload 0
getfield com/product/android/ui/widget/TopRankItemView$1/this$0 Lcom/product/android/ui/widget/TopRankItemView;
invokestatic com/product/android/ui/widget/TopRankItemView/access$100(Lcom/product/android/ui/widget/TopRankItemView;)Landroid/content/Context;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32101
aload 0
getfield com/product/android/ui/widget/TopRankItemView$1/this$0 Lcom/product/android/ui/widget/TopRankItemView;
invokestatic com/product/android/ui/widget/TopRankItemView/access$000(Lcom/product/android/ui/widget/TopRankItemView;)Lcom/product/android/commonInterface/BaseCommonStruct;
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method
