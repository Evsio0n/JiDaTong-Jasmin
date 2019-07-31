.bytecode 50.0
.class public synchronized com/product/android/business/headImage/HeadImageLoader
.super java/lang/Object
.inner class public static HeaderImage inner com/product/android/business/headImage/HeadImageLoader$HeaderImage outer com/product/android/business/headImage/HeadImageLoader
.inner class public static final enum ImageType inner com/product/android/business/headImage/HeadImageLoader$ImageType outer com/product/android/business/headImage/HeadImageLoader

.field private static final 'FACE_DISC_CACHE_DIR' Ljava/lang/String; = "head"

.field public static final 'FACE_SIZE_100' Ljava/lang/String; = "f100"

.field public static final 'FACE_SIZE_152' Ljava/lang/String; = "f152"

.field public static final 'FACE_SIZE_40' Ljava/lang/String; = "f40"

.field public static final 'FACE_SIZE_640' Ljava/lang/String; = "f640"

.field private static final 'FACE_UPLOAD_URL' Ljava/lang/String; = "face/upload"

.field private static final 'FACE_URL' Ljava/lang/String; = "face"

.field private static final 'FACE_VALIDATE_URL' Ljava/lang/String; = "face/url"

.field private static final 'FIELD_SHOWUPDATETIME' Ljava/lang/String; = "showupdatetime"

.field private static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field private static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field private static final 'FIELD_URL' Ljava/lang/String; = "url"

.field public static final 'IMAGE_TYPE_HEAD_100' B = 2


.field public static final 'IMAGE_TYPE_HEAD_152' B = 3


.field public static final 'IMAGE_TYPE_HEAD_40' B = 1


.field public static final 'IMAGE_TYPE_HEAD_640' B = 4


.field public static final 'IMAGE_TYPE_SHOW_F1' B = 5


.field public static final 'IMAGE_TYPE_SHOW_F300' B = 6


.field public static final 'PHOTOWALL_URL' Ljava/lang/String; = "photowall"

.field private static final 'SHOW_DISC_CACHE_DIR' Ljava/lang/String; = "show"

.field public static final 'SHOW_SIZE_F1' Ljava/lang/String; = "f1"

.field public static final 'SHOW_SIZE_F300' Ljava/lang/String; = "f300"

.field private static final 'SHOW_UPDATE_TIME' Ljava/lang/String; = "show/update"

.field private static final 'SHOW_UPLOAD_URL' Ljava/lang/String; = "photowall/upload"

.field private static final 'SHOW_URL' Ljava/lang/String; = "show"

.field public static final 'TAG' Ljava/lang/String;

.field public static 'mAnimateFirstListener' Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private static 'mAppOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mContext' Landroid/content/Context;

.field public static 'mDiscussionCircleDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mFaceCircleDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mFaceDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mGroupCircleDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mGroupDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mIGetHeadUrlImp' Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;

.field private static 'mIGetShowUrlImp' Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;

.field public static 'mPspCircleDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mPspDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mRoundedFaceDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static 'mShowDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
ldc com/product/android/business/headImage/HeadImageLoader
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/product/android/business/headImage/HeadImageLoader/TAG Ljava/lang/String;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mRoundedFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mAppOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/product/android/ui/anim/AnimateFirstDisplayListener
dup
invokespecial com/product/android/ui/anim/AnimateFirstDisplayListener/<init>()V
putstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mPspCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mGroupCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mGroupDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mDiscussionCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/product/android/business/headImage/HeadImageLoader/mPspDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 0
.limit stack 2
.end method

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static asJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
aconst_null
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
ldc "null"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L4:
aconst_null
areturn
L0:
new org/json/JSONArray
dup
aload 0
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/RuntimeException/printStackTrace()V
aload 1
astore 0
goto L1
L3:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aload 1
astore 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method private static createFaceHeaderImage(Landroid/database/Cursor;JJ)Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;
new com/product/android/business/headImage/HeadImageLoader$HeaderImage
dup
invokespecial com/product/android/business/headImage/HeadImageLoader$HeaderImage/<init>()V
astore 5
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 5
aload 0
aload 0
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUrl(Ljava/lang/String;)V
aload 5
aload 0
aload 0
ldc "showupdatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setShowupdatetime(J)V
L1:
aload 5
lload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUid(J)V
aload 5
lload 3
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUpdatetime(J)V
aload 5
areturn
L0:
aload 5
ldc ""
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUrl(Ljava/lang/String;)V
aload 5
lconst_0
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setShowupdatetime(J)V
goto L1
.limit locals 6
.limit stack 4
.end method

