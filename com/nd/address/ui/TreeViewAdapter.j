.bytecode 50.0
.class public synchronized com/nd/address/ui/TreeViewAdapter
.super android/widget/BaseAdapter
.inner class private ViewHolder inner com/nd/address/ui/TreeViewAdapter$ViewHolder outer com/nd/address/ui/TreeViewAdapter

.field private static synthetic '$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level' [I

.field private final 'PADDING' I

.field private final 'SCALE_1' I

.field private final 'SCALE_2' I

.field private final 'SCALE_3' I

.field private 'mContext' Landroid/content/Context;

.field private 'mElements' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/address/bean/Address;>;"

.method static synthetic $SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
getstatic com/nd/address/ui/TreeViewAdapter/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
astore 0
aload 0
ifnull L9
aload 0
areturn
L9:
invokestatic com/nd/rj/common/administrativeregions/lib/Level/values()[Lcom/nd/rj/common/administrativeregions/lib/Level;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_2
iastore
L3:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_3
iastore
L5:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_4
iastore
L7:
aload 0
putstatic com/nd/address/ui/TreeViewAdapter/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
aload 0
areturn
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/util/List;Landroid/content/Context;)V
.signature "(Ljava/util/List<Lcom/nd/address/bean/Address;>;Landroid/content/Context;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
bipush 60
putfield com/nd/address/ui/TreeViewAdapter/PADDING I
aload 0
iconst_0
putfield com/nd/address/ui/TreeViewAdapter/SCALE_1 I
aload 0
iconst_1
putfield com/nd/address/ui/TreeViewAdapter/SCALE_2 I
aload 0
iconst_2
putfield com/nd/address/ui/TreeViewAdapter/SCALE_3 I
aload 0
aload 1
putfield com/nd/address/ui/TreeViewAdapter/mElements Ljava/util/List;
aload 0
aload 2
putfield com/nd/address/ui/TreeViewAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mElements Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mElements Ljava/util/List;
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/address/ui/TreeViewAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/address/ui/TreeViewAdapter$ViewHolder/<init>(Lcom/nd/address/ui/TreeViewAdapter;Lcom/nd/address/ui/TreeViewAdapter$ViewHolder;)V
astore 3
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 5
getstatic com/nd/address/utils/AddressUtil/INSTANCE Lcom/nd/address/utils/AddressUtil;
invokevirtual com/nd/address/utils/AddressUtil/getPackageName()Ljava/lang/String;
astore 4
aload 4
astore 2
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 2
L1:
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
aload 5
ldc "treeview_item"
ldc "layout"
aload 2
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 3
aload 4
aload 5
ldc "disclosureImg"
ldc "id"
aload 2
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
aload 3
aload 4
aload 5
ldc "contentText"
ldc "id"
aload 2
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/address/ui/TreeViewAdapter$ViewHolder/contentText Landroid/widget/TextView;
aload 4
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
astore 2
L2:
aload 0
getfield com/nd/address/ui/TreeViewAdapter/mElements Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/address/bean/Address
astore 4
aload 4
invokevirtual com/nd/address/bean/Address/getLevel()Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 5
invokestatic com/nd/address/ui/TreeViewAdapter/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
aload 5
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iaload
tableswitch 2
L3
L4
L5
default : L6
L6:
iconst_0
istore 1
L7:
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/contentText Landroid/widget/TextView;
iload 1
bipush 60
imul
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingTop()I
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingRight()I
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingBottom()I
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/contentText Landroid/widget/TextView;
aload 4
invokevirtual com/nd/address/bean/Address/getContent()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/nd/address/bean/Address/isSelected()Z
ifeq L8
aload 0
aload 4
invokevirtual com/nd/address/bean/Address/getCode()Ljava/lang/String;
invokevirtual com/nd/address/ui/TreeViewAdapter/isHasChildren(Ljava/lang/String;)Z
ifne L8
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/address/ui/TreeViewAdapter$ViewHolder
astore 3
goto L2
L3:
iconst_0
istore 1
goto L7
L4:
iconst_1
istore 1
goto L7
L5:
iconst_2
istore 1
goto L7
L8:
aload 3
getfield com/nd/address/ui/TreeViewAdapter$ViewHolder/disclosureImg Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
areturn
.limit locals 6
.limit stack 6
.end method

.method public isHasChildren(Ljava/lang/String;)Z
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aload 1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getDirectChildrenByCode(Ljava/lang/String;)Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
