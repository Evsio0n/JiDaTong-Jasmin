.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible
.super android/os/Handler
.implements android/text/style/UpdateLayout
.implements java/lang/Runnable
.inner class private static Visible inner com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible outer com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod

.field private 'mText' Landroid/text/Spannable;

.field private 'mTransformer' Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;

.method public <init>(Landroid/text/Spannable;Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/mText Landroid/text/Spannable;
aload 0
aload 2
putfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/mTransformer Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;
aload 0
aload 0
invokestatic android/os/SystemClock/uptimeMillis()J
ldc2_w 1500L
ladd
invokevirtual com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/postAtTime(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 3
.limit stack 6
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;)Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/mTransformer Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/mText Landroid/text/Spannable;
aload 0
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
return
.limit locals 1
.limit stack 2
.end method
