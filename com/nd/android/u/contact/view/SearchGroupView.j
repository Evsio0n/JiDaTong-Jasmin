.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/SearchGroupView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/contact/view/SearchGroupView$1

.field private 'addbtn' Landroid/widget/ImageButton;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field private 'groupnameText' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'mType' I

.field private 'membernumText' Landroid/widget/TextView;

.field private 'onClickListener' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/SearchGroupView/mType I
aload 0
new com/nd/android/u/contact/view/SearchGroupView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/SearchGroupView$1/<init>(Lcom/nd/android/u/contact/view/SearchGroupView;)V
putfield com/nd/android/u/contact/view/SearchGroupView/onClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchGroupView/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/SearchGroupView/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/SearchGroupView/mType I
aload 0
new com/nd/android/u/contact/view/SearchGroupView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/SearchGroupView$1/<init>(Lcom/nd/android/u/contact/view/SearchGroupView;)V
putfield com/nd/android/u/contact/view/SearchGroupView/onClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchGroupView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/view/SearchGroupView/mType I
aload 0
invokevirtual com/nd/android/u/contact/view/SearchGroupView/getView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/view/SearchGroupView;)I
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_group_list_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_list_item_workid I
invokevirtual com/nd/android/u/contact/view/SearchGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/SearchGroupView/membernumText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_list_item_nickname I
invokevirtual com/nd/android/u/contact/view/SearchGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/SearchGroupView/groupnameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_list_item_img I
invokevirtual com/nd/android/u/contact/view/SearchGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/SearchGroupView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_list_item_btn_add I
invokevirtual com/nd/android/u/contact/view/SearchGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/contact/view/SearchGroupView/addbtn Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/mType I
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/addbtn Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
aload 0
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/onClickListener Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/contact/view/SearchGroupView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/addbtn Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/groupnameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/mType I
ifne L1
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/membernumText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getMembernum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/view/SearchGroupView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/people_num I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/group_face I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
astore 1
aload 1
ifnull L2
aload 1
ldc "null"
invokevirtual java/lang/String/compareToIgnoreCase(Ljava/lang/String;)I
ifeq L2
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView/membernumText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
.limit locals 2
.limit stack 4
.end method
