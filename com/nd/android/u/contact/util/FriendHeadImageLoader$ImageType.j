.bytecode 50.0
.class public final synchronized enum com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;>;"
.inner class public static final enum ImageType inner com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType outer com/nd/android/u/contact/util/FriendHeadImageLoader

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;

.field public static final enum 'DEFAULT' Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;

.field public static final enum 'LARGE' Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;

.field public static final enum 'MIDIUM' Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;

.method static <clinit>()V
new com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
dup
ldc "LARGE"
iconst_0
invokespecial com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/LARGE Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
new com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
dup
ldc "MIDIUM"
iconst_1
invokespecial com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/MIDIUM Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
new com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
dup
ldc "DEFAULT"
iconst_2
invokespecial com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/DEFAULT Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
iconst_3
anewarray com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
dup
iconst_0
getstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/LARGE Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
aastore
dup
iconst_1
getstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/MIDIUM Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
aastore
dup
iconst_2
getstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/DEFAULT Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
aastore
putstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/$VALUES [Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
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
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
ldc com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
getstatic com/nd/android/u/contact/util/FriendHeadImageLoader$ImageType/$VALUES [Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
invokevirtual [Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/contact/util/FriendHeadImageLoader$ImageType;
areturn
.limit locals 0
.limit stack 1
.end method
