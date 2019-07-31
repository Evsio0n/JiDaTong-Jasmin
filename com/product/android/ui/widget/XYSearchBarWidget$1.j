.bytecode 50.0
.class synchronized com/product/android/ui/widget/XYSearchBarWidget$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/widget/XYSearchBarWidget
.inner class inner com/product/android/ui/widget/XYSearchBarWidget$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/XYSearchBarWidget;

.method <init>(Lcom/product/android/ui/widget/XYSearchBarWidget;)V
aload 0
aload 1
putfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
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
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$000(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$100(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/LinearLayout;
ifnull L1
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$100(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L1
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
iconst_1
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setSearchBarState(I)V
L1:
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$200(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/view/inputmethod/InputMethodManager;
ifnull L2
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$000(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
ifnull L2
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$200(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$000(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L2:
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$1/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$300(Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;
invokeinterface com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener/onSearchCancel()V 0
return
.limit locals 2
.limit stack 3
.end method
