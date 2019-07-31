.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter
.super android/widget/BaseAdapter
.inner class public MyAdapter inner com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter outer com/nd/android/u/contact/dialog/DlgGroupRevSet

.field private 'mInflater' Landroid/view/LayoutInflater;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;

.method public <init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public final getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/permission_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 3
getstatic com/nd/android/u/contact/R$id/permission_list_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 2
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
ldc "ItemTitle"
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokestatic com/nd/android/u/contact/dialog/DlgGroupRevSet/access$000(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)I
if_icmpne L1
aload 2
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 3
areturn
L1:
aload 2
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
