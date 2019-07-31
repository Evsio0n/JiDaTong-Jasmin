.bytecode 50.0
.class synchronized com/nd/android/u/contact/cache/UserCacheManager$Params
.super java/lang/Object
.inner class private static Params inner com/nd/android/u/contact/cache/UserCacheManager$Params outer com/nd/android/u/contact/cache/UserCacheManager

.field private 'mFid' J

.field private 'mUser' Lcom/product/android/commonInterface/contact/OapUser;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/cache/UserCacheManager$1;)V
aload 0
invokespecial com/nd/android/u/contact/cache/UserCacheManager$Params/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)J
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$Params/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;J)J
aload 0
lload 1
putfield com/nd/android/u/contact/cache/UserCacheManager$Params/mFid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$Params/mUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/nd/android/u/contact/cache/UserCacheManager$Params/mUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
