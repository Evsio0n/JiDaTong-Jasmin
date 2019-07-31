.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.inner class MyOnItemClickListener inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener outer com/nd/android/u/contact/adapter/LabelEditAdapter

.field private 'mAdapter' Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/LabelEditAdapter;

.method public <init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/getList()Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/getList()Ljava/util/ArrayList;
astore 1
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
ifnull L0
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/TagInfo
astore 1
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
ifnull L3
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/notifyDataSetChanged()V
L3:
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L2:
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 20
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
ifnull L4
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/notifyDataSetChanged()V
L4:
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 6
.limit stack 2
.end method

.method public setAdapter(Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/mAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
return
.limit locals 2
.limit stack 2
.end method
