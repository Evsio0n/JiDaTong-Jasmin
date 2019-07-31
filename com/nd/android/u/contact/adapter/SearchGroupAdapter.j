.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SearchGroupAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder outer com/nd/android/u/contact/adapter/SearchGroupAdapter

.field private 'context' Landroid/content/Context;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'mType' I

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;I)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;I)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
aload 0
iload 3
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/mType I
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
aload 2
astore 3
aload 2
ifnonnull L1
new com/nd/android/u/contact/view/SearchGroupView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/mType I
invokespecial com/nd/android/u/contact/view/SearchGroupView/<init>(Landroid/content/Context;I)V
astore 3
L1:
aload 3
checkcast com/nd/android/u/contact/view/SearchGroupView
aload 4
invokevirtual com/nd/android/u/contact/view/SearchGroupView/initComponentValue(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 3
areturn
L0:
aload 2
ifnonnull L2
new com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_search_group_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_nickname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/nicknametext Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_btn_add I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/addbtn Landroid/widget/ImageButton;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L3:
aload 3
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/nicknametext Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aconst_null
aload 3
getfield com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder/heardimg Landroid/widget/ImageView;
iconst_1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
invokestatic com/product/android/business/headImage/HeadImageLoader/displayGroupImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
aload 2
areturn
L2:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/SearchGroupAdapter$Holder
astore 3
goto L3
.limit locals 5
.limit stack 4
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchGroupAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
