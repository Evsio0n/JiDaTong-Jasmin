.bytecode 50.0
.class synchronized com/product/android/ui/widget/XYSearchBarWidget$2
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/product/android/ui/widget/XYSearchBarWidget
.inner class inner com/product/android/ui/widget/XYSearchBarWidget$2

.field final synthetic 'this$0' Lcom/product/android/ui/widget/XYSearchBarWidget;

.method <init>(Lcom/product/android/ui/widget/XYSearchBarWidget;)V
aload 0
aload 1
putfield com/product/android/ui/widget/XYSearchBarWidget$2/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$2/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$100(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$2/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/product/android/ui/widget/XYSearchBarWidget/access$100(Lcom/product/android/ui/widget/XYSearchBarWidget;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifeq L0
aload 0
getfield com/product/android/ui/widget/XYSearchBarWidget$2/this$0 Lcom/product/android/ui/widget/XYSearchBarWidget;
iconst_2
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setSearchBarState(I)V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
