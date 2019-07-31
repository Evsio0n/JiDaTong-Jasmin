.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdUserPopup$3
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/rj/common/login/view/NdUserPopup/initView()V
.inner class inner com/nd/rj/common/login/view/NdUserPopup$3

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdUserPopup;

.method <init>(Lcom/nd/rj/common/login/view/NdUserPopup;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdUserPopup$3/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/rj/common/login/view/NdUserPopup$3/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
invokestatic com/nd/rj/common/login/view/NdUserPopup/access$000(Lcom/nd/rj/common/login/view/NdUserPopup;)Lcom/nd/rj/common/login/view/UserAdapter;
iload 3
invokevirtual com/nd/rj/common/login/view/UserAdapter/getItem(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdUserPopup$3/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
invokestatic com/nd/rj/common/login/view/NdUserPopup/access$100(Lcom/nd/rj/common/login/view/NdUserPopup;)Lcom/nd/rj/common/login/view/NdUserPopup$IUserOper;
aload 1
invokeinterface com/nd/rj/common/login/view/NdUserPopup$IUserOper/onSelectUser(Ljava/lang/String;)V 1
aload 0
getfield com/nd/rj/common/login/view/NdUserPopup$3/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
getfield com/nd/rj/common/login/view/NdUserPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 6
.limit stack 2
.end method
