.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/base/BaseFragmentActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/common/base/BaseFragmentActivity/initBaseView()V
.inner class inner com/nd/schoollife/ui/common/base/BaseFragmentActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;

.method <init>(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/base_fragment_network_error I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;
invokestatic com/nd/schoollife/ui/common/base/BaseFragmentActivity/access$000(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;
invokestatic com/nd/schoollife/ui/common/base/BaseFragmentActivity/access$000(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener/onReloadClicked()V 0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;
invokestatic com/nd/schoollife/ui/common/base/BaseFragmentActivity/access$100(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method
