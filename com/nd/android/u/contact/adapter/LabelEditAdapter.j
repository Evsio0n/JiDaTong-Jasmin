.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/LabelEditAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/LabelEditAdapter$Holder outer com/nd/android/u/contact/adapter/LabelEditAdapter
.inner class MyAdapter inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter outer com/nd/android/u/contact/adapter/LabelEditAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter$Holder outer com/nd/android/u/contact/adapter/LabelEditAdapter
.inner class MyOnItemClickListener inner com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener outer com/nd/android/u/contact/adapter/LabelEditAdapter

.field private static final 'TAG' Ljava/lang/String; = "LabelAdapter"

.field public static 'numColumns' I

.field private 'groupNames' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mContext' Landroid/content/Context;

.field public 'mHandler' Landroid/os/Handler;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mTags' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;>;"

.field public 'selectedList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"

.field private 'view' Landroid/view/View;

.method static <clinit>()V
iconst_4
putstatic com/nd/android/u/contact/adapter/LabelEditAdapter/numColumns I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;Landroid/os/Handler;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/selectedList Ljava/util/ArrayList;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/mHandler Landroid/os/Handler;
aload 0
invokestatic com/nd/android/u/contact/util/Taghelper/getInstance()Lcom/nd/android/u/contact/util/Taghelper;
invokevirtual com/nd/android/u/contact/util/Taghelper/getTagMaps()Ljava/util/HashMap;
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/mTags Ljava/util/HashMap;
aload 0
invokestatic com/nd/android/u/contact/util/Taghelper/getInstance()Lcom/nd/android/u/contact/util/Taghelper;
invokevirtual com/nd/android/u/contact/util/Taghelper/getGroupNames()Ljava/util/ArrayList;
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/groupNames Ljava/util/ArrayList;
return
.limit locals 4
.limit stack 3
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/groupNames Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/groupNames Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getHeight()I
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/view Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/view Landroid/view/View;
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/view Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public final getItem(I)Ljava/lang/Object;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 1
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/label_grid I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/contact/adapter/LabelEditAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/gridview I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/gridView Landroid/widget/GridView;
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/gridView Landroid/widget/GridView;
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
invokevirtual android/widget/GridView/setSelector(Landroid/graphics/drawable/Drawable;)V
aload 3
new com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/<init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter;Landroid/content/Context;)V
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/adapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
aload 3
new com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/<init>(Lcom/nd/android/u/contact/adapter/LabelEditAdapter;)V
putfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/onItemClickListener Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener;
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/gridView Landroid/widget/GridView;
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/onItemClickListener Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener;
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/onItemClickListener Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener;
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/adapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyOnItemClickListener/setAdapter(Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;)V
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/gridView Landroid/widget/GridView;
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/adapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/adapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter;
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/mTags Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/groupNames Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter$MyAdapter/setList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/adapter/LabelEditAdapter/view Landroid/view/View;
ifnonnull L2
aload 0
aload 3
getfield com/nd/android/u/contact/adapter/LabelEditAdapter$Holder/gridView Landroid/widget/GridView;
putfield com/nd/android/u/contact/adapter/LabelEditAdapter/view Landroid/view/View;
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/LabelEditAdapter$Holder
astore 3
goto L1
.limit locals 4
.limit stack 5
.end method
