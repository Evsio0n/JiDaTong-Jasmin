.bytecode 50.0
.class public synchronized com/nd/rj/common/login/NdLogin91Assistant
.super java/lang/Object
.inner class inner com/nd/rj/common/login/NdLogin91Assistant$1

.field private static final 'APPOINT_KEY' Ljava/lang/String; = "reg91com"

.field public static final 'DATA_TYPE_GET_CHECKCODE' I = 13003


.field public static final 'DATA_TYPE_GET_CHECKCODE_RESPONSE' I = 14003


.field public static final 'DATA_TYPE_INIT' I = 13001


.field public static final 'DATA_TYPE_INIT_RESPONSE' I = 14001


.field public static final 'DATA_TYPE_LOGIN' I = 13002


.field public static final 'DATA_TYPE_LOGIN_RESPONSE' I = 14002


.field private static final 'ENCODE_TYPE' I = 1


.field private static final 'GET_CHECKCODE_SUCCESS' I = 20182


.field private static final 'INIT_SUCCESS' I = 20180


.field private static final 'LOGIN_SUCCESS' I = 20050


.field public static final 'RESPONSE_TYPE_ERROR' I = 11000


.field public static final 'TALK_EXPIRED' I = 20005


.field public static final 'TIMESTAMP_ERROR' I = 11009


.field private static 'mInstance' Lcom/nd/rj/common/login/NdLogin91Assistant;

.field private static final 'tag' Ljava/lang/String; = "debug"

.field private 'mContext' Landroid/content/Context;

.field private 'mCookie' Ljava/lang/String;

.field private 'mDrawable' Landroid/graphics/drawable/BitmapDrawable;

.field private 'mErrMsg' Ljava/lang/String;

.field private 'mErrorCode' I

.field private 'mHttpTool' Lcom/nd/rj/common/util/http/HttpTool4Byte;

.field private 'mSessionCode' Ljava/lang/String;

.field private 'mSessionKey' Ljava/lang/String;

.field private 'mSiteFlat' I

.field private 'mStartTime' J

.field private 'mTimeGap' J

.field private 'mbInitializing' Z

.field private 'mbIsInitSuccessful' Z

.field private 'mbLoginSuccess' Z

.field private 'mbNeedCheckcode' Z

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mTimeGap J
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbIsInitSuccessful Z
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbLoginSuccess Z
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbInitializing Z
aload 0
ldc ""
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
aload 0
aload 1
putfield com/nd/rj/common/login/NdLogin91Assistant/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getSiteflat()I
putfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
aload 0
new com/nd/rj/common/util/http/HttpTool4Byte
dup
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mContext Landroid/content/Context;
invokespecial com/nd/rj/common/util/http/HttpTool4Byte/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/NdLogin91Assistant/mHttpTool Lcom/nd/rj/common/util/http/HttpTool4Byte;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/NdLogin91Assistant;)Landroid/graphics/drawable/BitmapDrawable;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method private decode(Ljava/io/InputStream;II)I
.throws java/io/IOException
.throws java/lang/Exception
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 5
iload 5
iload 3
if_icmpeq L0
aload 0
ldc "\u670d\u52a1\u7aef\u8fd4\u56de\u5305\u7c7b\u578b\u9519\u8bef"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
sipush 11000
istore 4
L1:
iload 4
ireturn
L0:
aload 0
aload 0
aload 1
iconst_4
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getLongFromStream(Ljava/io/InputStream;I)J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
lsub
putfield com/nd/rj/common/login/NdLogin91Assistant/mTimeGap J
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 3
iload 2
sipush 13001
if_icmpne L2
iload 3
sipush 20180
if_icmpeq L3
L4:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "===init finish,return code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
ireturn
L3:
aload 0
aload 0
aload 1
bipush 8
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
aload 0
aload 0
aload 1
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
ldc "reg91com"
invokestatic com/nd/rj/common/util/EncryptTool/desDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 2
iload 2
ifeq L5
aload 0
iconst_1
putfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
aload 0
aload 1
iload 2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getDrawableFromStream(Ljava/io/InputStream;I)V
L5:
iconst_0
istore 3
goto L4
L2:
iload 2
sipush 13003
if_icmpne L6
iload 3
sipush 20182
if_icmpeq L7
L8:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "===checkcode "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ",return code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
ireturn
L7:
aload 0
aload 0
aload 1
bipush 8
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 4
iconst_0
istore 2
iload 2
istore 3
iload 4
ifeq L8
aload 0
iconst_1
putfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
aload 0
aload 1
iload 4
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getDrawableFromStream(Ljava/io/InputStream;I)V
iload 2
istore 3
goto L8
L6:
iload 3
istore 4
iload 2
sipush 13002
if_icmpne L1
aload 0
aload 0
aload 1
bipush 8
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 2
ldc ""
astore 6
iload 2
ifeq L9
aload 0
aload 1
iload 2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokestatic com/nd/rj/common/util/EncryptTool/desDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L9:
iload 3
sipush 20050
if_icmpeq L10
aload 0
aload 1
iconst_2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getIntFromStream(Ljava/io/InputStream;I)I
istore 2
iload 2
ifeq L11
aload 0
aload 1
iload 2
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getDrawableFromStream(Ljava/io/InputStream;I)V
L11:
aload 0
aload 6
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
L12:
aload 0
iconst_1
putfield com/nd/rj/common/login/NdLogin91Assistant/mbLoginSuccess Z
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "===login "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mbLoginSuccess Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ",return code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
ireturn
L10:
iconst_0
istore 3
aload 0
aload 6
putfield com/nd/rj/common/login/NdLogin91Assistant/mCookie Ljava/lang/String;
goto L12
.limit locals 7
.limit stack 6
.end method

