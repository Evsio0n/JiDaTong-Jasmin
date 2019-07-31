.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/rj/common/login/jobnumber/NdUserLoginPopup/initView()V
.inner class inner com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3

.field final synthetic 'this$0' Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;

.method <init>(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3/this$0 Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3/this$0 Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;
invokestatic com/nd/rj/common/login/jobnumber/NdUserLoginPopup/access$000(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
iload 3
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/getItem(I)Ljava/lang/Object;
astore 1
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3/this$0 Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;
invokestatic com/nd/rj/common/login/jobnumber/NdUserLoginPopup/access$100(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
aload 1
invokeinterface com/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper/onSelectUser(Ljava/lang/Object;)V 1
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3/this$0 Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 6
.limit stack 2
.end method
