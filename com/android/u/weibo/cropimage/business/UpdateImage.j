.bytecode 50.0
.class public synchronized com/android/u/weibo/cropimage/business/UpdateImage
.super java/lang/Object
.inner class UpdateImageTask inner com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask outer com/android/u/weibo/cropimage/business/UpdateImage

.field public static final 'HANDLER_ERROR' I = 0


.field public static final 'HANDLER_FAILE' I = 2


.field public static final 'HANDLER_SUCCESS' I = 1


.field private static final 'TAG' Ljava/lang/String; = "linsml"

.field private 'mContext' Landroid/app/Activity;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mMyAvatar' Landroid/graphics/Bitmap;

.field private 'mMyShowAvatar' Landroid/graphics/Bitmap;

.field private 'updateHeadImageTask' Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;

.method public <init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/UpdateImage/updateHeadImageTask Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/UpdateImage/mHandler Landroid/os/Handler;
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/UpdateImage/mMyAvatar Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/business/UpdateImage/mMyShowAvatar Landroid/graphics/Bitmap;
aload 0
aload 4
putfield com/android/u/weibo/cropimage/business/UpdateImage/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
aload 2
ifnull L0
aload 3
ifnonnull L1
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mHandler Landroid/os/Handler;
ifnull L2
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L2:
return
L1:
aload 0
aload 0
aload 2
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage/decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
putfield com/android/u/weibo/cropimage/business/UpdateImage/mMyAvatar Landroid/graphics/Bitmap;
aload 0
aload 0
aload 3
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage/decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
putfield com/android/u/weibo/cropimage/business/UpdateImage/mMyShowAvatar Landroid/graphics/Bitmap;
return
.limit locals 5
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mMyAvatar Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mMyShowAvatar Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/cropimage/business/UpdateImage;)V
aload 0
invokespecial com/android/u/weibo/cropimage/business/UpdateImage/doModheadSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doModheadSuccess()V
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doModheadSuccess()V
return
.limit locals 1
.limit stack 0
.end method

.method public decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.catch java/io/FileNotFoundException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public update()V
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
ifnull L0
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/updateHeadImageTask Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;
ifnull L1
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/updateHeadImageTask Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/header_pic_uploading_please_wait I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
new com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask
dup
aload 0
invokespecial com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/<init>(Lcom/android/u/weibo/cropimage/business/UpdateImage;)V
putfield com/android/u/weibo/cropimage/business/UpdateImage/updateHeadImageTask Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/updateHeadImageTask Lcom/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mContext Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/wait_for_upload_header_pic I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 4
.end method

.method public updateHead()Z
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mMyAvatar Landroid/graphics/Bitmap;
invokestatic com/product/android/business/headImage/HeadImageLoader/sendFaceImageUpload(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
istore 1
iload 1
ifne L0
ldc "linsml"
ldc "updateHead error!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public updateShow()Z
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage/mMyShowAvatar Landroid/graphics/Bitmap;
invokestatic com/product/android/business/headImage/HeadImageLoader/sendShowImageUpload(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
istore 1
iload 1
ifne L0
ldc "linsml"
ldc "updateShow error!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method
