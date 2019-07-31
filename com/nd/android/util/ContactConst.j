.bytecode 50.0
.class public final synchronized com/nd/android/util/ContactConst
.super java/lang/Object
.inner class public static APP_SHOW_TYPE inner com/nd/android/util/ContactConst$APP_SHOW_TYPE outer com/nd/android/util/ContactConst
.inner class public static EVENT_BUS_KEY inner com/nd/android/util/ContactConst$EVENT_BUS_KEY outer com/nd/android/util/ContactConst
.inner class public static FRIEND_BUS_KEY inner com/nd/android/util/ContactConst$FRIEND_BUS_KEY outer com/nd/android/util/ContactConst

.field public static final 'CANCEL_USER' I = 51


.field public static final 'DB_VERSION_1' I = 1


.field public static final 'DB_VERSION_10' I = 10


.field public static final 'DB_VERSION_11' I = 11


.field public static final 'DB_VERSION_12' I = 12


.field public static final 'DB_VERSION_13' I = 13


.field public static final 'DB_VERSION_14' I = 14


.field public static final 'DB_VERSION_2' I = 2


.field public static final 'DB_VERSION_3' I = 3


.field public static final 'DB_VERSION_4' I = 4


.field public static final 'DB_VERSION_5' I = 5


.field public static final 'DB_VERSION_6' I = 6


.field public static final 'DB_VERSION_7' I = 7


.field public static final 'DB_VERSION_8' I = 8


.field public static final 'DB_VERSION_9' I = 9


.field public static final 'DEGREE_90' I = 90


.field public static 'FOLLOWED' Ljava/lang/String;

.field public static final 'GROUP_MEMBER_GRADE_2' I = 2


.field public static final 'GROUP_MEMBER_GRADE_3' I = 3


.field public static final 'HTTP_CODE_200' I = 200


.field public static final 'HTTP_CODE_201' I = 201


.field public static final 'HTTP_CODE_401' I = 401


.field public static final 'HTTP_CODE_403' I = 403


.field public static final 'HTTP_CODE_404' I = 404


.field public static final 'HTTP_CODE_405' I = 405


.field public static final 'HTTP_CODE_406' I = 406


.field public static final 'HTTP_CODE_407' I = 407


.field public static final 'HTTP_CODE_409' I = 409


.field public static final 'HTTP_CODE_415' I = 415


.field public static final 'RGB_1' I = 255


.field public static final 'RGB_2' I = 228


.field public static final 'ROLE_16' I = 16


.field public static final 'ROLE_2' I = 2


.field public static final 'ROLE_8' I = 8


.field public static final 'ROTATION_DURATION' I = 500


.field public static final 'SECOND_60' I = 60


.field public static final 'SELECT_EMPTY' I = 52


.field public static final 'SELECT_USER' I = 50


.field public static 'UNFOLLOWED' Ljava/lang/String;

.field public static 'WIN_WIDTH' I

.method static <clinit>()V
iconst_0
putstatic com/nd/android/util/ContactConst/WIN_WIDTH I
ldc "followed"
putstatic com/nd/android/util/ContactConst/FOLLOWED Ljava/lang/String;
ldc "unfollowed"
putstatic com/nd/android/util/ContactConst/UNFOLLOWED Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getDateFormat()Ljava/text/DateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss.SSS"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
areturn
.limit locals 0
.limit stack 3
.end method
