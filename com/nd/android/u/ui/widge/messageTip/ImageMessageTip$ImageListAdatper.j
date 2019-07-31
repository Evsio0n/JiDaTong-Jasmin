.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper
.super android/widget/BaseAdapter
.inner class ImageListAdatper inner com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper outer com/nd/android/u/ui/widge/messageTip/ImageMessageTip

.field public static final 'DEBUG_MODE' Z = 0


.field private 'context' Landroid/content/Context;

.field private 'mItemList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;

.method public <init>(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/this$0 Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/context Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/mItemList Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method private culLineHeight(I)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/mItemList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/mItemList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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
new com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/this$0 Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;
aconst_null
invokespecial com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder/<init>(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip$1;)V
astore 3
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$layout/message_tip_image_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/imageView I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder/imageView Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
new android/widget/AbsListView$LayoutParams
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/this$0 Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;
invokestatic com/nd/android/u/ui/widge/messageTip/ImageMessageTip/access$100(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;)I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/this$0 Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;
invokestatic com/nd/android/u/ui/widge/messageTip/ImageMessageTip/access$200(Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;)I
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
astore 4
aload 3
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder/imageView Landroid/widget/ImageView;
aload 4
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/mItemList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/chat/R$drawable/send_image_loadding_icon I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/chat/R$drawable/failed I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/chat/R$drawable/failed I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ImageListAdatper/this$0 Lcom/nd/android/u/ui/widge/messageTip/ImageMessageTip;
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip/mContext Landroid/content/Context;
ldc "photo"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
aload 3
getfield com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder/imageView Landroid/widget/ImageView;
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/ui/widge/messageTip/ImageMessageTip$ViewHolder
astore 3
goto L1
.limit locals 6
.limit stack 5
.end method
