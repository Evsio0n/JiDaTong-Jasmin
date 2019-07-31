.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSItemSetAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/rj/common/microblogging/SNSItemSetAdapter$1
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSItemSetAdapter$ProgressTask outer com/nd/rj/common/microblogging/SNSItemSetAdapter
.inner class public static final SNS inner com/nd/rj/common/microblogging/SNSItemSetAdapter$SNS outer com/nd/rj/common/microblogging/SNSItemSetAdapter

.field private 'iSize' I

.field private final 'mInflater' Landroid/view/LayoutInflater;

.field private 'mItems' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'm_ctx' Landroid/content/Context;

.field private 'm_nOperationType' I

.field private 'set' Lcom/nd/rj/common/microblogging/help/ConfigSet;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_nOperationType I
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/iSize I
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
aload 0
aload 0
aload 1
ldc_w 35.0F
invokespecial com/nd/rj/common/microblogging/SNSItemSetAdapter/dip2px(Landroid/content/Context;F)I
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/iSize I
aload 0
new com/nd/rj/common/microblogging/help/ConfigSet
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
invokespecial com/nd/rj/common/microblogging/help/ConfigSet/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
aload 1
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
invokevirtual com/nd/rj/common/microblogging/ConfigFile/GetSNSSupport()Ljava/util/ArrayList;
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter/ReshData()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Ljava/util/ArrayList;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/set Lcom/nd/rj/common/microblogging/help/ConfigSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method private dip2px(Landroid/content/Context;F)I
fload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 3
.limit stack 2
.end method

.method public ReshData()V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L0
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
new com/nd/rj/common/microblogging/SNSItem
dup
iconst_1
getstatic com/nd/rj/common/R$drawable/nd_sns_sina_logo I
getstatic com/nd/rj/common/R$string/sns_sina_blog I
iconst_0
invokespecial com/nd/rj/common/microblogging/SNSItem/<init>(IIIZ)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
new com/nd/rj/common/microblogging/SNSItem
dup
iconst_2
getstatic com/nd/rj/common/R$drawable/nd_sns_ten_logo I
getstatic com/nd/rj/common/R$string/sns_ten_blog I
iconst_0
invokespecial com/nd/rj/common/microblogging/SNSItem/<init>(IIIZ)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
return
L0:
iconst_0
istore 1
L2:
iload 1
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 2
aload 2
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L3
aload 2
checkcast com/nd/rj/common/microblogging/SNSItem
astore 2
aload 2
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 2
getfield com/nd/rj/common/microblogging/SNSItem/Type I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
putfield com/nd/rj/common/microblogging/SNSItem/bIsSetInfo Z
L4:
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 2
checkcast com/nd/rj/common/microblogging/SNSType
astore 2
aload 2
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 2
getfield com/nd/rj/common/microblogging/SNSType/snstype I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
putfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
goto L4
.limit locals 3
.limit stack 7
.end method

.method public SetOpt(I)V
aload 0
iload 1
putfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_nOperationType I
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
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
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 9
aload 2
astore 5
aload 2
ifnonnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/rj/common/R$layout/nd_sns_setlist_item I
aload 3
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 5
L0:
aload 5
getstatic com/nd/rj/common/R$id/ItemTextId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 8
aload 5
getstatic com/nd/rj/common/R$id/list_item_near_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 5
getstatic com/nd/rj/common/R$id/ItemImageOptId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 7
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 7
new com/nd/rj/common/microblogging/SNSItemSetAdapter$1
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSItemSetAdapter$1/<init>(Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 9
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L1
aload 9
checkcast com/nd/rj/common/microblogging/SNSItem
astore 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
aload 9
getfield com/nd/rj/common/microblogging/SNSItem/nameRes I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_ctx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 9
getfield com/nd/rj/common/microblogging/SNSItem/iconRes I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 9
getfield com/nd/rj/common/microblogging/SNSItem/bIsSetInfo Z
istore 4
aload 9
getfield com/nd/rj/common/microblogging/SNSItem/Type I
istore 1
L2:
aload 8
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 8
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
ifnull L3
aload 2
iconst_0
iconst_0
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/iSize I
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/iSize I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 8
aload 2
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
L3:
iload 4
ifeq L4
aload 6
ldc_w -11232459
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/set Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getUserNick(I)Ljava/lang/String;
astore 2
aload 2
ifnull L5
aload 2
invokevirtual java/lang/String/length()I
ifle L5
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "@"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L6:
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/m_nOperationType I
ifeq L7
iload 4
ifeq L7
aload 5
getstatic com/nd/rj/common/R$id/list_item_near_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 5
getstatic com/nd/rj/common/R$id/ItemImage I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 7
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 5
areturn
L1:
aload 9
checkcast com/nd/rj/common/microblogging/SNSType
astore 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
getfield com/nd/rj/common/microblogging/SNSType/snsname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 9
getfield com/nd/rj/common/microblogging/SNSType/logofile Ljava/lang/String;
invokestatic android/graphics/drawable/BitmapDrawable/createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 2
aload 9
getfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
istore 4
aload 9
getfield com/nd/rj/common/microblogging/SNSType/snstype I
istore 1
goto L2
L5:
aload 6
getstatic com/nd/rj/common/R$string/sns_setInfoYes I
invokevirtual android/widget/TextView/setText(I)V
goto L6
L4:
aload 6
ldc_w -6908274
invokevirtual android/widget/TextView/setTextColor(I)V
aload 6
getstatic com/nd/rj/common/R$string/sns_setInfoNO I
invokevirtual android/widget/TextView/setText(I)V
goto L6
L7:
aload 5
getstatic com/nd/rj/common/R$id/list_item_near_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 5
getstatic com/nd/rj/common/R$id/ItemImage I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 7
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 5
areturn
.limit locals 10
.limit stack 5
.end method

.method public hasAssociated()Z
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
getfield com/nd/rj/common/microblogging/SNSItemSetAdapter/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 3
aload 3
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L2
aload 3
checkcast com/nd/rj/common/microblogging/SNSItem
getfield com/nd/rj/common/microblogging/SNSItem/bIsSetInfo Z
ifeq L3
L4:
iconst_1
ireturn
L2:
aload 3
checkcast com/nd/rj/common/microblogging/SNSType
getfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
ifne L4
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
