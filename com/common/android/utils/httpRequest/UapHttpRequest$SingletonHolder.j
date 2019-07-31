.bytecode 50.0
.class synchronized com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder
.super java/lang/Object
.inner class private static SingletonHolder inner com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder outer com/common/android/utils/httpRequest/UapHttpRequest

.field private static final 'INSTANCE' Lcom/common/android/utils/httpRequest/UapHttpRequest;

.method static <clinit>()V
new com/common/android/utils/httpRequest/UapHttpRequest
dup
aconst_null
invokespecial com/common/android/utils/httpRequest/UapHttpRequest/<init>(Lcom/common/android/utils/httpRequest/UapHttpRequest$1;)V
putstatic com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder/INSTANCE Lcom/common/android/utils/httpRequest/UapHttpRequest;
return
.limit locals 0
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100()Lcom/common/android/utils/httpRequest/UapHttpRequest;
getstatic com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder/INSTANCE Lcom/common/android/utils/httpRequest/UapHttpRequest;
areturn
.limit locals 0
.limit stack 1
.end method
