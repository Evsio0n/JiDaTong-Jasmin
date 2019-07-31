.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter
.super android/widget/BaseAdapter
.inner class HeadGridViewAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class Holder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter

.field private 'mSelectState' [Z

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;)[Z
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
istore 1
iload 2
ifne L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
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
iload 1
ifeq L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder
astore 4
aload 2
astore 3
aload 4
astore 2
L1:
iload 1
ifne L2
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivRecentItem Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/take_photo I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L3:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
ifnull L4
iload 1
ifle L4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
arraylength
iload 1
if_icmple L4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
iload 1
baload
ifeq L5
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L4:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
areturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/local_album_recent I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;)V
astore 2
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivRecentItem Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_selected_mask I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivMask Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/iv_clicked_to_select I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L2:
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L3
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivRecentItem Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
goto L3
L5:
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivMask Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L4
.limit locals 5
.limit stack 5
.end method

.method public initSelectState()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnonnull L0
L1:
return
L0:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
newarray boolean
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
iconst_0
istore 1
L2:
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
iload 1
iconst_1
bastore
L4:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 3
.end method

.method public setSelect(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
ifnull L0
iload 1
iconst_1
if_icmplt L0
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
arraylength
if_icmplt L1
L0:
return
L1:
new java/io/File
dup
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
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
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getstatic com/nd/android/u/allcommon/R$string/pic_is_deleted I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
iload 1
baload
istore 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 3
iload 2
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1200(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/io/File;Z)Z
ifne L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast android/view/View
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder
astore 3
aload 3
ifnull L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
astore 4
iload 2
ifne L3
iconst_1
istore 2
L4:
aload 4
iload 1
iload 2
bastore
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/mSelectState [Z
iload 1
baload
ifeq L5
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1400(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
return
L3:
iconst_0
istore 2
goto L4
L5:
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivMask Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder/ivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1500(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$1600(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
