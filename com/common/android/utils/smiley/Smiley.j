.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/Smiley
.super java/lang/Object

.field public static final 'ADDLEN' I = 5


.field public static final 'IMGEND' Ljava/lang/String; = "<img>&"

.field public static final 'IMGSTART' Ljava/lang/String; = "&<img>"

.field public static 'MAX_SEND_MSG_LENGTH' I = 0


.field public static 'MAX_SMILE_LENGTH' I = 0


.field public static 'MAX_SMILE_STR_LENGTH' I = 0


.field public static final 'SIZE_CAT' I = 84


.field public static final 'SIZE_ORI' I = 0


.field public static final 'SIZE_STANDARD' I = 32


.field public static final 'SIZE_TEXT' I = 16


.field public static final 'TYPE_CHAT' I = 0


.field public static final 'TYPE_WEIBO' I = 1


.field public static final 'WEIBO_IMGEND' Ljava/lang/String; = "]"

.field public static final 'WEIBO_IMGSTART' Ljava/lang/String; = "["

.field public 'gifName' Ljava/lang/String;

.field public 'id' I

.field public 'lastUsedTime' J

.field public 'name' Ljava/lang/String;

.field public 'path' Ljava/lang/String;

.field public 'shortCut' Ljava/lang/String;

.field public 'tip' Ljava/lang/String;

.field public 'unicode' I

.field public 'utf8Code' Ljava/lang/String;

.method static <clinit>()V
iconst_4
putstatic com/common/android/utils/smiley/Smiley/MAX_SMILE_STR_LENGTH I
bipush 16
putstatic com/common/android/utils/smiley/Smiley/MAX_SMILE_LENGTH I
sipush 592
putstatic com/common/android/utils/smiley/Smiley/MAX_SEND_MSG_LENGTH I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getEndString(I)Ljava/lang/String;
iload 0
ifne L0
ldc "<img>&"
areturn
L0:
ldc "]"
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getStartString(I)Ljava/lang/String;
iload 0
ifne L0
ldc "&<img>"
areturn
L0:
ldc "["
areturn
.limit locals 1
.limit stack 1
.end method
