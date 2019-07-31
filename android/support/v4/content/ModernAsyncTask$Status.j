.bytecode 50.0
.class public final synchronized enum android/support/v4/content/ModernAsyncTask$Status
.super java/lang/Enum
.signature "Ljava/lang/Enum<Landroid/support/v4/content/ModernAsyncTask$Status;>;"
.inner class public static final enum Status inner android/support/v4/content/ModernAsyncTask$Status outer android/support/v4/content/ModernAsyncTask

.field private static final synthetic '$VALUES' [Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum 'FINISHED' Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum 'PENDING' Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum 'RUNNING' Landroid/support/v4/content/ModernAsyncTask$Status;

.method static <clinit>()V
new android/support/v4/content/ModernAsyncTask$Status
dup
ldc "PENDING"
iconst_0
invokespecial android/support/v4/content/ModernAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic android/support/v4/content/ModernAsyncTask$Status/PENDING Landroid/support/v4/content/ModernAsyncTask$Status;
new android/support/v4/content/ModernAsyncTask$Status
dup
ldc "RUNNING"
iconst_1
invokespecial android/support/v4/content/ModernAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic android/support/v4/content/ModernAsyncTask$Status/RUNNING Landroid/support/v4/content/ModernAsyncTask$Status;
new android/support/v4/content/ModernAsyncTask$Status
dup
ldc "FINISHED"
iconst_2
invokespecial android/support/v4/content/ModernAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic android/support/v4/content/ModernAsyncTask$Status/FINISHED Landroid/support/v4/content/ModernAsyncTask$Status;
iconst_3
anewarray android/support/v4/content/ModernAsyncTask$Status
dup
iconst_0
getstatic android/support/v4/content/ModernAsyncTask$Status/PENDING Landroid/support/v4/content/ModernAsyncTask$Status;
aastore
dup
iconst_1
getstatic android/support/v4/content/ModernAsyncTask$Status/RUNNING Landroid/support/v4/content/ModernAsyncTask$Status;
aastore
dup
iconst_2
getstatic android/support/v4/content/ModernAsyncTask$Status/FINISHED Landroid/support/v4/content/ModernAsyncTask$Status;
aastore
putstatic android/support/v4/content/ModernAsyncTask$Status/$VALUES [Landroid/support/v4/content/ModernAsyncTask$Status;
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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/content/ModernAsyncTask$Status;
ldc android/support/v4/content/ModernAsyncTask$Status
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast android/support/v4/content/ModernAsyncTask$Status
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Landroid/support/v4/content/ModernAsyncTask$Status;
getstatic android/support/v4/content/ModernAsyncTask$Status/$VALUES [Landroid/support/v4/content/ModernAsyncTask$Status;
invokevirtual [Landroid/support/v4/content/ModernAsyncTask$Status;/clone()Ljava/lang/Object;
checkcast [Landroid/support/v4/content/ModernAsyncTask$Status;
areturn
.limit locals 0
.limit stack 1
.end method
