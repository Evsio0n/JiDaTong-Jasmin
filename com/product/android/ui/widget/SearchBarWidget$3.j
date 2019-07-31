.bytecode 50.0
.class synchronized com/product/android/ui/widget/SearchBarWidget$3
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/product/android/ui/widget/SearchBarWidget
.inner class inner com/product/android/ui/widget/SearchBarWidget$3

.field final synthetic 'this$0' Lcom/product/android/ui/widget/SearchBarWidget;

.method <init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchBarWidget$3/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$3/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$400(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L1:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$3/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$300(Lcom/product/android/ui/widget/SearchBarWidget;)Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
ifnull L2
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$3/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$300(Lcom/product/android/ui/widget/SearchBarWidget;)Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
aload 1
invokeinterface com/product/android/ui/widget/SearchBarWidget$OnSearchListener/onSearchChange(Ljava/lang/String;)V 1
L2:
return
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$3/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokestatic com/product/android/ui/widget/SearchBarWidget/access$400(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L1
.limit locals 5
.limit stack 2
.end method
