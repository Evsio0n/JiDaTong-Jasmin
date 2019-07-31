.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class Holder inner com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter

.field private 'context' Landroid/content/Context;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
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
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903681
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131626258
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/unitid Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131626254
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/unitname Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131626252
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 2
aload 3
ldc_w 2131626255
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/addbtn Landroid/widget/ImageButton;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder
astore 2
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/unitid Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/unitname Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter$Holder/addbtn Landroid/widget/ImageButton;
new com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 4
invokespecial com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
new com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/context Landroid/content/Context;
aload 4
invokespecial com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
