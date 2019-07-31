.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/AutoTextAdapter
.super android/widget/BaseAdapter
.implements android/widget/Filterable
.inner class MyFilter inner com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter outer com/nd/android/u/contact/adapter/AutoTextAdapter
.inner class ViewHolder inner com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder outer com/nd/android/u/contact/adapter/AutoTextAdapter

.field private 'mInflater' Landroid/view/LayoutInflater;

.field 'm_saDropDownItems' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field 'myFilter' Lcom/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter;

.field 'tempKeyString' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/content/Context;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
aload 0
aload 2
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFilter()Landroid/widget/Filter;
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/myFilter Lcom/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/<init>(Lcom/nd/android/u/contact/adapter/AutoTextAdapter;)V
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/myFilter Lcom/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/myFilter Lcom/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder/<init>(Lcom/nd/android/u/contact/adapter/AutoTextAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/auto_cplted_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/auto_cplted_list_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
ifnull L2
aload 3
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/AutoTextAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setStringArray(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
L0:
aload 1
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L2:
aload 0
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/notifyDataSetChanged()V
return
L1:
aload 0
aload 1
invokevirtual java/util/ArrayList/clone()Ljava/lang/Object;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
goto L2
.limit locals 2
.limit stack 3
.end method
