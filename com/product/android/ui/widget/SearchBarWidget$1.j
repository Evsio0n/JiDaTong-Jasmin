.bytecode 50.0
.class synchronized com/product/android/ui/widget/SearchBarWidget$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/widget/SearchBarWidget
.inner class inner com/product/android/ui/widget/SearchBarWidget$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/SearchBarWidget;

.method <init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/allcommon/R$id/btn_clear_input I
if_icmpne L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$000(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$100(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/LinearLayout;
ifnull L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$100(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
iconst_1
invokevirtual com/product/android/ui/widget/SearchBarWidget/setSearchBarState(I)V
L1:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$200(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/view/inputmethod/InputMethodManager;
ifnull L2
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$000(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
ifnull L2
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$200(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$000(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L2:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$1/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$300(Lcom/product/android/ui/widget/SearchBarWidget;)Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
invokeinterface com/product/android/ui/widget/SearchBarWidget$OnSearchListener/onSearchCancel()V 0
return
.limit locals 2
.limit stack 3
.end method
