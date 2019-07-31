.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter
.super android/widget/BaseAdapter
.inner class CardAdapter inner com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter outer com/nd/android/u/contact/activity/TagManagerActivity
.inner class Holder inner com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder outer com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 1
if_icmple L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/tag_card_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tag_card_item_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/relativeLayout Landroid/view/ViewGroup;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tag_card_item_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/textView Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
iload 1
iconst_3
irem
tableswitch 0
L2
L3
L4
default : L5
L5:
aload 3
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/textView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/relativeLayout Landroid/view/ViewGroup;
getstatic com/nd/android/u/contact/R$drawable/tag_item1_bg_selector I
invokevirtual android/view/ViewGroup/setBackgroundResource(I)V
goto L5
L3:
aload 3
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/relativeLayout Landroid/view/ViewGroup;
getstatic com/nd/android/u/contact/R$drawable/tag_item2_bg_selector I
invokevirtual android/view/ViewGroup/setBackgroundResource(I)V
goto L5
L4:
aload 3
getfield com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder/relativeLayout Landroid/view/ViewGroup;
getstatic com/nd/android/u/contact/R$drawable/tag_item3_bg_selector I
invokevirtual android/view/ViewGroup/setBackgroundResource(I)V
goto L5
.limit locals 4
.limit stack 4
.end method
