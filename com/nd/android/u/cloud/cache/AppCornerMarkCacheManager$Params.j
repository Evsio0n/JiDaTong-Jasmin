.bytecode 50.0
.class synchronized com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
.super java/lang/Object
.inner class private static Params inner com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params outer com/nd/android/u/cloud/cache/AppCornerMarkCacheManager

.field private 'mCornerMark' Lcom/nd/android/u/cloud/cache/CornerMark;

.field private 'mCount' I

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
aload 0
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)Lcom/nd/android/u/cloud/cache/CornerMark;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/mCornerMark Lcom/nd/android/u/cloud/cache/CornerMark;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
aload 0
aload 1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/mCornerMark Lcom/nd/android/u/cloud/cache/CornerMark;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)I
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/mCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/mCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method