.method private static createShowHeaderImage(Landroid/database/Cursor;JJ)Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;
new com/product/android/business/headImage/HeadImageLoader$HeaderImage
dup
invokespecial com/product/android/business/headImage/HeadImageLoader$HeaderImage/<init>()V
astore 5
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 5
aload 0
aload 0
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUrl(Ljava/lang/String;)V
aload 5
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUpdatetime(J)V
L1:
aload 5
lload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUid(J)V
aload 5
lload 3
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setShowupdatetime(J)V
aload 5
areturn
L0:
aload 5
ldc ""
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUrl(Ljava/lang/String;)V
aload 5
lconst_0
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/setUpdatetime(J)V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public static displayAppImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
getstatic com/product/android/business/headImage/HeadImageLoader/mAppOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public static displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 6
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 5
iload 5
iconst_1
if_icmplt L4
iload 5
bipush 25
if_icmpgt L4
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/getResourceId(Landroid/content/Context;Ljava/lang/String;)I
istore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "drawable://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
L5:
aload 4
astore 7
aload 4
ifnonnull L1
L0:
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 7
L1:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 6
aload 3
aload 7
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L3:
return
L4:
lload 0
iload 2
invokestatic com/product/android/business/headImage/HeadImageLoader/getHeadImageUriByType(JB)Ljava/lang/String;
astore 6
goto L5
L2:
astore 3
aload 3
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 8
.limit stack 5
.end method

.method public static displayGroupImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
.catch java/lang/OutOfMemoryError from L4 to L5 using L2
.catch java/lang/OutOfMemoryError from L6 to L7 using L2
iload 2
ifeq L6
iload 3
iconst_3
if_icmpne L4
L0:
getstatic com/product/android/business/headImage/HeadImageLoader/mDiscussionCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 4
L1:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
aload 4
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L3:
return
L4:
getstatic com/product/android/business/headImage/HeadImageLoader/mGroupCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 4
L5:
goto L1
L6:
getstatic com/product/android/business/headImage/HeadImageLoader/mGroupDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 4
L7:
goto L1
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 5
.limit stack 5
.end method

.method public static displayImage(JBLandroid/widget/ImageView;I)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 6
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 5
iload 5
iconst_1
if_icmplt L3
iload 5
bipush 25
if_icmpgt L3
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/getResourceId(Landroid/content/Context;Ljava/lang/String;)I
istore 4
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/cancelDisplayTask(Landroid/widget/ImageView;)V
aload 3
iload 4
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L3:
lload 0
iload 2
invokestatic com/product/android/business/headImage/HeadImageLoader/getHeadImageUriByType(JB)Ljava/lang/String;
astore 6
iload 4
istore 5
iload 4
ifge L4
iconst_0
istore 5
L4:
getstatic com/product/android/business/headImage/HeadImageLoader/mRoundedFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
checkcast com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer
iload 5
invokevirtual com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer/setRoundPixels(I)V
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 6
aload 3
getstatic com/product/android/business/headImage/HeadImageLoader/mRoundedFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 7
.limit stack 5
.end method

