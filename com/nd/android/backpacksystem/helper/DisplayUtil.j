.bytecode 50.0
.class public final synchronized com/nd/android/backpacksystem/helper/DisplayUtil
.super java/lang/Object

.field private static final 'CLOUDID' Ljava/lang/String; = "CLOUDID"

.field private static final 'IMG_CACHE_OPTIONS' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mParams' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/android/backpacksystem/helper/DisplayUtil/IMG_CACHE_OPTIONS Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/nd/android/backpacksystem/helper/DisplayUtil/mParams Ljava/util/HashMap;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
getstatic com/nd/android/backpacksystem/helper/DisplayUtil/mParams Ljava/util/HashMap;
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/backpacksystem/helper/DisplayUtil/mParams Ljava/util/HashMap;
getstatic com/nd/android/backpacksystem/helper/DisplayUtil/mParams Ljava/util/HashMap;
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/helper/DisplayUtil/IMG_CACHE_OPTIONS Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
getstatic com/nd/android/backpacksystem/helper/DisplayUtil/mParams Ljava/util/HashMap;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
return
.limit locals 2
.limit stack 6
.end method
