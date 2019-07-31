.bytecode 50.0
.class synchronized android/support/v4/app/ListFragment$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method android/support/v4/app/ListFragment
.inner class inner android/support/v4/app/ListFragment$2

.field final synthetic 'this$0' Landroid/support/v4/app/ListFragment;

.method <init>(Landroid/support/v4/app/ListFragment;)V
aload 0
aload 1
putfield android/support/v4/app/ListFragment$2/this$0 Landroid/support/v4/app/ListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield android/support/v4/app/ListFragment$2/this$0 Landroid/support/v4/app/ListFragment;
aload 1
checkcast android/widget/ListView
aload 2
iload 3
lload 4
invokevirtual android/support/v4/app/ListFragment/onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
return
.limit locals 6
.limit stack 6
.end method
