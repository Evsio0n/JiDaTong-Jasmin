.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter
.super android/widget/BaseAdapter
.inner class SelectMoreGridViewAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class Holder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter

.field private 'mCurrentAlbumPosi' I

.field private 'mSelectState' [Z

.field private 'mbDisplay' Z

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mbDisplay Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;)[Z
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentAlbumPosi()I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mCurrentAlbumPosi I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
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
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 2
ifnull L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder
astore 4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 4
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivMoreItems Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 2
astore 3
aload 4
astore 2
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnull L2
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mbDisplay Z
ifeq L3
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivMoreItems Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L3:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
ifnull L2
iload 1
iflt L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
arraylength
iload 1
if_icmple L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
iload 1
baload
ifeq L4
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivSelectedMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
areturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/local_album_recent I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;)V
astore 2
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivMoreItems Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_selected_mask I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivSelectedMask Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_clicked_to_select I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivMoreItems Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L4:
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivSelectedMask Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
.limit locals 5
.limit stack 5
.end method

.method public initSelectState()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnonnull L0
L1:
return
L0:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
newarray boolean
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 3
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 3
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
iload 1
baload
ifne L4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
iload 1
iconst_1
bastore
goto L2
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method public setCurrentAlbumPosi(I)V
aload 0
iload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mCurrentAlbumPosi I
return
.limit locals 2
.limit stack 2
.end method

.method public setDisplay(Z)V
aload 0
iload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mbDisplay Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSelect(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
ifnull L0
iload 1
iflt L0
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
arraylength
if_icmplt L1
L0:
return
L1:
new java/io/File
dup
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/exists()Z
ifne L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getstatic com/nd/android/u/allcommon/R$string/pic_is_deleted I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
iload 1
baload
istore 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 3
iload 2
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1200(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/io/File;Z)Z
ifne L0
iload 1
ifne L3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1800(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder
astore 3
L4:
aload 3
ifnull L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
astore 4
iload 2
ifne L5
iconst_1
istore 2
L6:
aload 4
iload 1
iload 2
bastore
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/mSelectState [Z
iload 1
baload
ifeq L7
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivSelectedMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1400(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast android/view/View
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder
astore 3
goto L4
L5:
iconst_0
istore 2
goto L6
L7:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1500(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivSelectedMask Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1600(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
