.bytecode 50.0
.class public synchronized com/product/android/commonInterface/album/Image
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner com/product/android/commonInterface/album/Image$1
.inner class public final ImageType inner com/product/android/commonInterface/album/Image$ImageType outer com/product/android/commonInterface/album/Image

.field public static final 'APPCODE' Ljava/lang/String;

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/product/android/commonInterface/album/Image;>;"

.field public static final 'GROUPAPITYPE' Ljava/lang/String; = "apitype=g"

.field public static final 'IMAGE_DOMAIN' Ljava/lang/String; = "https://img0.pp.99.com"

.field public static final 'UNITAPITYPE' Ljava/lang/String; = "apitype=u"

.field private 'mAlbumId' J

.field private 'mCommentCnt' I

.field private 'mCreateDt' J

.field private 'mCreateTime' Ljava/lang/String;

.field private 'mCreateUid' J

.field private 'mFileMd5' Ljava/lang/String;

.field private 'mFileUrl' Ljava/lang/String;

.field private 'mGid' J

.field private 'mImageId' J

.field private 'mImageType' I

.field private 'mIsMyPraise' I

.field private 'mNavCnt' I

.field private 'mPicDesc' Ljava/lang/String;

.field private 'mPraiseCnt' I

.field private 'mTotalSize' I

.field private 'mUpdateTime' Ljava/lang/String;

.field private 'mUrl160' Ljava/lang/String;

.field private 'mUrl480' Ljava/lang/String;

