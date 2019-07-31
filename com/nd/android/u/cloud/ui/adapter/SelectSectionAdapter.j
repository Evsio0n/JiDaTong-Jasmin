.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter

.field private static final 'TAG' Ljava/lang/String; = "SelectSectionAdapter"

.field private 'classList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"

.field private 'context' Landroid/content/Context;

.field private 'myHandler' Landroid/os/Handler;

.field private 'selectclasslist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;Landroid/os/Handler;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/context Landroid/content/Context;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/selectclasslist Ljava/util/ArrayList;
aload 0
aload 4
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/myHandler Landroid/os/Handler;
return
.limit locals 5
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
aload 2
astore 3
aload 2
ifnonnull L3
new com/nd/android/u/cloud/view/widge/SelectSectionView
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/selectclasslist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/myHandler Landroid/os/Handler;
invokespecial com/nd/android/u/cloud/view/widge/SelectSectionView/<init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
astore 3
L3:
aload 3
checkcast com/nd/android/u/cloud/view/widge/SelectSectionView
astore 2
L0:
aload 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGrade
invokevirtual com/nd/android/u/cloud/view/widge/SelectSectionView/initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapGrade;)V
L1:
aload 3
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectSectionAdapter/classList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
