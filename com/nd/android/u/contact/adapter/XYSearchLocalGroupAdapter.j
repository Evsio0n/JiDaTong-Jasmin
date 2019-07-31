.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder outer com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter

.field private 'context' Landroid/content/Context;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;"

.field private 'mType' I

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;I)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;I)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
aload 0
iload 3
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/mType I
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/mType I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method public final clear()V
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
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
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;"
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 5
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_search_local_group_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_nickname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/nicknametext Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/search_group_list_item_grouptype_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/nicknametext Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
tableswitch 0
L2
L3
L4
L5
L6
default : L7
L7:
aconst_null
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/heardimg Landroid/widget/ImageView;
iconst_1
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
invokestatic com/product/android/business/headImage/HeadImageLoader/displayGroupImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group I
invokevirtual android/widget/TextView/setText(I)V
goto L7
L3:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/departmeng_group I
invokevirtual android/widget/TextView/setText(I)V
goto L7
L5:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/disscussion I
invokevirtual android/widget/TextView/setText(I)V
iconst_0
istore 4
iconst_0
istore 1
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 6
aload 6
ifnull L8
L9:
iload 1
istore 4
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
iload 1
iconst_1
iadd
istore 1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
pop
goto L9
L8:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/nicknametext Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L4:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/classeng_group I
invokevirtual android/widget/TextView/setText(I)V
goto L7
L6:
aload 3
getfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter$Holder/groupType Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/community_group I
invokevirtual android/widget/TextView/setText(I)V
goto L7
.limit locals 7
.limit stack 4
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
