.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/ResMapper
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/ResMapper;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/ResMapper;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/ResMapper;

.field public 'APP_NAME' I

.field public 'GROUP_DISMISS' I

.field public 'GROUP_KICKED' I

.field public 'GROUP_MEMBER_QUIT' I

.field public 'GROUP_SELF_QUIT' I

.field public 'MSG_APP' I

.field public 'MSG_AUDIO' I

.field public 'MSG_BROADCAST' I

.field public 'MSG_FILE' I

.field public 'MSG_IMG' I

.field public 'MSG_SYSTEM' I

.field public 'MSG_VIDEO' I

.field public 'NOTI_BREEDING' I

.field public 'NOTI_ICON' I

.field public 'NOTI_REMAIN_MSG' I

.field public 'OP_CANCEL' I

.field public 'OP_PC_RECEIVED_FILE' I

.field public 'OP_RESEND' I

.method static <clinit>()V
new com/nd/android/u/controller/ResMapper
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/ResMapper/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
iconst_1
anewarray com/nd/android/u/controller/ResMapper
dup
iconst_0
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
aastore
putstatic com/nd/android/u/controller/ResMapper/ENUM$VALUES [Lcom/nd/android/u/controller/ResMapper;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/NOTI_ICON I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/NOTI_BREEDING I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/NOTI_REMAIN_MSG I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_AUDIO I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_IMG I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_VIDEO I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_FILE I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_APP I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_BROADCAST I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/MSG_SYSTEM I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/APP_NAME I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/OP_RESEND I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/OP_CANCEL I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/OP_PC_RECEIVED_FILE I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/GROUP_DISMISS I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/GROUP_KICKED I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/GROUP_MEMBER_QUIT I
aload 0
iconst_0
putfield com/nd/android/u/controller/ResMapper/GROUP_SELF_QUIT I
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/ResMapper;
ldc com/nd/android/u/controller/ResMapper
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/ResMapper
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/ResMapper;
getstatic com/nd/android/u/controller/ResMapper/ENUM$VALUES [Lcom/nd/android/u/controller/ResMapper;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/ResMapper
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method
