.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/HREntryAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/HREntryAdapter$Holder outer com/nd/android/u/contact/adapter/HREntryAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mUidList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/HREntryAdapter/mUidList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/HREntryAdapter/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/contact/adapter/HREntryAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/HREntryAdapter/mUidList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/HREntryAdapter/mUidList Ljava/util/ArrayList;
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
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/HREntryAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/HREntryAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/HREntryAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/HREntryAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/hr_entry_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/HREntryAdapter$Holder/mivFace Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/HREntryAdapter/mUidList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
iconst_m1
aload 3
getfield com/nd/android/u/contact/adapter/HREntryAdapter$Holder/mivFace Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/HREntryAdapter$Holder
astore 3
goto L1
.limit locals 4
.limit stack 4
.end method

.method public setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/HREntryAdapter/mUidList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
