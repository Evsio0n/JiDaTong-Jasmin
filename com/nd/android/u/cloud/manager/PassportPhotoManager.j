.bytecode 50.0
.class public final synchronized enum com/nd/android/u/cloud/manager/PassportPhotoManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/manager/PassportPhotoManager;>;"
.inner class private GetPassportPhotoTask inner com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask outer com/nd/android/u/cloud/manager/PassportPhotoManager

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/manager/PassportPhotoManager;

.field private static final 'FSIZE' Ljava/lang/String; = "f152"

.field public static final enum 'INSTANCE' Lcom/nd/android/u/cloud/manager/PassportPhotoManager;

.field private 'PPHOTO_DISC_CACHE_DIR' Ljava/lang/String;

.field private 'mPhotoDisplayOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
new com/nd/android/u/cloud/manager/PassportPhotoManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/cloud/manager/PassportPhotoManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/manager/PassportPhotoManager/INSTANCE Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
iconst_1
anewarray com/nd/android/u/cloud/manager/PassportPhotoManager
dup
iconst_0
getstatic com/nd/android/u/cloud/manager/PassportPhotoManager/INSTANCE Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
aastore
putstatic com/nd/android/u/cloud/manager/PassportPhotoManager/$VALUES [Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
ldc "passportphoto"
putfield com/nd/android/u/cloud/manager/PassportPhotoManager/PPHOTO_DISC_CACHE_DIR Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/cloud/manager/PassportPhotoManager/mPhotoDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/manager/PassportPhotoManager;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokespecial com/nd/android/u/cloud/manager/PassportPhotoManager/getPhotoOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getPassportPhotoURL(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/student/papers?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "f152"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private getPhotoOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager/mPhotoDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L1
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager/PPHOTO_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
astore 1
aload 0
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
aload 1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/cloud/manager/PassportPhotoManager/mPhotoDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L1:
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager/mPhotoDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 1
L3:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
ldc com/nd/android/u/cloud/manager/PassportPhotoManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/manager/PassportPhotoManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
getstatic com/nd/android/u/cloud/manager/PassportPhotoManager/$VALUES [Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
invokevirtual [Lcom/nd/android/u/cloud/manager/PassportPhotoManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public needRefreshPassportPhoto(J)Z
ldc com/nd/android/u/contact/dao/PassportPhotoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/PassportPhotoDao
lload 1
invokeinterface com/nd/android/u/contact/dao/PassportPhotoDao/findPassportPhoto(J)Lcom/nd/android/u/contact/dataStructure/PassportPhoto; 2
astore 5
lconst_0
lstore 3
aload 5
ifnull L0
aload 5
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/updateTime J
lstore 3
L0:
new com/nd/android/u/cloud/com/PassportPhotoCom
dup
invokespecial com/nd/android/u/cloud/com/PassportPhotoCom/<init>()V
lload 1
ldc "f152"
lload 3
invokevirtual com/nd/android/u/cloud/com/PassportPhotoCom/getStudentPassportPhoto(JLjava/lang/String;J)Lcom/nd/android/u/contact/dataStructure/PassportPhoto;
astore 5
lconst_0
lstore 1
aload 5
ifnull L1
aload 5
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/updateTime J
lstore 1
ldc com/nd/android/u/contact/dao/PassportPhotoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/PassportPhotoDao
aload 5
invokeinterface com/nd/android/u/contact/dao/PassportPhotoDao/insertPassportPhoto(Lcom/nd/android/u/contact/dataStructure/PassportPhoto;)J 1
pop2
L1:
lload 1
lload 3
lcmp
ifle L2
lload 3
lconst_0
lcmp
ifle L3
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/url Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromMemCache(Ljava/lang/String;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
invokespecial com/nd/android/u/cloud/manager/PassportPhotoManager/getPhotoOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 5
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/url Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/removeFromDiscCache(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Z
pop
L3:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 6
.limit stack 6
.end method

.method public showPhoto(JLandroid/widget/ImageView;)V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 4
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OAPSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
lload 1
invokestatic com/nd/android/u/cloud/manager/PassportPhotoManager/getPassportPhotoURL(J)Ljava/lang/String;
aload 3
aload 0
invokespecial com/nd/android/u/cloud/manager/PassportPhotoManager/getPhotoOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
aload 4
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
new com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask
dup
aload 0
lload 1
aload 3
invokespecial com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/<init>(Lcom/nd/android/u/cloud/manager/PassportPhotoManager;JLandroid/widget/ImageView;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 5
.limit stack 6
.end method
