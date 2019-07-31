.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/messageTip/ImageMessageTip
.super com/nd/android/u/ui/widge/messageTip/MessageTip
.inner class static synthetic inner com/nd/android/u/ui/widge/messageTip/ImageMessageTip$1
.inner class ImageListAdatper inner com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper outer com/nd/android/u/ui/widge/messageTip/ImageMessageTip
.inner class private ViewHolder inner com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder outer com/nd/android/u/ui/widge/messageTip/ImageMessageTip

.field public static final 'IMG_GRIDVIEW_HEIGHT' I = 240


.field public static final 'IMG_GRIDVIEW_ITEM_HEIGHT' I = 72


.field public static final 'IMG_GRIDVIEW_ITEM_WIDTH' I = 72


.field public static final 'IMG_GRIDVIEW_WIDTH' I = 240


.field public static final 'MAX_COLUMN_NUM' I = 3


.field public static final 'MAX_DISPLAY_NUM' I = 9


.field public static final 'PHOTO_DISC_CACHE_DIR' Ljava/lang/String; = "photo"

.field private 'contentTextVisible' Z

.field private 'gridViewHeight' I

.field private 'gridViewItemHeight' I

.field private 'gridViewItemWidth' I

.field private 'gridViewWidth' I

.field private 'imageList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/contentTextVisible Z
aload 0
aload 0
sipush 240
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewWidth I
aload 0
aload 0
sipush 240
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewHeight I
aload 0
aload 0
bipush 72
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewItemWidth I
aload 0
aload 0
bipush 72
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewItemHeight I
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Z)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip/<init>(Landroid/content/Context;)V
aload 0
iload 2
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/contentTextVisible Z
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;)I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewItemWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;)I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewItemHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private buildImageGrid(ILjava/util/List;)Landroid/widget/GridView;
.signature "(ILjava/util/List<Ljava/lang/String;>;)Landroid/widget/GridView;"
aload 2
ifnonnull L0
iconst_0
istore 4
L1:
iload 4
iconst_3
irem
ifne L2
iload 4
iconst_3
idiv
istore 4
L3:
iload 4
i2f
fconst_1
fmul
ldc_w 3.0F
fdiv
fstore 3
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewHeight I
i2f
fload 3
fmul
f2i
istore 4
new android/widget/GridView
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mContext Landroid/content/Context;
invokespecial android/widget/GridView/<init>(Landroid/content/Context;)V
astore 5
aload 5
new android/view/ViewGroup$LayoutParams
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/gridViewWidth I
iload 4
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/GridView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 5
iload 1
invokevirtual android/widget/GridView/setNumColumns(I)V
aload 5
new com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper
dup
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mContext Landroid/content/Context;
aload 2
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/<init>(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;Landroid/content/Context;Ljava/util/List;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 5
areturn
L0:
aload 2
invokeinterface java/util/List/size()I 0
istore 4
goto L1
L2:
iload 4
iconst_3
idiv
iconst_1
iadd
istore 4
goto L3
.limit locals 6
.limit stack 6
.end method

.method protected configUI()V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/bt_text_enable_click I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayTitle()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/llContent Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/llContent Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$drawable/xy_chatfrom_bg_normal I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
bipush 6
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
istore 1
aload 0
bipush 16
invokevirtual com/nd/android/u/ui/widge/messageTip/ImageMessageTip/dp2px(I)I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/llContent Landroid/widget/LinearLayout;
iload 2
iload 1
iload 1
iload 1
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/contentTextVisible Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvContent Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
new java/util/Date
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getCreateDate()J 0
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
iconst_3
invokestatic com/nd/android/u/chatUiUtils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvTime Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
instanceof com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate
ifeq L2
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
checkcast com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/getImageList()Ljava/util/List;
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/imageList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/imageList Ljava/util/List;
ifnonnull L3
iconst_0
istore 1
L4:
iload 1
ifle L5
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
iconst_3
istore 2
iload 1
iconst_3
if_icmpge L6
iload 1
istore 2
L6:
iload 1
bipush 9
if_icmple L7
new java/util/ArrayList
dup
bipush 9
invokespecial java/util/ArrayList/<init>(I)V
astore 4
iconst_0
istore 1
L8:
aload 4
astore 3
iload 1
bipush 9
if_icmpge L9
aload 4
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/imageList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L8
L0:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/tvContent Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L3:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/imageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 1
goto L4
L7:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/imageList Ljava/util/List;
astore 3
L9:
aload 0
iload 2
aload 3
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip/buildImageGrid(ILjava/util/List;)Landroid/widget/GridView;
astore 3
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
aload 3
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 5
.limit stack 6
.end method
