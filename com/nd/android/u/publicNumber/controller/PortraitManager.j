.bytecode 50.0
.class public final synchronized enum com/nd/android/u/publicNumber/controller/PortraitManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/publicNumber/controller/PortraitManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/publicNumber/controller/PortraitManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/publicNumber/controller/PortraitManager;

.method static <clinit>()V
new com/nd/android/u/publicNumber/controller/PortraitManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/publicNumber/controller/PortraitManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
iconst_1
anewarray com/nd/android/u/publicNumber/controller/PortraitManager
dup
iconst_0
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aastore
putstatic com/nd/android/u/publicNumber/controller/PortraitManager/$VALUES [Lcom/nd/android/u/publicNumber/controller/PortraitManager;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/PortraitManager;
ldc com/nd/android/u/publicNumber/controller/PortraitManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/publicNumber/controller/PortraitManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/publicNumber/controller/PortraitManager;
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/$VALUES [Lcom/nd/android/u/publicNumber/controller/PortraitManager;
invokevirtual [Lcom/nd/android/u/publicNumber/controller/PortraitManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/publicNumber/controller/PortraitManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPspLogoUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
iload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayPspImage(Ljava/lang/String;Landroid/widget/ImageView;Z)V
return
.limit locals 4
.limit stack 3
.end method