.method private doRequest(ILjava/lang/String;Ljava/lang/String;)I
aload 0
iload 1
aload 2
aload 3
ldc ""
invokespecial com/nd/rj/common/login/NdLogin91Assistant/doRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method private doRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L6 to L7 using L3
.catch java/io/IOException from L7 to L8 using L9
.catch java/io/IOException from L10 to L11 using L12
iload 1
sipush 13001
if_icmpne L13
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Assistant/initParam()[B
astore 2
sipush 14001
istore 5
L14:
aload 2
ifnonnull L15
iconst_m1
istore 1
L16:
iload 1
ireturn
L13:
iload 1
sipush 13003
if_icmpne L17
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getCheckCodeParam()[B
astore 2
sipush 14003
istore 5
goto L14
L17:
aload 0
aload 2
aload 3
aload 4
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getLoginParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
astore 2
sipush 14002
istore 5
goto L14
L15:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mHttpTool Lcom/nd/rj/common/util/http/HttpTool4Byte;
aload 2
aload 3
aload 4
invokevirtual com/nd/rj/common/util/http/HttpTool4Byte/DoPost([BLjava/lang/StringBuffer;Ljava/util/ArrayList;)I
istore 6
iload 6
ifeq L18
iload 6
istore 1
iload 6
getstatic com/nd/rj/common/R$string/nd_unknow_error I
if_icmpne L16
aload 0
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
iconst_m1
ireturn
L18:
aload 4
invokevirtual java/util/ArrayList/size()I
ifle L19
aload 4
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/io/InputStream
astore 2
aload 2
ifnull L19
L0:
aload 0
aload 2
iload 1
iload 5
invokespecial com/nd/rj/common/login/NdLogin91Assistant/decode(Ljava/io/InputStream;II)I
istore 5
L1:
aload 2
invokevirtual java/io/InputStream/close()V
L4:
iload 5
ireturn
L5:
astore 2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "close inputstream "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
iload 5
ireturn
L2:
astore 3
L6:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doRequest "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
L7:
aload 2
invokevirtual java/io/InputStream/close()V
L8:
iload 6
ireturn
L9:
astore 2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "close inputstream "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
iload 6
ireturn
L3:
astore 3
L10:
aload 2
invokevirtual java/io/InputStream/close()V
L11:
aload 3
athrow
L12:
astore 2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "close inputstream "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
goto L11
L19:
iconst_m1
ireturn
.limit locals 7
.limit stack 4
.end method

.method private getDrawableFromStream(Ljava/io/InputStream;I)V
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
ifnull L4
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L4
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
L4:
aload 0
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
putfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mContext Landroid/content/Context;
checkcast android/app/Activity
new com/nd/rj/common/login/NdLogin91Assistant$1
dup
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Assistant$1/<init>(Lcom/nd/rj/common/login/NdLogin91Assistant;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
L5:
return
L2:
astore 1
return
.limit locals 4
.limit stack 5
.end method

.method private getErrmsgFromCode(I)V
.catch java/lang/Exception from L0 to L1 using L2
iload 1
ifne L3
aload 0
ldc ""
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
L4:
return
L3:
iload 1
iconst_m1
if_icmpeq L4
iload 1
sipush 1000
if_icmpge L5
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "HTTP\u9519\u8bef:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L5:
iload 1
lookupswitch
11000 : L4
11007 : L6
11009 : L7
11010 : L8
20001 : L9
20005 : L10
20006 : L11
20042 : L12
20049 : L13
20051 : L14
20054 : L15
20092 : L16
20181 : L17
20183 : L18
default : L0
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mContext Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
L1:
return
L2:
astore 2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u672a\u77e5\u9519\u8bef\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L6:
aload 0
ldc "\u68c0\u9a8c\u7801\u4e0d\u6b63\u786e"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L7:
aload 0
ldc "\u65f6\u95f4\u6233\u4e0d\u6b63\u786e"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L8:
aload 0
ldc "\u63a5\u53e3\u8d85\u8fc7\u6b21\u6570"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L17:
aload 0
ldc "\u521d\u59cb\u5316\u5931\u8d25"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L18:
aload 0
ldc "\u8bf7\u6c42\u9a8c\u8bc1\u7801\u5931\u8d25"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L9:
aload 0
ldc "\u7528\u6237\u4e0d\u5b58\u5728\u6216\u8005\u5bc6\u7801\u9519\u8bef"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L10:
aload 0
ldc "\u4f1a\u8bdd\u5df2\u8fc7\u671f"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L11:
aload 0
ldc "\u6570\u636e\u5305\u65e0\u6cd5\u89e3\u5bc6"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L12:
aload 0
ldc "\u7528\u6237\u4e0d\u5b58\u5728\u6216\u8005\u5bc6\u7801\u9519\u8bef"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L13:
aload 0
ldc "\u767b\u5f55\u9650\u5236"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L14:
aload 0
ldc "\u5bc6\u7801\u957f\u5ea6\u4e0d\u5408\u6cd5"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L15:
aload 0
ldc "\u9a8c\u8bc1\u7801\u9519\u8bef"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
L16:
aload 0
ldc "\u8d26\u53f7\u672a\u6fc0\u6d3b"
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/rj/common/login/NdLogin91Assistant/mInstance Lcom/nd/rj/common/login/NdLogin91Assistant;
ifnonnull L3
ldc com/nd/rj/common/login/NdLogin91Assistant
monitorenter
L0:
getstatic com/nd/rj/common/login/NdLogin91Assistant/mInstance Lcom/nd/rj/common/login/NdLogin91Assistant;
ifnonnull L1
new com/nd/rj/common/login/NdLogin91Assistant
dup
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Assistant/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/NdLogin91Assistant/mInstance Lcom/nd/rj/common/login/NdLogin91Assistant;
L1:
ldc com/nd/rj/common/login/NdLogin91Assistant
monitorexit
L3:
getstatic com/nd/rj/common/login/NdLogin91Assistant/mInstance Lcom/nd/rj/common/login/NdLogin91Assistant;
areturn
L2:
astore 0
L4:
ldc com/nd/rj/common/login/NdLogin91Assistant
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method private getIntFromStream(Ljava/io/InputStream;I)I
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
iload 2
newarray byte
astore 3
L0:
aload 1
aload 3
iconst_0
iload 2
invokevirtual java/io/InputStream/read([BII)I
pop
L1:
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/byteArrayToInt([B)I
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private getLoginParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
new org/apache/http/util/ByteArrayBuffer
dup
sipush 169
invokespecial org/apache/http/util/ByteArrayBuffer/<init>(I)V
astore 6
sipush 13002
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 0
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
putfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mTimeGap J
ladd
lstore 4
lload 4
iconst_4
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendLongToByteArrayBuffer(JILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 7
aload 6
aload 7
iconst_0
aload 7
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
iconst_1
iconst_1
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
ldc_w 60001
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
L0:
aload 1
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokestatic com/nd/rj/common/util/EncryptTool/desEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
astore 7
L1:
aload 7
arraylength
iconst_2
imul
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 7
invokestatic com/nd/rj/common/util/EncryptTool/byte2Hex([B)Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/getBytes()[B
astore 7
aload 6
aload 7
iconst_0
aload 7
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
L3:
aload 2
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokestatic com/nd/rj/common/util/EncryptTool/desEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
astore 7
L4:
aload 7
arraylength
iconst_2
imul
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 7
invokestatic com/nd/rj/common/util/EncryptTool/byte2Hex([B)Ljava/lang/String;
astore 2
aload 2
invokevirtual java/lang/String/getBytes()[B
astore 7
aload 6
aload 7
iconst_0
aload 7
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
L6:
aload 3
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokestatic com/nd/rj/common/util/EncryptTool/desEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
astore 7
L7:
aload 7
arraylength
iconst_2
imul
iconst_2
aload 6
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 7
invokestatic com/nd/rj/common/util/EncryptTool/byte2Hex([B)Ljava/lang/String;
astore 3
aload 3
invokevirtual java/lang/String/getBytes()[B
astore 7
aload 6
aload 7
iconst_0
aload 7
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
sipush 13002
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "UTF-8"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 1
aload 6
aload 1
iconst_0
aload 1
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 6
invokevirtual org/apache/http/util/ByteArrayBuffer/toByteArray()[B
areturn
L2:
astore 2
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error occor while encrypt account:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
aconst_null
areturn
L5:
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error occor while encrypt psw:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
aconst_null
areturn
L8:
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error occor while encrypt checkcode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
aconst_null
areturn
.limit locals 8
.limit stack 5
.end method

.method private getLongFromStream(Ljava/io/InputStream;I)J
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
iload 2
newarray byte
astore 3
L0:
aload 1
aload 3
iconst_0
iload 2
invokevirtual java/io/InputStream/read([BII)I
pop
L1:
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/byteArrayToLong([B)J
lreturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private getStringFromStream(Ljava/io/InputStream;I)Ljava/lang/String;
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
iload 2
newarray byte
astore 3
L0:
aload 1
aload 3
iconst_0
iload 2
invokevirtual java/io/InputStream/read([BII)I
pop
L1:
new java/lang/String
dup
aload 3
ldc "UTF-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
areturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private initParam()[B
new org/apache/http/util/ByteArrayBuffer
dup
bipush 49
invokespecial org/apache/http/util/ByteArrayBuffer/<init>(I)V
astore 3
sipush 13001
iconst_2
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 0
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
putfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mTimeGap J
ladd
lstore 1
lload 1
iconst_4
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendLongToByteArrayBuffer(JILorg/apache/http/util/ByteArrayBuffer;)[B
pop
bipush 8
newarray byte
astore 4
aload 4
dup
iconst_0
ldc_w 0
bastore
dup
iconst_1
ldc_w 0
bastore
dup
iconst_2
ldc_w 0
bastore
dup
iconst_3
ldc_w 0
bastore
dup
iconst_4
ldc_w 0
bastore
dup
iconst_5
ldc_w 0
bastore
dup
bipush 6
ldc_w 0
bastore
dup
bipush 7
ldc_w 0
bastore
pop
aload 3
aload 4
iconst_0
aload 4
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
iconst_2
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
iconst_1
iconst_1
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
sipush 13001
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "reg91com"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "UTF-8"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 4
aload 3
aload 4
iconst_0
aload 4
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 3
invokevirtual org/apache/http/util/ByteArrayBuffer/toByteArray()[B
areturn
.limit locals 5
.limit stack 5
.end method

.method public doGetCheckcode()I
aload 0
aload 0
sipush 13003
aconst_null
aconst_null
invokespecial com/nd/rj/common/login/NdLogin91Assistant/doRequest(ILjava/lang/String;Ljava/lang/String;)I
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
aload 0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getErrmsgFromCode(I)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
ireturn
.limit locals 1
.limit stack 5
.end method

.method public doInit()I
iconst_1
istore 1
aload 0
iconst_1
putfield com/nd/rj/common/login/NdLogin91Assistant/mbInitializing Z
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
aload 0
aload 0
sipush 13001
aconst_null
aconst_null
invokespecial com/nd/rj/common/login/NdLogin91Assistant/doRequest(ILjava/lang/String;Ljava/lang/String;)I
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
aload 0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getErrmsgFromCode(I)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
sipush 11009
if_icmpne L0
aload 0
aload 0
sipush 13001
aconst_null
aconst_null
invokespecial com/nd/rj/common/login/NdLogin91Assistant/doRequest(ILjava/lang/String;Ljava/lang/String;)I
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
aload 0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getErrmsgFromCode(I)V
L0:
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbInitializing Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
ifne L1
L2:
aload 0
iload 1
putfield com/nd/rj/common/login/NdLogin91Assistant/mbIsInitSuccessful Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
ireturn
L1:
iconst_0
istore 1
goto L2
.limit locals 2
.limit stack 5
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;)I
aload 0
aload 1
aload 2
ldc ""
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
aload 3
astore 4
aload 3
ifnonnull L0
ldc ""
astore 4
L0:
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Assistant/mbLoginSuccess Z
aload 0
aconst_null
putfield com/nd/rj/common/login/NdLogin91Assistant/mCookie Ljava/lang/String;
aload 0
aload 0
sipush 13002
aload 1
aload 2
aload 4
invokespecial com/nd/rj/common/login/NdLogin91Assistant/doRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
putfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
aload 0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
invokespecial com/nd/rj/common/login/NdLogin91Assistant/getErrmsgFromCode(I)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
ireturn
.limit locals 5
.limit stack 6
.end method

.method public getCheckCodeParam()[B
new org/apache/http/util/ByteArrayBuffer
dup
bipush 49
invokespecial org/apache/http/util/ByteArrayBuffer/<init>(I)V
astore 3
sipush 13003
iconst_2
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 0
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
putfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mStartTime J
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mTimeGap J
ladd
lstore 1
lload 1
iconst_4
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendLongToByteArrayBuffer(JILorg/apache/http/util/ByteArrayBuffer;)[B
pop
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 4
aload 3
aload 4
iconst_0
aload 4
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
iconst_2
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
iconst_1
iconst_1
aload 3
invokestatic com/nd/rj/common/util/EncryptTool/appendIntToByteArrayBuffer(IILorg/apache/http/util/ByteArrayBuffer;)[B
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
sipush 13003
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSiteFlat I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mSessionKey Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "UTF-8"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 4
aload 3
aload 4
iconst_0
aload 4
arraylength
invokevirtual org/apache/http/util/ByteArrayBuffer/append([BII)V
aload 3
invokevirtual org/apache/http/util/ByteArrayBuffer/toByteArray()[B
areturn
.limit locals 5
.limit stack 5
.end method

.method public getCookie()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mCookie Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getErrmsg()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getErrorCode()I
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hasCheckcode()Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mDrawable Landroid/graphics/drawable/BitmapDrawable;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isInitSuccessful()Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mbIsInitSuccessful Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isInitializing()Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mbInitializing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isNeedCheckcode()Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mbNeedCheckcode Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isNeedInit()Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
sipush 20005
if_icmpeq L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
sipush 11000
if_icmpeq L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mErrorCode I
sipush 11009
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public requestCookie(Lcom/nd/rj/common/login/entity/LoginParam;)Z
aload 1
getfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
ldc "GB2312"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 3
iconst_0
istore 2
L0:
iload 2
iconst_1
iadd
istore 2
iload 2
iconst_2
if_icmple L1
L2:
iconst_0
ireturn
L1:
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifeq L3
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isNeedInit()Z
ifne L3
aload 0
aload 1
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
aload 3
aload 1
getfield com/nd/rj/common/login/entity/LoginParam/captcha Ljava/lang/String;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ifne L3
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant/mCookie Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
iconst_1
ireturn
L3:
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifeq L4
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isNeedInit()Z
ifeq L2
L4:
aload 0
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
ifne L2
goto L0
.limit locals 4
.limit stack 4
.end method