.field private 'mUserName' Ljava/lang/String;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "appcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUM_APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
new com/product/android/commonInterface/album/Image$1
dup
invokespecial com/product/android/commonInterface/album/Image$1/<init>()V
putstatic com/product/android/commonInterface/album/Image/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/product/android/commonInterface/album/Image/mUserName Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/album/Image/mPicDesc Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/album/Image/mTotalSize I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$002(Lcom/product/android/commonInterface/album/Image;J)J
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mCreateUid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1002(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mCommentCnt I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mNavCnt I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1102(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mPraiseCnt I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1202(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mIsMyPraise I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1302(Lcom/product/android/commonInterface/album/Image;J)J
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mAlbumId J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1402(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mImageType I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1502(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUserName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1602(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mPicDesc Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1702(Lcom/product/android/commonInterface/album/Image;J)J
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mCreateDt J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1802(Lcom/product/android/commonInterface/album/Image;I)I
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mTotalSize I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$402(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/product/android/commonInterface/album/Image;J)J
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mImageId J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$602(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$702(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUpdateTime Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$802(Lcom/product/android/commonInterface/album/Image;J)J
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mGid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$902(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static appendAlbumParams(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new java/lang/StringBuilder
dup
aload 0
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
aload 0
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "?"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc "&app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 0
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
ldc "&apitype=u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L1
aload 0
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
astore 2
iload 1
ifeq L1
aload 0
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
areturn
L2:
aload 0
ldc "?app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 3
.limit stack 3
.end method

.method public static appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "?"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 1
ldc "sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 1
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
.limit locals 2
.limit stack 2
.end method

.method private createImageThumbUrl(Ljava/lang/String;I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/thumb/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mImageId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".jpg?NullPic=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iconst_0
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private static getEmptyStrNotNULL(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
astore 1
ldc "null"
aload 0
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
L0:
ldc ""
astore 1
L1:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getGPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/StringIndexOutOfBoundsException from L1 to L3 using L2
.catch java/lang/StringIndexOutOfBoundsException from L3 to L4 using L2
.catch java/lang/StringIndexOutOfBoundsException from L4 to L5 using L2
.catch java/lang/StringIndexOutOfBoundsException from L6 to L7 using L2
.catch java/lang/StringIndexOutOfBoundsException from L8 to L9 using L2
.catch java/lang/StringIndexOutOfBoundsException from L10 to L11 using L2
ldc ""
astore 5
aload 1
ifnull L12
ldc ""
aload 1
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L13
L12:
ldc ""
areturn
L13:
aload 5
astore 3
aload 1
ldc "pic_id"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L14
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 6
aconst_null
astore 4
aconst_null
astore 3
L0:
aload 1
ldc "pic_id"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
aload 1
ldc "pic_id"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 4
aload 4
ldc "&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 4
aload 4
ldc "="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
aload 4
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L1:
aload 1
ldc "type"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 1
aload 1
ldc "type"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 4
aload 4
ldc "&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
aload 1
ldc "type"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
aload 4
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L4
aload 3
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L4:
aload 3
ldc "&apitype=g"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L5:
goto L14
L6:
aload 4
aload 4
ldc "="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
L7:
goto L1
L8:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
aload 1
ldc "type"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L9:
goto L3
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
L11:
goto L3
L2:
astore 0
ldc "getGPhotoURL"
ldc "getGPhotoURL index out of bounds"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual java/lang/StringIndexOutOfBoundsException/printStackTrace()V
aload 5
astore 3
L14:
aload 3
areturn
.limit locals 7
.limit stack 5
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/album/Image
ifeq L0
aload 1
checkcast com/product/android/commonInterface/album/Image
astore 1
aload 0
getfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getAlbumId()J
aload 0
getfield com/product/android/commonInterface/album/Image/mAlbumId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCommentcnt()I
aload 0
getfield com/product/android/commonInterface/album/Image/mCommentCnt I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCreateDt()J
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateDt J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCreateTime()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreateUid()J
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFileName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileUrl()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFile_dna()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()J
aload 0
getfield com/product/android/commonInterface/album/Image/mGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getImageId()J
aload 0
getfield com/product/android/commonInterface/album/Image/mImageId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getImageType()I
aload 0
getfield com/product/android/commonInterface/album/Image/mImageType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNav_cnt()I
aload 0
getfield com/product/android/commonInterface/album/Image/mNavCnt I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPicDesc()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mPicDesc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPraisecnt()I
aload 0
getfield com/product/android/commonInterface/album/Image/mPraiseCnt I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTotalSize()I
aload 0
getfield com/product/android/commonInterface/album/Image/mTotalSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdateTime()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUpdateTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl_160()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl_480()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl_480AppSid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/album/Image/mUserName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isMyPraise()I
aload 0
getfield com/product/android/commonInterface/album/Image/mIsMyPraise I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseImageInfoJson(Lorg/json/JSONObject;)V
aload 0
aload 1
lconst_0
lconst_0
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;JJ)V
return
.limit locals 2
.limit stack 6
.end method

.method public parseImageInfoJson(Lorg/json/JSONObject;JJ)V
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/StringIndexOutOfBoundsException from L3 to L4 using L2
lload 2
lconst_0
lcmp
ifeq L5
aload 0
lload 2
putfield com/product/android/commonInterface/album/Image/mCreateUid J
L6:
aload 0
aload 1
ldc "pic_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mImageId J
aload 0
aload 1
ldc "liked"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mIsMyPraise I
aload 0
aload 1
ldc "likedcnt"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mPraiseCnt I
aload 0
aload 1
ldc "nav_cnt"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mNavCnt I
aload 0
aload 1
ldc "file_dna"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
aload 0
aload 1
ldc "file_url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
iconst_0
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
aload 0
aload 1
ldc "comment_cnt"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mCommentCnt I
lload 4
lconst_0
lcmp
ifne L7
aload 0
aload 1
ldc "album_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mAlbumId J
L8:
aload 0
aload 1
ldc "image_type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mImageType I
ldc ""
astore 7
aload 7
astore 6
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
L0:
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L9
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
iconst_0
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
ldc "/"
bipush 7
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 6
L1:
aload 0
aload 0
aload 6
sipush 160
invokespecial com/product/android/commonInterface/album/Image/createImageThumbUrl(Ljava/lang/String;I)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
aload 0
aload 0
aload 6
sipush 480
invokespecial com/product/android/commonInterface/album/Image/createImageThumbUrl(Ljava/lang/String;I)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
aload 0
aload 1
ldc "create_time"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/getEmptyStrNotNULL(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
aload 0
aload 1
ldc "user_name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/getEmptyStrNotNULL(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mUserName Ljava/lang/String;
aload 0
aload 1
ldc "pic_desc"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/getEmptyStrNotNULL(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mPicDesc Ljava/lang/String;
aload 0
aload 1
ldc "create_dt"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mCreateDt J
return
L5:
aload 0
aload 1
ldc "user_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mCreateUid J
goto L6
L7:
aload 0
lload 4
putfield com/product/android/commonInterface/album/Image/mAlbumId J
goto L8
L9:
aload 7
astore 6
L3:
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
ldc "https://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
iconst_0
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
ldc "/"
bipush 8
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 6
L4:
goto L1
L2:
astore 6
ldc "Image"
ldc "parseImageInfoJson index out of bounds exception"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
invokevirtual java/lang/StringIndexOutOfBoundsException/printStackTrace()V
aload 7
astore 6
goto L1
.limit locals 8
.limit stack 5
.end method

.method public setAlbumId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mAlbumId J
return
.limit locals 3
.limit stack 3
.end method

.method public setCommentcnt(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mCommentCnt I
return
.limit locals 2
.limit stack 2
.end method

.method public setCreateTime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreateUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mCreateUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFileUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFile_dna(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mGid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGroupAlbumJsonObject(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "pic_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mImageId J
aload 0
aload 1
ldc "create_time"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
aload 0
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
putfield com/product/android/commonInterface/album/Image/mUpdateTime Ljava/lang/String;
aload 0
aload 1
ldc "nav_cnt"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mNavCnt I
aload 0
aload 1
ldc "creator_uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/album/Image/mCreateUid J
aload 0
aload 1
ldc "comment_cnt"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mCommentCnt I
aload 0
aload 1
ldc "liked"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mIsMyPraise I
aload 0
aload 1
ldc "likedcnt"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/album/Image/mPraiseCnt I
return
.limit locals 2
.limit stack 3
.end method

.method public setGroupExistAlbumJsonObject(Lorg/json/JSONObject;J)V
aload 0
lload 2
putfield com/product/android/commonInterface/album/Image/mGid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/album/Image/setGroupAlbumJsonObject(Lorg/json/JSONObject;)V
return
.limit locals 4
.limit stack 3
.end method

.method public setImageId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/album/Image/mImageId J
return
.limit locals 3
.limit stack 3
.end method

.method public setImageType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mImageType I
return
.limit locals 2
.limit stack 2
.end method

.method public setMyPraise(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mIsMyPraise I
return
.limit locals 2
.limit stack 2
.end method

.method public setNav_cnt(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mNavCnt I
return
.limit locals 2
.limit stack 2
.end method

.method public setPraisecnt(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mPraiseCnt I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotalSize(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/album/Image/mTotalSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdateTime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUpdateTime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUrl_160(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUrl_480(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Image [uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateUid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", url_160="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", url_480="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", nav_cnt="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mNavCnt I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", imageId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mImageId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", file_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " file_dna="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateUid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mNavCnt I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl160 Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mUrl480 Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mFileMd5 Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mImageId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateTime Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mUpdateTime Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mGid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateUid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mFileUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mCommentCnt I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mPraiseCnt I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mIsMyPraise I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mAlbumId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mImageType I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mUserName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mPicDesc Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mCreateDt J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/album/Image/mTotalSize I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
