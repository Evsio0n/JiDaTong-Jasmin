.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSEditWeiBo
.super android/app/Activity
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$1
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$2
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$3
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$4
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$5
.inner class private BitMapTask inner com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask outer com/nd/rj/common/microblogging/SNSEditWeiBo
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask outer com/nd/rj/common/microblogging/SNSEditWeiBo

.field private static final 'BLOG_MAX_LEN' I = 140


.field private 'm_ImgFile' Ljava/io/File;

.field private 'm_Items' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'm_Set' Lcom/nd/rj/common/microblogging/help/ConfigSet;

.field private 'm_btmap' Landroid/graphics/Bitmap;

.field private 'm_btnBack' Landroid/widget/Button;

.field private 'm_btnSend' Landroid/widget/Button;

.field private 'm_btnSmallBit' Landroid/graphics/Bitmap;

.field private 'm_edtBlog' Landroid/widget/EditText;

.field private 'm_ivImage' Landroid/widget/ImageView;

.field private 'm_nContentMaxLen' I

.field private 'm_nHight' I

.field private 'm_tvHint' Landroid/widget/TextView;

.field private 'onBack' Landroid/view/View$OnClickListener;

.field private 'onSend' Landroid/view/View$OnClickListener;

.field private 'textwatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nHight I
aload 0
sipush 140
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nContentMaxLen I
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ImgFile Ljava/io/File;
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnSmallBit Landroid/graphics/Bitmap;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
aload 0
new com/nd/rj/common/microblogging/SNSEditWeiBo$3
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$3/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/onBack Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/microblogging/SNSEditWeiBo$4
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$4/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/onSend Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/microblogging/SNSEditWeiBo$5
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$5/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/textwatcher Landroid/text/TextWatcher;
return
.limit locals 1
.limit stack 4
.end method

.method private CleanBmp()V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nHight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;I)I
aload 0
iload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nHight I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/ImageView;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ivImage Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btmap Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/io/File;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ImgFile Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Ljava/io/File;)Ljava/io/File;
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ImgFile Ljava/io/File;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Ljava/io/File;
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo/getSendBmpFile(Landroid/graphics/Bitmap;)Ljava/io/File;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnSmallBit Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1302(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnSmallBit Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
aload 0
aload 1
aload 2
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo/getThumb(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo/getThumbByBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_edtBlog Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo/CleanBmp()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nContentMaxLen I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_tvHint Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L1
aconst_null
areturn
L1:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 2
L3:
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmpge L4
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
L5:
iload 1
i2f
iload 3
i2f
iload 2
i2f
fdiv
fmul
f2i
istore 2
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
if_icmple L6
aload 0
iload 1
iload 2
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
L2:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 2
goto L3
L4:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
istore 3
goto L5
L6:
aload 0
iload 2
iload 1
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
.limit locals 4
.limit stack 4
.end method

.method private getSendBmpFile(Landroid/graphics/Bitmap;)Ljava/io/File;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
sipush 450
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 2
aload 2
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
astore 1
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
ldc "weiboTemp.jpg"
iconst_1
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 85
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/FileOutputStream/flush()V
aload 2
invokevirtual java/io/FileOutputStream/close()V
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
new java/io/File
dup
aload 0
ldc "weiboTemp.jpg"
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private getThumb(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
aload 2
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 1
aload 2
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
ldc_w 50.0F
fdiv
invokestatic java/lang/Math/round(F)I
istore 3
aload 2
getfield android/graphics/BitmapFactory$Options/outHeight I
i2f
ldc_w 100.0F
fdiv
invokestatic java/lang/Math/round(F)I
istore 4
aload 2
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
iload 3
iload 4
if_icmple L0
L1:
iload 3
iconst_1
if_icmple L2
L3:
aload 2
iload 3
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
areturn
L0:
iload 4
istore 3
goto L1
L2:
iconst_1
istore 3
goto L3
.limit locals 5
.limit stack 2
.end method

.method private getThumbByBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
sipush 130
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method InitData()V
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getIntent()Landroid/content/Intent;
ldc "SNS_CONTENT"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_edtBlog Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getIntent()Landroid/content/Intent;
ldc "SNS_IMAGE_FILE"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
astore 1
aload 1
ifnull L0
aload 0
aload 1
checkcast java/io/File
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ImgFile Ljava/io/File;
L0:
new com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Lcom/nd/rj/common/microblogging/SNSEditWeiBo$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/ReshData()V
return
.limit locals 2
.limit stack 4
.end method

.method public ReshData()V
aload 0
aload 0
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
invokevirtual com/nd/rj/common/microblogging/ConfigFile/GetSNSSupport()Ljava/util/ArrayList;
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
aload 0
new com/nd/rj/common/microblogging/help/ConfigSet
dup
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getApplicationContext()Landroid/content/Context;
invokespecial com/nd/rj/common/microblogging/help/ConfigSet/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
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
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
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
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Items Ljava/util/ArrayList;
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
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
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
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 2
getfield com/nd/rj/common/microblogging/SNSType/snstype I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
putfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
goto L4
.limit locals 3
.limit stack 7
.end method

.method SetCtrl()V
aload 0
sipush 140
invokestatic com/nd/rj/common/microblogging/SNSShare/getMaxFromWhereLength()I
isub
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_nContentMaxLen I
aload 0
getstatic com/nd/rj/common/R$id/viewbkId I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
getstatic com/nd/rj/common/R$drawable/nd_sns_bg_02 I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/btnSend I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnSend Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnSend Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/onSend Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/btnBack I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnBack Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_btnBack Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/onBack Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/edtBlog I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_edtBlog Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_edtBlog Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/textwatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvHint I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_tvHint Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/ivImage I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_ivImage Landroid/widget/ImageView;
aload 0
getstatic com/nd/rj/common/R$id/root_layout I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/findViewById(I)Landroid/view/View;
checkcast com/nd/rj/common/microblogging/ResizeLayout
new com/nd/rj/common/microblogging/SNSEditWeiBo$1
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$1/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
invokevirtual com/nd/rj/common/microblogging/ResizeLayout/setOnResizeListener(Lcom/nd/rj/common/microblogging/ResizeLayout$OnResizeListener;)V
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getResources()Landroid/content/res/Resources;
astore 2
aload 0
ldc_w 16.0F
invokestatic com/nd/rj/common/microblogging/help/StrFun/dip2px(Landroid/content/Context;F)I
istore 1
aload 2
getstatic com/nd/rj/common/R$drawable/nd_sns_delete I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_tvHint Landroid/widget/TextView;
aconst_null
aconst_null
aload 2
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo/m_tvHint Landroid/widget/TextView;
new com/nd/rj/common/microblogging/SNSEditWeiBo$2
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$2/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_sns_edit I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/setContentView(I)V
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/SetCtrl()V
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/InitData()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
