.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat$BigTextStyle
.super android/support/v4/app/NotificationCompat$Style
.inner class public static BigTextStyle inner android/support/v4/app/NotificationCompat$BigTextStyle outer android/support/v4/app/NotificationCompat

.field 'mBigText' Ljava/lang/CharSequence;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
aload 0
aload 1
invokevirtual android/support/v4/app/NotificationCompat$BigTextStyle/setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
return
.limit locals 2
.limit stack 2
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigTextStyle/mBigText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigTextStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigTextStyle/mSummaryText Ljava/lang/CharSequence;
aload 0
iconst_1
putfield android/support/v4/app/NotificationCompat$BigTextStyle/mSummaryTextSet Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
