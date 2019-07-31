.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter
.super android/widget/BaseAdapter
.inner class MyAdapter inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter outer com/nd/android/u/contact/adapter/LabelEditAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder outer com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter

.field protected 'mContext' Landroid/content/Context;

.field private 'mList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/LabelEditAdapter;

.method public <init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/label_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/label_item_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder/textView Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/TagInfo
astore 4
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder/textView Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/this$0 Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L3
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder/textView Landroid/widget/TextView;
sipush 228
sipush 228
sipush 228
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/widget/TextView/setBackgroundColor(I)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder
astore 3
goto L1
L3:
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder/textView Landroid/widget/TextView;
sipush 255
sipush 255
sipush 255
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/widget/TextView/setBackgroundColor(I)V
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/mList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