.method public static displayImage(JIBLandroid/widget/ImageView;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
iload 2
iconst_1
if_icmplt L5
iload 2
bipush 25
if_icmpgt L5
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/getResourceId(Landroid/content/Context;Ljava/lang/String;)I
istore 2
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/cancelDisplayTask(Landroid/widget/ImageView;)V
aload 4
iload 2
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L5:
lload 0
iload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/getHeadImageUriByType(JB)Ljava/lang/String;
astore 5
iload 3
iconst_5
if_icmpeq L0
iload 3
bipush 6
if_icmpne L3
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 4
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L1:
return
L2:
astore 4
aload 4
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
L3:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 4
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L4:
return
.limit locals 6
.limit stack 5
.end method

.method public static displayImage(JILandroid/widget/ImageView;)V
lload 0
iload 2
iconst_2
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
return
.limit locals 4
.limit stack 5
.end method

.method public static displayImage(JLandroid/widget/ImageView;B)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
lload 0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iload 3
aload 2
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
return
.limit locals 5
.limit stack 5
.end method

.method public static displayImage(Ljava/lang/String;IZLandroid/widget/ImageView;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
iload 1
iconst_1
if_icmplt L5
iload 1
bipush 25
if_icmpgt L5
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/getResourceId(Landroid/content/Context;Ljava/lang/String;)I
istore 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/cancelDisplayTask(Landroid/widget/ImageView;)V
aload 3
iload 1
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L5:
iload 2
ifeq L3
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 3
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
L3:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 3
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L4:
return
.limit locals 4
.limit stack 5
.end method

.method public static displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
getstatic com/product/android/business/headImage/HeadImageLoader/mRoundedFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public static displayPspImage(Ljava/lang/String;Landroid/widget/ImageView;Z)V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L1 to L3 using L2
.catch java/lang/OutOfMemoryError from L3 to L4 using L2
.catch java/lang/OutOfMemoryError from L5 to L6 using L2
iload 2
ifeq L5
L0:
getstatic com/product/android/business/headImage/HeadImageLoader/mPspCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 5
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 6
aload 6
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L3
aload 6
ldc "chat_share_table"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 6
aload 6
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 7
aload 6
ldc "lastPspLogoUpdateTime"
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 3
invokestatic java/lang/System/currentTimeMillis()J
lload 3
lsub
ldc2_w 86400000L
lcmp
ifle L3
aload 7
ldc "lastPspLogoUpdateTime"
invokestatic java/lang/System/currentTimeMillis()J
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 7
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/removePspCache(Ljava/lang/String;)V
L3:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
aload 5
getstatic com/product/android/business/headImage/HeadImageLoader/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L4:
return
L5:
getstatic com/product/android/business/headImage/HeadImageLoader/mPspDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 5
L6:
goto L1
L2:
astore 0
aload 0
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
return
.limit locals 8
.limit stack 5
.end method

.method public static displayRankImage(IJILandroid/widget/ImageView;Lcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 4
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 9
aload 9
astore 8
aload 9
ifnonnull L0
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 8
L0:
aload 5
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/LARGE Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
if_acmpne L1
iload 0
bipush 13
imul
bipush 21
idiv
istore 7
aload 4
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
iload 0
istore 6
iload 7
istore 0
L2:
aload 8
iload 6
putfield android/view/ViewGroup$LayoutParams/width I
aload 8
iload 0
putfield android/view/ViewGroup$LayoutParams/height I
aload 4
aload 8
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 5
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/LARGE Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
if_acmpeq L3
aload 5
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
if_acmpne L4
L3:
lload 1
iconst_m1
iconst_4
aload 4
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
return
L1:
aload 5
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
if_acmpne L5
iload 0
iconst_2
idiv
istore 6
iload 6
bipush 18
imul
bipush 25
idiv
istore 0
aload 4
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
goto L2
L5:
iload 0
iconst_3
idiv
istore 6
iload 6
istore 0
aload 4
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
goto L2
L4:
lload 1
iload 3
iconst_3
aload 4
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
return
.limit locals 10
.limit stack 5
.end method

.method private static getFaceUpdateTimeFromServer(J)J
lconst_0
lstore 2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "face/url"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "&size=f100"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 5
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I 2
pop
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/asJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
lload 2
lstore 0
aload 4
ifnull L0
aload 4
iconst_0
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 0
L0:
lload 0
lreturn
.limit locals 6
.limit stack 4
.end method

.method public static getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
getstatic com/product/android/business/headImage/HeadImageLoader/mIGetHeadUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
ifnull L0
getstatic com/product/android/business/headImage/HeadImageLoader/mIGetHeadUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
lload 0
aload 2
invokeinterface com/product/android/business/headImage/appAdapter/IGetHeadUrl/getFaceUrl(JLjava/lang/String;)Ljava/lang/String; 3
areturn
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 2
astore 3
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "f100"
astore 3
L1:
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "face"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method

.method private static getFaceUrlExcludeSize(J)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc "face"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method private static getHeadImageUriByType(JB)Ljava/lang/String;
iload 2
tableswitch 1
L0
L1
L2
L3
L4
L5
default : L6
L6:
getstatic com/product/android/business/headImage/HeadImageLoader/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid imageType:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc ""
areturn
L0:
lload 0
ldc "f40"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
L1:
lload 0
ldc "f100"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
L2:
lload 0
ldc "f152"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
L3:
lload 0
ldc "f640"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
L4:
lload 0
ldc "f1"
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
L5:
lload 0
ldc "f300"
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUrl(JLjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "drawable"
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aload 0
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 5
.end method

.method private static getShowUpdateTimeFromServer(J)J
lconst_0
lstore 2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "face/url"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "&size=f100"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 5
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I 2
pop
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/asJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
lload 2
lstore 0
aload 4
ifnull L0
aload 4
iconst_0
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
ldc "updatetime1"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 0
L0:
lload 0
lreturn
.limit locals 6
.limit stack 4
.end method

.method public static getShowUrl(JLjava/lang/String;)Ljava/lang/String;
getstatic com/product/android/business/headImage/HeadImageLoader/mIGetShowUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
ifnull L0
getstatic com/product/android/business/headImage/HeadImageLoader/mIGetShowUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
lload 0
aload 2
invokeinterface com/product/android/business/headImage/appAdapter/IGetHeadUrl/getFaceUrl(JLjava/lang/String;)Ljava/lang/String; 3
areturn
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 2
astore 3
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "f1"
astore 3
L1:
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "show"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method

.method private static getShowUrlExcludeSize(J)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc "show"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static init(Landroid/content/Context;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
ldc com/product/android/business/headImage/HeadImageLoader
monitorenter
L0:
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
ifnull L1
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnull L1
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L4
L1:
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache
dup
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
ldc "head"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
astore 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/face_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/face_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/face_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer
dup
bipush 20
invokespecial com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer/<init>(I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mRoundedFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache
dup
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
ldc "show"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/app_91pp I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/app_91pp I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/app_91pp I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mAppOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mPspCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/psp_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mPspDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/group_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/group_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/group_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mGroupCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/discussion_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/discussion_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/discussion_face_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/product/android/business/headImage/HeadImageLoader/mDiscussionCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L3:
ldc com/product/android/business/headImage/HeadImageLoader
monitorexit
return
L4:
getstatic com/product/android/business/headImage/HeadImageLoader/TAG Ljava/lang/String;
ldc "Try to initialize HeadImageLoader which had already been initialized before."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
goto L3
L2:
astore 0
ldc com/product/android/business/headImage/HeadImageLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 5
.end method

.method public static removeFaceCache(J)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f40"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f100"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f152"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f640"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
lload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrlExcludeSize(J)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromMemCache(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public static removeFaceCache(Ljava/lang/String;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mAppOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromMemCache(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static removePspCache(Ljava/lang/String;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mPspCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mPspDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromMemCache(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static removeShowCache(J)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f1"
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
lload 0
ldc "f300"
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
lload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUrlExcludeSize(J)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromMemCache(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public static sendFaceImageUpload(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
aload 0
lload 1
aload 3
iconst_1
invokestatic com/product/android/business/headImage/HeadImageLoader/sendFaceImageUploadWithWizard(Ljava/lang/String;JLandroid/graphics/Bitmap;I)Z
ireturn
.limit locals 4
.limit stack 5
.end method

.method public static sendFaceImageUploadWithWizard(Ljava/lang/String;JLandroid/graphics/Bitmap;I)Z
iconst_0
istore 5
aload 3
ifnonnull L0
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face/upload"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 0
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/setSid(Ljava/lang/String;)V 1
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 6
aload 3
ldc "POST"
iload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doUploadImageWithWizard(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)I 4
istore 4
iload 4
sipush 200
if_icmpeq L1
iload 4
sipush 201
if_icmpne L2
L1:
iconst_1
istore 5
L2:
iload 5
iconst_1
if_icmpne L3
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(J)V
L3:
iload 5
ireturn
.limit locals 7
.limit stack 5
.end method

.method public static sendShowImageUpload(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
iconst_0
istore 5
aload 3
ifnonnull L0
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photowall/upload"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 0
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/setSid(Ljava/lang/String;)V 1
getstatic com/product/android/business/headImage/HeadImageLoader/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 6
aload 3
ldc "POST"
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doUploadImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)I 3
istore 4
iload 4
sipush 200
if_icmpeq L1
iload 4
sipush 201
if_icmpne L2
L1:
iconst_1
istore 5
L2:
iload 5
iconst_1
if_icmpne L3
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/removeShowCache(J)V
L3:
iload 5
ireturn
.limit locals 7
.limit stack 4
.end method

.method public static setmIGetHeadUrlImp(Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;)V
aload 0
putstatic com/product/android/business/headImage/HeadImageLoader/mIGetHeadUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
return
.limit locals 1
.limit stack 1
.end method

.method public static setmIGetShowUrlImp(Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;)V
aload 0
putstatic com/product/android/business/headImage/HeadImageLoader/mIGetShowUrlImp Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;
return
.limit locals 1
.limit stack 1
.end method

.method public static updateFaceIfOutOfDate(Landroid/database/sqlite/SQLiteDatabase;J)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
lconst_0
lstore 5
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUpdateTimeFromServer(J)J
lstore 7
aload 0
ldc "'uu_header'"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid= '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 9
lload 5
lstore 3
aload 9
ifnull L1
lload 5
lstore 3
L0:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 9
aload 9
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 3
L1:
lload 7
lload 3
lcmp
ifeq L4
L3:
aload 0
aload 9
lload 1
lload 7
invokestatic com/product/android/business/headImage/HeadImageLoader/createFaceHeaderImage(Landroid/database/Cursor;JJ)Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;
invokestatic com/product/android/business/headImage/HeadImageLoader/updateHeaderDb(Landroid/database/sqlite/SQLiteDatabase;Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;)V
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(J)V
L4:
aload 9
ifnull L5
aload 9
invokeinterface android/database/Cursor/close()V 0
L5:
return
L2:
astore 0
aload 9
ifnull L6
aload 9
invokeinterface android/database/Cursor/close()V 0
L6:
aload 0
athrow
.limit locals 10
.limit stack 8
.end method

.method private static updateHeaderDb(Landroid/database/sqlite/SQLiteDatabase;Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;)V
.catch all from L0 to L1 using L2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "url"
aload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/getUrl()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "showupdatetime"
aload 1
invokevirtual com/product/android/business/headImage/HeadImageLoader$HeaderImage/getShowupdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
ldc "uu_header"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 1
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 3
.limit stack 4
.end method

.method public static updateShowIfOutOfDate(Landroid/database/sqlite/SQLiteDatabase;J)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
lconst_0
lstore 5
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/getShowUpdateTimeFromServer(J)J
lstore 7
aload 0
ldc "'uu_header'"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid= '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 9
lload 5
lstore 3
aload 9
ifnull L1
lload 5
lstore 3
L0:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 9
aload 9
ldc "showupdatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 3
L1:
lload 7
lload 3
lcmp
ifeq L4
L3:
aload 0
aload 9
lload 1
lload 7
invokestatic com/product/android/business/headImage/HeadImageLoader/createShowHeaderImage(Landroid/database/Cursor;JJ)Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;
invokestatic com/product/android/business/headImage/HeadImageLoader/updateHeaderDb(Landroid/database/sqlite/SQLiteDatabase;Lcom/product/android/business/headImage/HeadImageLoader$HeaderImage;)V
lload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(J)V
L4:
aload 9
ifnull L5
aload 9
invokeinterface android/database/Cursor/close()V 0
L5:
return
L2:
astore 0
aload 9
ifnull L6
aload 9
invokeinterface android/database/Cursor/close()V 0
L6:
aload 0
athrow
.limit locals 10
.limit stack 8
.end method
