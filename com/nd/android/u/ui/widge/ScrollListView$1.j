.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ScrollListView$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/ScrollListView/adjustSize(Z)V
.inner class inner com/nd/android/u/ui/widge/ScrollListView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ScrollListView;

.method <init>(Lcom/nd/android/u/ui/widge/ScrollListView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ScrollListView$1/this$0 Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView$1/this$0 Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getAdapter()Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView$1/this$0 Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView$1/this$0 Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getAdapter()Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
iconst_1
isub
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method
